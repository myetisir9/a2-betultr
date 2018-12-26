#Codes between 2 and 5 lines from https://bitbucket.org/damienjadeduff/hashing_example/raw/master/hash_password.py
from hashlib import sha256
def create_hash(password):
    pw_bytestring = password.encode()
    return sha256(pw_bytestring).hexdigest()
mypw="asddsa"
myhsh=create_hash(mypw)
li=[]
while True:
    c=str(input("Enter your comment:"))
    p=str(input("Enter your pasword"))
    hp=create_hash(p)
    if hp == myhsh:
        print("Previously entered comments: ")
        li.append(c)
        i=0
        while i<len(li):
            print(str(i+1) + "." + li[i])
            i=i+1
    else:
        print("I am sorry,i can't let you do that.")