import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D


# Função para gerar um campo de velocidades aleatório
def gerar_campo_aleatorio(tamanho):
    return np.random.rand(tamanho, tamanho, tamanho, 3)

def campo_x(x, y, z):
    y = x  #(tamanho_cubo - x)
    u = y**1.5/20
    v = 0
    w = 0
    return u, v, w


def campo_xyz(x, y, z):
    u = x/5
    v = y/5
    w = z**2/200
    return u, v, w


# Função para desenhar o cubo e o campo de velocidades
def desenhar_cubo_com_velocidades(cubo_vertices):
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')

    # Desenhar o cubo
    for aresta in cubo_vertices:
        x = [aresta[i][0] for i in range(2)]
        y = [aresta[i][1] for i in range(2)]
        z = [aresta[i][2] for i in range(2)]
        ax.plot3D(x, y, z, 'black')

    # Desenhar o campo de velocidades
    tamanho = 3
    delta = (tamanho_cubo - tamanho_campo)/2
    for x in np.linspace(delta, tamanho_cubo-delta, 5):
        for y in np.linspace(delta, tamanho_cubo-delta, 5):
            for z in np.linspace(delta, tamanho_cubo-delta, 5):
                u, v, w = campo(x, y, z)
                ax.quiver(x, y, z, u, v, w, color='b', alpha=0.8)
    

    ax.set_xlabel('x')
    ax.set_ylabel('y')
    ax.set_zlabel('z')
    ax.set_xticks([])
    ax.set_yticks([])
    ax.set_zticks([])

    
    plt.show()
    #plt.savefig("campo_com_cubo_divergente.eps", bbox_inches='tight',transparent=True, pad_inches=0)

# Tamanho do cubo e do campo de velocidades
tamanho_cubo = 3.0
tamanho_campo = 2.5

# Definir os vértices do cubo
cubo_vertices = np.array([
    [[0, 0, 0], [0, 0, tamanho_cubo]],
    [[0, 0, 0], [0, tamanho_cubo, 0]],
    [[0, 0, 0], [tamanho_cubo, 0, 0]],
    [[0, 0, tamanho_cubo], [0, tamanho_cubo, tamanho_cubo]],
    [[0, 0, tamanho_cubo], [tamanho_cubo, 0, tamanho_cubo]],
    [[0, tamanho_cubo, 0], [0, tamanho_cubo, tamanho_cubo]],
    [[0, tamanho_cubo, 0], [tamanho_cubo, tamanho_cubo, 0]],
    [[tamanho_cubo, 0, 0], [tamanho_cubo, 0, tamanho_cubo]],
    [[tamanho_cubo, 0, 0], [tamanho_cubo, tamanho_cubo, 0]],
    [[tamanho_cubo, tamanho_cubo, 0], [tamanho_cubo, tamanho_cubo, tamanho_cubo]],
    [[0, tamanho_cubo, tamanho_cubo], [tamanho_cubo, tamanho_cubo, tamanho_cubo]],
    [[tamanho_cubo, 0, tamanho_cubo], [tamanho_cubo, tamanho_cubo, tamanho_cubo]]
])


# Desenhar o cubo com o campo de velocidades
campo = campo_xyz
desenhar_cubo_com_velocidades(cubo_vertices)