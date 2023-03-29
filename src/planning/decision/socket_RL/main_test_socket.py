# build a socket  to publish the dynamic map

import socket
import pickle
import time
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = "127.0.0.1"
port = 2345
client_socket.connect((host, port))


class TestClass:
    def __init__(self, a, b):
        self.a = a
        self.b = b
my_array = TestClass([1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9])
print(my_array.a,my_array.b)
my_array_bytes = pickle.dumps(my_array)
while True:

    client_socket.send(my_array_bytes)
    print("send data")
    time.sleep(1)
client_socket.close()
