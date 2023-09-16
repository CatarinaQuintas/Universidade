### P&A 2021/2022 LCC
### Exerc?cios 
### (c?digo R)


################################
##########  EXERC. 1  ##########
################################

### (a) uma simula??o de totoloto (6 extrac??es sem reposi??o; 49 bolas):

sample(1:49,6)

### (b) simul. meses de nascimento (numerados 1:12, equiprov.) 
###	    e g?nero (F/M, na propor??o de 5 para 4). 
###         No comando "sample": "prob" podem ser propor??es (n?o t?m que somar 1)

sample(1:12, 100, rep=T)
sample(c("F","M"), 100, rep=T, prob=c(5,4))

	# (b+) organizar os dados (bivariados) numa tabela de dupla entrada:
	mes <- sample(1:12, 100, rep=T)
	gen <- sample( c("F","M"), 100, rep=T, prob=c(5,4) )
	table(gen,mes)

	# (b++) corresp. gr?fico de barras com freq.absol. dos meses por g?nero
	barplot(table(gen,mes),beside=T,col=c(5,7),xlab="m?s",ylab="freq. absol.",las=1)
	legend("topright", c("F","M"), inset=0.05, fill=c(5,7))

### (c) simul. n lan? de dado equil.; tabela de freq. relat. (n? pintas)

n <- 60; table(sample(1:6, n, rep=T))/n
n <- 6000; table(sample(1:6, n, rep=T))/n
n <- 600000; table(sample(1:6, n, rep=T))/n
# compare as freq. relat. com o valor 1/6 = 0.1666667 para as 3 simula??es

### (d) soma de pintas no lan?. de 2 dados equil.; distr. prob. te?rica;
###     r simul., freq. relat. (comparar com probs)

r <- 100; table(sample(1:6,r,rep=T)+sample(1:6,r,rep=T))/r
d.teor <- c(1:6/36,5:1/36); names(d.teor) <- 2:12; d.teor

# repetir para r <- 1000, r <- 10^5, e depois comparar com d.teor acima:
r <- 10^5; t <- table(sample(1:6,r,rep=T)+sample(1:6,r,rep=T))/r ; t
# o mesmo, usando a fun??o "replicate":
r <- 10^5; t <- table(replicate(10^5, sum(sample(1:6,2,rep=T))))/r ; t

# diferen?a entre as freq. relat. obtidas na simula??o e as probs exactas:
t-d.teor
# a maior das discrep?ncias absolutas (tende a diminuir quando r aumenta):
max(abs(t-d.teor))

### (e) simul. sequ?ncia de s?mbolos A,G,T,C c/ probs dadas, por ex. na 
###	    propor??o 1:3:2:1, ou seja, com probs 1/7, 2/7, 3/7, 1/7.
 
bases <- sample(c("A","G","T","C"),100,rep=T,prob=c(1,3,2,1))
	
	# (e+) tabela e gr?fico de freq. relat.:
	table(bases)/100
	barplot(table(bases)/100,col=5)


################################
##########  EXERC. 2  ##########
################################

########  Estimar 1) P("soma dos 6 n?s num totoloto ser < 50"); bolas 1 a 49
########          2) a distribui??o dessa soma (ambas usando simula??o).
### 	fazer com r=10^4 simula??es, com r=10^6 simula??es e comparar resultados
### 	(a precis?o ? maior quando o n? r?plicas r aumenta)

soma <- 0 ; r <- 10^6
for (i in 1:r) soma[i] <- sum(sample(1:49,6))
sum(soma<50)/r  
# o resultado anterior dever? ser aprox. 0.00045 
	
plot(table(soma))
## variante com histograma (de ?rea unit?ria):
hist(soma,60,freq=F)
# E a verdadeira probabilidade? D? para calcular? Sim... 

