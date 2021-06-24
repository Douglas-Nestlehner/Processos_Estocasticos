####### Estimação das probabilidades de transição para a matriz definida no trabalho ######

library(data.table)
library("seqinr")
set.seed(1122)

#gerando os valores inciais
x1 = 2
x1


# Logo abaixo, definimos então a função que recebe x (um vetor de valores prévios, nosso primeiro passado)
# n que é o tamanho da amostra que quero gerar
# q é a matrix de sucesso
# e burn que é o quanto quero queimar da minha amostra (Este valor tem que ser um valor entre [0.1,1])


matrix = c(0.25,1/3,0,0,1/3,
           0.25,0,0.5,0,1/3,
           0.25,0,0,0.5,1/3,
           0.25,1/3,0,0.25,0,
           0,1/3,0.5,0.25,0) 
q = matrix(matrix,5,5) # matriz de h linhas e 1 coluna
q


# ordem é em relação ao comportamento da matrix, caso ao passar do tempo a probabilidade aumente por crescente, caso contrário decrescente
altura = 4
criacao.amostra <- function(x1,n,q){
  
  cadeia.simulada = x1
  
  y = runif(n) # gerando uma distribuição uniforme de tamanho n
  
  ser_diferente_zero <- function(x) x > 0 # função que encontra o valor 1 na sequência
  
  ultimo_um = list() # vetor que registra o último um observado (posição index)
  
  ultimo.estado.visto = c()
  
  distancia.ultimo.um = c() # distÂncia do presente para o último 1 encontrado
  
  prob.final = c()
  
  prob.diff = c()
  
  prob.evento1 = c()
  
  prob.evento2 = c()
  
  prob.evento3 = c()
  
  prob.evento4 = c()
  # comprimento da minha sequÊncia x dada
  
  df <- data.frame( q )
  
  names(df) <- c("probabilidade1","probabilidade2","probabilidade3","probabilidade4","probabilidade5") # nomear a coluna
  
  estado = c(1,2,3,4,5)
  
  df$estado = estado
  
  # portanto, criamos agr o limite que minha série chega
  
  names(df) <- c("probabilidade1","probabilidade2","probabilidade3","probabilidade4","probabilidade5","estado")
  
  frame.final <- df
  
  for(i in 1:n){
    ultimo.estado.visto[[i]] <- cadeia.simulada[[i]]
    # dentro do for, desenvolvemos essa função que encontra o último 1 e retorna seu index
    
    nova.obs <- subset(frame.final, frame.final$estado == ultimo.estado.visto[[i]]) 
    
    prob.evento1[[i]] = nova.obs$probabilidade1
    
    prob.evento2[[i]] = nova.obs$probabilidade1 + nova.obs$probabilidade2
    
    prob.evento3[[i]] = nova.obs$probabilidade1 + nova.obs$probabilidade2 + nova.obs$probabilidade3
    
    prob.evento4[[i]] = nova.obs$probabilidade1 + nova.obs$probabilidade2 + nova.obs$probabilidade3 + nova.obs$probabilidade4 
    
    if (y[i] <= prob.evento1[[i]]) {
      cadeia.simulada[1+i] = 1
    } else if (as.numeric(y[i]) <= prob.evento2[[i]]) {
      cadeia.simulada[1+i] = 2
    } else if (as.numeric(y[i]) <= prob.evento3[[i]]) {
      cadeia.simulada[1+i] = 3
    } else if (as.numeric(y[i]) <= prob.evento4[[i]]) {
      cadeia.simulada[1+i] = 4
    } else{
      cadeia.simulada[1+i] = 5
    }
    
  }
  
  return(cadeia.simulada)
}


############## MV

estimar.mv.com.ac <- function(x,k){
  x2 = x[-length(x)]
  texto = as.character(x)
  texto2 = as.character(x2)
  alfabeto01 = s2c("12345")
  contagem = list()
  contagem.comp = list()
  for (i in 1:k) {
    contagem[[i]] = count(texto, word = i,start = 0, by = 1, alphabet = alfabeto01 )
    contagem.comp[[i]] = count(texto2, word = i,start = 0, by = 1, alphabet = alfabeto01 )
  }
  matrizes.estimadas = list()
  matriz.mv = matrix()
  for (j in 1:(k-1)) {
    selecao = contagem[[j+1]]
    selecao.comp = contagem.comp[[j]]
    matriz.mv = matrix(0,(5^j),5)
    for (z in 1:length(selecao.comp)) {
      matriz.mv[z,1] = selecao[[(5*z - 4)]]/selecao.comp[[z]]
      matriz.mv[z,2] = selecao[[(5*z - 3)]]/selecao.comp[[z]]
      matriz.mv[z,3] = selecao[[(5*z - 2)]]/selecao.comp[[z]]
      matriz.mv[z,4] = selecao[[(5*z - 1)]]/selecao.comp[[z]]
      matriz.mv[z,5] = selecao[[(5*z)]]/selecao.comp[[z]]
    }
    matrizes.estimadas[[j]] = matriz.mv
  }
  return(matrizes.estimadas)
}


#### n=100

sequenciasimulada1 = criacao.amostra(x1,100,q)
sequenciasimulada1

matriz1 = estimar.mv.com.ac(sequenciasimulada1,2)
matriz1

#### n=1000

sequenciasimulada2 = criacao.amostra(x1,1000,q)
sequenciasimulada2

matriz2 = estimar.mv.com.ac(sequenciasimulada2,2)
matriz2

#### n=10000

sequenciasimulada3 = criacao.amostra(x1,10000,q)
sequenciasimulada3

matriz3 = estimar.mv.com.ac(sequenciasimulada3,2)
matriz3
