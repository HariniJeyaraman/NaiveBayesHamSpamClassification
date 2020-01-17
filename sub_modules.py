import subprocess
#input to be given as floating point numbers
def convertfloat(res,n):
	l=len(res)-n
	if l<0:
		i=n-len(res)+1
		res = res.rjust(i + len(res), '0')
		l=len(res)-n
	s1=res[l:len(res)]
	s2=res[0:l]
	result=s2+"."+s1
	return result
def trailzero(x1,y1):
	x=str(x1[1])
	y=str(y1[1])
	n1=len(x)	
	n2=len(y)	 	
	if n1>n2:
		i=n1-n2
		y = y.ljust(i + len(y), '0')
		n=n1
	elif n2>n1:
		i=n2-n1;
		x = x.ljust(i + len(x), '0')
		n=n2
	else:
		n=n1
	x1[1]=x
	y1[1]=y
	return n

def leadzero(x1,y1):
	x=str(x1[0])
	y=str(y1[0])
	n1=len(x)	
	n2=len(y)	 	
	if n1>n2:
		i=n1-n2
		y = y.rjust(i + len(y), '0')
		n=n1
	elif n2>n1:
		i=n2-n1;
		x = x.rjust(i + len(x), '0')
		n=n2
	else:
		n=n1
	x1[0]=x
	y1[0]=y

def Addition( x,y ):
	x1=str(x).split('.')
	y1=str(y).split('.')
	leadzero(x1,y1)
	n=trailzero(x1,y1)
	x=x1[0]+x1[1]
	y=y1[0]+y1[1]
	f1=str("x="+"{}".format(x))
	f2=str("y="+"{}".format(y))
	s="./16fat +"+f1+" +"+f2+" +c=0"
	#print(s)
	k=subprocess.check_output(s,shell=True)
	k=str(k)
	result=k.replace('b','').replace("'",'').replace("\\",'').replace('n','').strip()
	result=convertfloat(result,n)
	return result




# x="344.0"
# y="9.12"

# res=Addition(x,y)
# print("result="+res)


def Multiply(x,y):
	x=str(x)
	y=str(y)
	n1=len(x.split('.')[1])	
	n2=len(y.split('.')[1])		
	n=n1+n2
	x=x.replace('.','')
	y=y.replace('.','')
	f1=str("a="+"{}".format(x))
	f2=str("b="+"{}".format(y))
	x="./wallace16 +"+f1+" +"+f2
	k=subprocess.check_output(x,shell=True)
	k=str(k)
	result=k.replace('b','').replace("'",'').replace("\\",'').replace('n','').strip()
	res=convertfloat(result,n)
	return res


# x="0.096"
# y="0.03949"

# res=Multiply(x,y)
# print(res)
