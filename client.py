import zerorpc
import threading
import time

def crot():
    c = zerorpc.Client()
    c.connect("tcp://127.0.0.1:4242")
    while True:
        print(c.hello("RPasC"))
        time.sleep(0.1)
    return


if __name__ == '__main__':
    for t in range(0, 5):
        x = threading.Thread(target=crot)
        x.start()
