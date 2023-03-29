import pickle
print(pickle.__file__)

class human:
    def __init__(self):
        self.h = 180
        self.w = 120
        
    def geth(self):
        return self.h

hum = human()
data = pickle.dumps(hum,protocol=1)
recv = pickle.loads(data)

print(type(data),data)
print(type(recv),recv)

data = data.encode()
print(type(data),data)