s = 'Hola'
print(s)

cols = 9
rows = 6

for i in range(1,rows+1): #Definición de objetos
	for j in range(1,cols+1):
		print("sq-"+repr(i)+ "-" + repr(j)+" ", end="", flush=True)
	print("")
print("")

for i in range(1,rows+1):
	for j in range(1,cols+1):
		if i < rows:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i+1)+"-"+repr(j)+")" , end="", flush = True)		
		if i > 1:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i-1)+"-"+repr(j)+")" , end="", flush = True)
		if j < cols:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i)+"-"+repr(j+1)+")" , end="", flush = True)
		if j > 1:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i)+"-"+repr(j-1)+")" , end="", flush = True)
		print("")