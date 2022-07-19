import sys
import os

def casa_brackets(text, sub=b"{"):
    if sub not in text or b"}" not in text :
        return -1, -1
    pos_ini = text.find(sub) + len(sub) - 1
    pos = pos_ini+1
    count = 1
    while count > 0 and pos < len(text):
        # print(pos, text[pos], count)
        if text[pos] in b'{':
            count += 1
        elif text[pos] in b'}':
            count -= 1
        pos += 1
    return pos_ini, pos


def extrai_exercicios(arq):
    texto = b""
    blocos = [rb"exer", rb"resp", rb"exeresol", rb"resol"]
    aberturas = [rb"\begin{" + l + rb"}" for l in blocos]
    fechamentos = [rb"\end{" + l + rb"}" for l in blocos]
    tags = [rb"\chapter{", rb"\section{"]#, rb"\subsection{"]
    contagem = 0
    dentro_de_bloco = False
    with open(arq, 'rb') as f: 
        for linha in f.readlines():
            linha = linha.replace(rb"{exeresol}", rb"{exer}").replace(rb"{resol}", rb"{resp}")
            if any([s in linha for s in tags]):
                texto += linha

            if any([s in linha for s in aberturas]):
                dentro_de_bloco = True
                contagem = contagem + 1

            if dentro_de_bloco:
                # if rb"ref{" in linha:
                #   print(linha)
                texto += linha

            if any([s in linha for s in fechamentos]):
                dentro_de_bloco = False

    return texto.decode() if contagem>0 else ""

cabecalho = r"""\documentclass[12pt]{book}
\input preambulo.tex
\setlength{\headheight}{30pt}
\begin{document}"""

print(cabecalho)



with open("main.tex", "rb") as f:
    for linha in f.readlines():
        if linha.strip()[0:9] == rb"\include{":
            # print(linha)
            s, e = casa_brackets(linha)
            arq = linha[s+1 : e-1].decode() + ".tex"
            # print(s, e)
            #print(arq)
            print(r"%%%% Extraído de " + arq)
            texto = extrai_exercicios(arq)
            print(texto)


print(r"\include{respostas}")
print(r"\end{document}")
quit()

cabecalho = r"""\documentclass[12pt]{book}
\input preambulo.tex
\setlength{\headheight}{30pt}
\begin{document}"""

print(cabecalho)

diretorio = "./"
for (dirpath, dirnames, filenames) in os.walk (diretorio):
    #print(filenames)
    for arq in filenames:
        if arq[-4:] == r".tex":
            nome_com_caminho = os.path.join(dirpath, arq)
            print(r"%%%% Extraído de " + nome_com_caminho)
            texto = extrai_exercicios(os.path.join(dirpath, arq))
            print(texto)

print(r"\include{respostas}")
print(r"\end{document}")