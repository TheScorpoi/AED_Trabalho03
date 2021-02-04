# AED_Trabalho03

## Decoding a non-instantaneous binary code
A binary  code  assigns  to  each  symbol  of  an  alphabet  a  specific  sequence  of  bits  (a  binary  codeword). The code is uniquely decodable, but it is not instantaneous. What we have to do is implement a recursive function *recursive_decoder*, that given a binary code, it can dedode that and give us the original message.
 
### Pré-requesitos 
Para compilar os programas, é vital ter um compilador de C instalado na máquina (p.e. gcc).
O projeto foi desenvolvido com recurso ao IDE VSCode, para implementação do código C, e ao Matlab, para a realização de gráficos usados no relatório.

### Compilar
Para compilar o programa, é necessário utilizamos o *makefile*, da seguinte maneira:
```
make A03          #compile without decode in real-time
make A03_RT       #compile with decode in real-time
```
Aqui executar, há as seguintes possibilidades:
```
usage: ./A03 -s n_symbols seed                     # show the code words of random code
       ./A03 -t [n_symbols [message_size [seed]]]  # encode and decode a message
       ./A03 -x n_symbols                          # try the first 201 seeds
```
Para tirar mais partido de todo o poder do processsador usamos o seguinte *script*, *do_all.bash*:
```
chmod u+x do_all.bash      #para atribuir permissões
./do_all.bash              #para executar o script
```

### Relatório
Este projeto está acompanhado por um [Relatório](/Relatório), onde é explicado todo o processo de construção do problema, e onde são tiradas as conclusões do mesmo.

## Autores

 - **[Pedro Sobral](https://github.com/TheScorpoi) - 98491**
 - **[André Freixo](https://github.com/andre180701) - 98495**
 - **[Marta Fradique](https://github.com/MartaFradique) - 98629**
