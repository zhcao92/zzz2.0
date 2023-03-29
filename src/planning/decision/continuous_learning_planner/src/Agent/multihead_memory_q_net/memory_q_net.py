import torch
import torch.nn as nn
import sys
sys.path.append('../..')
import configs

class QNet(nn.Module):
    def __init__(self):
        super(QNet, self).__init__()
        configs_ = configs.memory_q_net
        input_dim = configs_.state_dim + configs_.action_dim
        self.fc1 = nn.Linear(input_dim, configs_.hidden_dim[0])
        self.fc2 = nn.Linear(configs_.hidden_dim[0], configs_.hidden_dim[1])
        self.fc3 = nn.Linear(configs_.hidden_dim[1], configs_.output_dim )

    def forward(self, x):
        x = torch.relu(self.fc1(x))
        x = torch.relu(self.fc2(x))
        x = self.fc3(x)
        return x
    
class MemoryQNet():
    def __init__(self, ensemble_num= 5, device=torch.device('cuda' if torch.cuda.is_available() else 'cpu')):
        self.ensemble_num = ensemble_num
        self.device = device
        self.configs_ = configs.memory_q_net

        self.ensemble_models = []
        self.ensemble_optimizer = []
        self.device = device
        self.init_emsemble_models()
    
    def init_weights(self, m):
        if isinstance(m, nn.Linear):
        # nn.init.uniform_(m.weight, a=-0.5, b=0.5)
            nn.init.xavier_normal_(m.weight)
            nn.init.constant_(m.bias, 0)
       
    def init_emsemble_models(self ):
        for i in range(self.ensemble_num):
            q_net = QNet()
            q_net.to(self.device)
            q_net.apply(self.init_weights)
            self.ensemble_models.append(q_net)
            self.ensemble_optimizer.append(torch.optim.Adam(q_net.parameters(), lr=self.configs_.learning_rate, weight_decay=self.configs_.weight_decay))

    def update_model(self, states, actions, q_values):
        """
        :param states: (batch_size, state_dim)
        :param actions: (batch_size, action_dim)
        :param q_values: (batch_size, 1)
        """
        for i in range(self.ensemble_num):
            self.ensemble_optimizer[i].zero_grad()
            q_net = self.ensemble_models[i]
            q_input = torch.cat((states, actions), dim=1)
            q_pred = q_net(q_input)
            loss = torch.mean((q_pred - q_values)**2)
            print("------------q net loss: ", loss, "model: ", i)
            loss.backward()
            self.ensemble_optimizer[i].step()

    def predict(self,states,actions):
        """
        output: (batch_size, 1) 
        """
        # output  ensemble predict
        output = []
        for i in range(self.ensemble_num):
            q_net = self.ensemble_models[i]
            q_input = torch.cat((states, actions), dim=1)
            q_pred = q_net(q_input).detach().numpy()
            output.append(q_pred)
        return output
    
    def autosave(self, path):
        """
        path: path to save model
        """
        pass

            

if  __name__ == "__main__":
    # test update
    memory_q_net = MemoryQNet(ensemble_num=5, device="cpu")
    states = torch.randn(10, 10)
    actions = torch.randn(10, 3)
    q_values = torch.randn(10, 1)
    for i in range(10):
        memory_q_net.update_model(states, actions, q_values)
    print(memory_q_net.predict(states, actions))


