programa {
funcao inicio(){

    caracter jogo[3][3]
    inteiro l, c, linha, coluna, jogador, ganhou, jogadas, opcao

    faca{
      jogador = 1
      ganhou = 0
      jogadas = 0
      para(l = 0; l < 3; l++){
        para(c = 0; c < 3; c++)
          jogo[l][c] = ' '
      }
  
      faca{
        escreva("\n\n 0   1    2\n\n")
        para(l = 0; l < 3; l++){
          para(c = 0; c < 3; c++){
            escreva(" ", jogo[l][c])
            se(c < 2)
              escreva(" | ")
            se(c == 2)
              escreva("  ", l)
          }
          se(l < 2)
            escreva("\n------------")
          escreva("\n")
        }
            
        faca{
          faca{
            escreva("\nJogador ",jogador, " digite numero da linha e coluna :  ")
            leia(linha, coluna)
          }enquanto(linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)
        }enquanto(jogo[linha][coluna] != ' ')
            
        se(jogador == 1){
          jogo[linha][coluna] = '0'
          jogador++
        }
        senao{
          jogo[linha][coluna] = 'X'
          jogador = 1
        }
        jogadas++
                
        para(l = 0; l < 3; l++){
          se(jogo[l][0] == '0' e jogo[l][1] == '0' e jogo[l][2] == '0')
            ganhou = 1
        }
    
        para(l = 0; l < 3; l++){
          se(jogo[l][0] == 'X' e jogo[l][1] == 'X' e jogo[l][2] == 'X')
            ganhou = 2
        }
              
        para(c = 0; c < 3; c++){
          se(jogo[0][c] == '0' e jogo[1][c] == '0' e jogo[2][c] == '0')
            ganhou = 1
        }
    
        para(c = 0; c < 3; c++){
          se(jogo[0][c] == 'X' e jogo[1][c] == 'X' e jogo[2][c] == 'X')
            ganhou = 2
        }
        
        se(jogo[0][0] == '0' e jogo[1][1] == '0' e jogo[2][2] == '0')
          ganhou = 1
    
        se(jogo[0][0] == 'X' e jogo[1][1] == 'X' e jogo[2][2] == 'X')
          ganhou = 2
        
        
        se(jogo[0][2] == '0' e jogo[1][1] == '0' e jogo[2][0] == '0')
          ganhou = 1  
    
        se(jogo[0][2] == 'X' e jogo[1][1] == 'X' e jogo[2][0] == 'X')
          ganhou = 2
      }enquanto(ganhou == 0 e jogadas < 9)
  
     
      escreva("\n\n 0   1    2\n\n")
      para(l = 0; l < 3; l++){
        para(c = 0; c < 3; c++){
          escreva(" ", jogo[l][c])
          se(c < 2)
            escreva(" | ")
          se(c == 2)
            escreva("  ", l)
        }
        se(l < 2)
          escreva("\n------------")
        escreva("\n")
      }
  
      se(ganhou == 1)
        escreva("\n\tParab�ns Jogador 1. Voc� ganhou!\n\n")

      se(ganhou == 2)
        escreva("\n\tParab�ns Jogador 2. Voc� ganhou!\n\n")
  
      
    }enquanto(opcao == 1)
  }
}