      bne $8, $9, else
      add $10, $8, $9
      j exit
else: sub $10, $8, $9
exit:

#Testa se $8 e $9 são diferentes, porém agora pula para o label exit se isso for verdade.
#Assim, existem duas possibilidades  a partir da primeira instrução:
#- Continuar para a próxima instrução (add) somando os dois valores e armazenando-os 
#em $10, depois em j (jump) saltar para exit, ignorando a instrução do label else.
#- Ir para else e realizar, neste caso, a subtração entre $8 e $9 e colocar o resultado
em $10.
#Naturalmente, a próxima instrução na sequência é exit, que finaliza o programa.


#Exemplo retirado do livro do Patterson e comentado por mim.
