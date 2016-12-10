# O código implementa a ideia do seguinte algoritmo:

#   if($t0 == $t1):
#     $t2 = 25
#   else:
#     $t2 = 77
#   $t3 = $t3 + $t2

        beq $t0, $t1, blocoA
        j blocoB
blocoA: li $t2, 25
        j exit
blocoB: li $t2, 77
  exit: addu $t3, $t3, $t2
  
#A primeira instrução verifica se $t0 e $t1 são iguais. 
#- Caso sejam, salta para o bloco A, onde o valor 25 é colocado no registrador $t2.
#Na próxima instrução, salta para o label exit.
#-Caso a condição da primeira instrução seja falsa ($t0 != $t1), a próxima instrução
#salta para o bloco B, onde, diferente do bloco A, é colocado 77 em $t2.
#A próxima instrução na sequência é exit.
#Após qualquer uma das instruções acima, ao chegar em exit é realizada a mesma operação:
#soma, sem considerar o sinal (unsigned) entre $t3 e $t2 e armazenar o valor em $t3.


#Exemplo retirado do livro do Patterson e comentado por mim.
