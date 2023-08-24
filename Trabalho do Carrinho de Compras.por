//Grupo: Vitor Ciampi Martins, Vitor H. Martins, Victor Torres, Tayson Modesto, Eduardo Mazzei.

programa {
  inclua biblioteca Matematica-->mat   //Sua função é para arredondar o valor de duas casas decimais. 
  funcao inicio() {
    inteiro q, q2, q3, p=0, pen=0, te=0, car=0, mou=0 
    /*No exemplo acima temos aqui nosso grupo que suporta numeros inteiros, podemos dividir elas em dois grupos.
    O grupo dos "q" e do "p" tem a função de ser uma especie de alavanca para os "enquanto" e "se".
    Enquanto as que parecem ser siglas (ja que de fato são) representam o numero de unidades dos produtos da loja.*/

    real penv, tev, carv, mouv, penm, tem, carm, moum, t, tm, s
    /*Temos agora estes que suportam numeros reais, perceba que são identicos com o grupo que contem o numero de unidades, assim como o outro, este é dividido em dois grupos.
    O grupo dos V's não tem esse nome por acaso, ja que eles pegam o valor da compra e multiplicam pela quantidade de unidades (por isso o "V" na frente).
    O "t" tem a função de simplesmente pegar a soma de todos estes valores.
    O grupo dos M's ten a função de pegar todo o valor e simplesmente aplicar a biblioteca que pegamos.
    Enquanto o "s" tem a função de pegar a quantidade de unidades do produto e depois somar com a propria quantidade antiga do produto.*/

    enquanto (p!=3) { //Um enquanto para manter o looping de todo o sistema, sendo essa a função do "p".
      p=0
      q2=1
      q=1
      q3=0

      enquanto (q2==1){   //Mais um looping de "enquanto" porem para caso a pessoa queira voltar para as compras, ou caso ela tenha colocado uma informação errada, sendo essa a função do q2. 
       limpa()
       p=0
       q2=1
       q=1
       q3=0
       //Mostrar novamente para manter este looping.
       
       se (q<1 ou q>4){   //Umas mensagem de erro usando o "se", onde se a pessoa errar os numeros, o looping volta e mostra esta mensagem.
         escreva ("AVISO: ocorreu um erro, voce colocou um valor diferente dos propostos. \n")
       }
       escreva ("1: Pendrive 32GB      Preço: R$49.90 \n", "2: Teclado USB        Preço: R$24.90 \n", "3: Cartucho HP1220    Preço: R$68.90 \n", "4: Mouse Bluetooth    Preço: R$119.90 \n", "\nQual item você deseja? (digite o numero que ele é representado). \n")
       leia (q)   //A função do "q" é simplesmente saber qual produto o comprador deseja.
       se (q==1){   //um "se" caso a pessoa escolha o "Pendrive 32GB".
         enquanto (p<1) {   //Colocando um "enquanto" para caso colocarem um valor negativo (reaproveitando o "p")
           limpa()
           escreva ("\nQuantas unidades deseja desse item? \n")
           leia (s)   //Aqui armazenamos as unidades.
           pen=s+pen   //Aqui somamos com as unidades antigas.
           p=s   //Para parar ou manter o looping o "p" pega a quantidade de unidades para analisar se o looping sera analisado.
           se (p>0)
           enquanto (q3<1 ou q3>2){   //Aqui temos um looping caso a pessoa coloque um valor errado, a função do q3 é manter esse looping.
             limpa ()
             escreva("\nVoce adicionou ", pen, " unidades do produto 'Mouse Bluetooth'. \nO que deseja? (o sistem é o mesmo do anterior). \n1: Adicionar outro produto. \n2: Ver o carrinho de compras. \n")
             leia (q2)
             q3=q2   //Depois a função desse mesmo "q3" é mostrar este valor para o "q2" para ser visto se o looping dele irá continuar ou não.
             se (q3<1 ou q3>2){
               escreva ("AVISO: ocorreu um erro, voce colocou um valor diferente dos propostos. \n \n")
              }
           }
          }
        }
       senao se (q==2){   //Tem as mesmas funções do "se (q==1)" porem para a escolha do "Teclado".
         enquanto (p<1) {
           limpa()
           escreva ("\nQuantas unidades deseja desse item? \n")
           leia (s)
           te=s+te
           p=s
           se (p>0)
           enquanto (q3<1 ou q3>2){
             limpa ()
             escreva("\nVoce adicionou ", te, " unidades do produto 'Mouse Bluetooth'. \nO que deseja? (o sistem é o mesmo do anterior). \n1: Adicionar outro produto. \n2: Ver o carrinho de compras. \n")
             leia (q2)
             q3=q2
             se (q3<1 ou q3>2){
               escreva ("AVISO: ocorreu um erro, voce colocou um valor diferente dos propostos. \n \n")
           }
          }
        }
       senao se (q==3){   //Tem as mesmas funções do "se (q==1)" porem para a escolha do "Cartucho HP1220".
         enquanto (p<1) {
           limpa()
           escreva ("\nQuantas unidades deseja desse item? \n")
           leia (s)
           car=s+car
           p=s
           se (p>0)
           enquanto (q3<1 ou q3>2){
             limpa ()
             escreva("\nVoce adicionou ", car, " unidades do produto 'Mouse Bluetooth'. \nO que deseja? (o sistem é o mesmo do anterior). \n1: Adicionar outro produto. \n2: Ver o carrinho de compras. \n")
             leia (q2)
             q3=q2
             se (q3<1 ou q3>2){
               escreva ("AVISO: ocorreu um erro, voce colocou um valor diferente dos propostos. \n \n")
           }
          }
        }
       senao se (q==4){   //Tem as mesmas funções do "se (q==1)" porem para a escolha do "Mouse Bluetooth".
         enquanto (p<1) {
           limpa()
           escreva ("\nQuantas unidades deseja desse item? \n")
           leia (s)
           mou=s+mou
           p=s
           se (p>0)
           enquanto (q3<1 ou q3>2){
             limpa ()
             escreva("\nVoce adicionou ", mou, " unidades do produto 'Mouse Bluetooth'. \nO que deseja? (o sistem é o mesmo do anterior). \n1: Adicionar outro produto. \n2: Ver o carrinho de compras. \n")
             leia (q2)
             q3=q2
             se (q3<1 ou q3>2){
               escreva ("AVISO: ocorreu um erro, voce colocou um valor diferente dos propostos. \n \n")
              }
           }
          }
       }
      }
      p=0   //retornando ao valor base de "p" para não ter risco de afetar o looping.
      se (q>0 e q<5) {   //Temos um "se" para impedir que uma pessoa que colocou um valor fora do proposto entre aqui.
       enquanto (p<1 ou p>4) {   //Um enquanto para manter o looping caso a pessoa escreva algo errado.
         limpa ()
         penv=(49.90*pen)
         tev=(24.90*te)
         carv=(68.90*car)
         mouv=(119.90*mou)
         //O exemplo acima mostra o valor das compras, multiplicando o preço com a quantidade de unidades.
         moum=mat.arredondar(mouv,2)  
         carm=mat.arredondar(carv,2)
         tem=mat.arredondar(tev,2)
         penm=mat.arredondar(penv,2)
         t=penm+tem+carm+moum
         tm=mat.arredondar(t,2)
         //Esta feito a aplicação da biblioteca que usamos. 

         escreva ("Seu carrinho de compras se encontra com as sequentes expecificações. \n \nQuantidade: \nPendrive 32GB     ", pen, " Unidades \nTeclado USB       ", te, " Unidades \nCartucho HP1220   ", car, " Unidades \nMouse Bluetooth   ", mou, " Unidades")
         escreva ("\n \nPreço: \nPendrive 32GB     R$", penm, "0\nTeclado USB       R$", tem, "0\nCartucho HP1220   R$", carm, "0\nMouse Bluetooth   R$", moum, "0\n \nValor total:      R$", tm, "0\n")
         escreva ("\n \nO que deseja fazer? (novamente usaresmos o mesmo sistema). \n1: Adicionar mais um produto. \n2: Limpar o carrinho. \n3: Terminar as compras. \n \n")
         leia (p)   //O "p" que falará se voce quer continuar ou não o looping.
         se (p==2) {   //Um "se" para reiniciar todos os valores de unidades caso voce tenha escolhido a opção 2.
           pen=0
           te=0
           car=0
           mou=0
        }
         senao se (p==3) escreva ("\nTchau, volte sempre!")   //Por ultimo uma despedida caso voce escolha a opção 3.
        }
      }
    }
  }
}
