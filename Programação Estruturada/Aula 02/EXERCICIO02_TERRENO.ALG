Algoritmo "exercicio02_terreno"-

Var
   area : real
   medida1 : real
   medida2 : real
   valor : real

Inicio
   ESCREVA("Digite a primeira medida do terreno: ")
   LEIA(medida1)
   ESCREVA("Digite a segunda medida do terreno: ")
   LEIA(medida2)
   
   area <- medida1 * medida2
   valor <- area * 850
   
   ESCREVA("O valor da casa ficaria em ", valor:6:2 , " reais.")

Fimalgoritmo
