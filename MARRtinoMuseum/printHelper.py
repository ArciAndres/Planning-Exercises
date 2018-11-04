s = 'Hola'
print(s)

cols = 4
rows = 2

for i in range(0,rows): #Definición de objetos
	for j in range(0,cols):
		print("sq-"+repr(i)+ "-" + repr(j)+" ", end="", flush=True)
	print("")
print("")

for i in range(0,rows): #Definición de objetos
	for j in range(0,cols):
		print("(pos sq-"+repr(i)+ "-" + repr(j)+") ", end="", flush=True)
	print("")
print("")

for i in range(0,rows):
	for j in range(0,cols):
		if i < rows-1:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i+1)+"-"+repr(j)+")" , end="", flush = True)		
		if i > 0:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i-1)+"-"+repr(j)+")" , end="", flush = True)
		if j < cols-1:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i)+"-"+repr(j+1)+")" , end="", flush = True)
		if j > 0:
			print(" (adj sq-" +repr(i)+"-"+repr(j)+" sq-" +repr(i)+"-"+repr(j-1)+")" , end="", flush = True)
		print("")