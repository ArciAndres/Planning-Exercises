s = 'Hola'
print(s)
sf = 1 #StartFrom
cols = 3
rows = 2

for i in range(sf,rows + sf): #Definición de objetos
	for j in range(+sf,cols+sf):
		print("sq-"+repr(i)+ "-" + repr(j)+" ", end="", flush=True)
	print("")
print("")

for i in range(sf,rows + sf): #Definición de objetos
	for j in range(+sf,cols+sf):
		print("(pos sq-"+repr(i)+ "-" + repr(j)+") ", end="", flush=True)
	print("")
print("")

for i in range(sf,rows + sf):
	for j in range(+sf,cols+sf):
		if i < rows+sf-1:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i+1)+"-"+repr(j)+")" , end="", flush = True)		
		if i > +sf:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i-1)+"-"+repr(j)+")" , end="", flush = True)
		if j < cols+sf-1:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i)+"-"+repr(j+1)+")" , end="", flush = True)
		if j > +sf:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i)+"-"+repr(j-1)+")" , end="", flush = True)
		print("")