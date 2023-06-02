import numpy as np
import matplotlib.pyplot as plt


t = np.linspace(0, 100, 1001)
x = np.cos(t)
y = np.sin(t)
z = 8*np.sqrt(t)

fig = plt.figure()
ax = fig.add_subplot(projection='3d')
ax.set_box_aspect(aspect = (1,1,2))

ax.plot(x, y, z, linewidth=2)

ax.set_xticks([-2, 0, 2])
ax.set_yticks([])

ax.view_init(elev=0, azim=90)

# fig.set_size_inches(9, 18)


"""

for idx, (i, j) in enumerate([(0,2), (3,0)]):
    print(idx, (i, j))
    ax = fig.add_subplot(1, 2, idx+1, projection='3d')
    ax.plot(x, y, z, linewidth=2)

    ax.set_xticks([-2, 0, 2])
    ax.set_yticks([-2, 0, 2])

    ax.view_init(elev=30*j, azim=30*i)

fig.set_size_inches(12, 9)
plt.show()
"""


# plt.show()
plt.savefig("helice_sqrt_z.eps")