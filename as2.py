li=[]
while True:
    a=str(input("Enter a comment:"))
    li.append(a)
    i=0
    while i<len(li):
        print(str(i+1) + "." + li[i])
        i=i+1