# gr?fico de freq. relativas:
plot(table(soma)/r)
## variante com histograma:
hist(soma,60,freq=F)

	# (2+) qual a prob de que a soma seja 21 (note que 21 = 1+2+3+4+5+6)?
	1/choose(49,6)      # o resultado ? 7.151124e-08
	# e a estimativa? Executar table(soma)[1:5] e concluir... (ooops!)


#################################
##########  EXERC. 3  ########### 
#################################
 
### opinar sobre soma de duas uniformes no intervalo [0,1], usando simula??o.

r <- 10^5; hist(runif(r)+runif(r), 50, freq=F, xlab="soma",cex.main=1,
   main= "histograma da soma de dois n?s uniformes em [0,1] (100 mil r?plicas)")
# ficamos com uma distribui??o aproximadamente "triangular";
# conclui-se ainda que "a soma de duas uniformes (independentes) n?o ? uniforme".

# Em alternativa, pode usar-se a fun??o "replicate":
hist(replicate(10^5, sum(runif(2))), 50, freq=F, xlab="soma",cex.main=1,
   main= "histograma da soma de dois n?s uniformes em [0,1] (100 mil r?plicas)")


#################################
##########  EXERC. 4  ########### 
#################################

# passeio aleat?rio sim?trico (cara:+1, coroa:-1) e traject?ria em 200 passos: 
n <- 200  
moed <- sample(c(-1,1), n, replace=T) 	# vers?o 1 (simula??o com sample)
moed <- 2*rbinom(n,1,0.5)-1		# vers?o 2 (simula??o com rbinom)
plot(0:n,cumsum(c(0,moed)),type="l",col=2,xlab="n? jogos", ylab="fortuna")
abline(h=0, col=8)

# com uma ?nica linha de comando, para fazer v?rias traject. mais rapidamente:
n <- 2000; plot(0:n,cumsum(c(0,2*rbinom(n,1,0.5)-1)),type="l",col=2,
		xlab="n? jogos", ylab="fortuna");abline(h=0, col=8)
 

#################################
##########  EXERC. 5  ########### 
#################################

# cota??o de empresa (desce 1, mant?m-se, sobe 1, com probs 0.39, 0.2, 0.41)

### (a) simular varia??o da cota??o ao fim de 20 dias:
sum( sample(-1:1, 20, rep=T, prob=c(0.39, 0.20, 0.41)) )

### (b) estimar prob 
##      (i) de ao fim de 20 dias a cota??o subir mais que 5 euros
##     (ii) dos diferentes valores da altera??o ao fim de 20 dias; gr?fico

s20 <- 0;  p <- c(0.39, 0.20, 0.41); r <- 10^5
for (i in 1:r) s20[i] <- sum( sample(-1:1, 20, rep=T, prob=p) )
sum(s20>5)/r  # estimativa para (i) foi 0.10185
table(s20)/r
plot(table(s20)/r)
## comentar: curva aprox. normal?


#################################
##########  EXERC. 6  ########### 
#################################

### estimar, no problema dos encontros, a prob p_n de, em n extr. s/
### repos. de uma urna c/ bolas 1:n, haver pelo menos 1 encontro; 
### e tamb?m a prob de haver j enc. (j=1, 2, ..., n)

# estimativas das prob de haver j encontros (j=1,2,...,n):
n <- 20 ; r <- 10^5
enc <- 0; for (i in 1:r)  enc[i] <- sum(1:n - sample(1:n,n) == 0)
table(enc)/r
# estimativa da prob p_n (n fixado acima) de haver pelo menos um encontro:
1-table(enc)[1]/r

# obter estimativas de p_n para n = 5, 10, 15, repetindo o c?digo anterior.

# verdadeiro p_n (cf. f?rmula obtida pela regra de inclus?o/excus?o):
sum( (-1)^(1:n+1) / factorial(1:n) )
# o limite em n ? 1-exp(-1) = 0.6321206 (ver slides T: slide 26)
# probs p_n at? n=12:
n <- 12; cumsum( 1/factorial(1:n)*(-1)^(2:(n+1)) ) # probs p_n










