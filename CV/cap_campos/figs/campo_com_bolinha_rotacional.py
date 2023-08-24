import matplotlib.pyplot as plt
import numpy as np
from numpy import ma


X, Y = np.meshgrid(np.linspace(-1.5, 1.5, 8), np.linspace(-1, 1, 5))

m=np.size(X,0)
n=np.size(X,1)

U=np.zeros((m,n))
V=np.zeros((m,n))

for i in np.arange(m):
	for j in np.arange(n):
		r=np.sqrt(X[i,j]**2+Y[i,j]**2)
		#r=np.exp(-r/5)/r
		r = 1
		x, y = X[i,j], Y[i,j]
		y_abs = np.abs(y)
		
		U[i,j] =  (y/(.1 + y_abs)) #* r
		if U[i, j] == 0:
			U[i, j] = .5

		#U[i,j] =  y+1 #* r

		V[i,j] = 0 

#plt.figure()

fig, ax = plt.subplots()

ax.set(aspect=1)
#plt.title('Campo ')
plt.title('Campo $\\vec{F}$',fontsize=20)

plt.xlabel('x',fontsize=20)
plt.ylabel('y',fontsize=20)

ax.set_xticks([])
ax.set_yticks([])

Q = plt.quiver(X, Y, U, V, units='width')

#caminhos
t = np.linspace(0,2*np.pi,100)
x = 1/2*np.cos(t)
y = 1/2*np.sin(t)
plt.plot(x, y, '-',color="blue")

# ax.annotate(r'$C_1$', xy=(-2.65, 1.65))
ax.arrow( 1/2*np.cos(1.3), 1/2*np.sin(1.3),0.1, -0.06, linewidth="1",head_width=0.2, head_length=0.2,color="blue")


# plt.savefig("campo_com_bolinha_rotacional_1.eps", bbox_inches='tight')

plt.show()