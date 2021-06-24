##### Simulacao ######
#simular cadeias de Markov discretas de acordo com a matriz de transição P.
run.mc.sim <- function( P, num.iters = 50 ) {
  
  # numero de possiveis estados
  num.states <- nrow(P)
  
  # armazena os astados X_t 
  states     <- numeric(num.iters)
  
  # estado inicial da cadeia
  states[1]    <- 5
  
  for(t in 2:num.iters) {
    
    
    p  <- P[states[t-1], ]
    
    
    states[t] <-  which(rmultinom(1, 1, p) == 1)
  }
  return(states)
}



##### Cadeia de Markov contruida #######


# A matriz de estudo
P <- t(matrix(c( 0.25, 0.25, 0.25, 0.25, 0,
                 0.33,    0,    0, 0.33, 0.33, 
                 0,     0.5,    0,    0, 0.5,
                 0,       0,  0.5, 0.25, 0.25,
                 0.33, 0.33, 0.33,    0, 0), nrow=5, ncol=5))

# Nº de simulações 
num.chains     <- 5 # Numero de simulações
num.iterations <- 50 # Numero de iterações
chain.states  <- matrix(NA, ncol=num.chains, nrow=num.iterations)

# Simulação
for(c in seq_len(num.chains)){
  chain.states[,c] <- run.mc.sim(P)
}

matplot(chain.states, main = "Simulação",sub = "Simulação de uma amostra de tamanho n, iniciando a cadeia no estado 1", type='l', lty=1, col=1:5, ylim=c(0,6), ylab='estado', xlab='tempo')
abline(h=1, lty=3)
abline(h=5, lty=3)