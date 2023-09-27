\documentclass[a4paper]{article}
\usepackage[a4paper,left=3cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{palatino}
\usepackage[colorlinks=true,linkcolor=blue,citecolor=blue]{hyperref}
\usepackage{graphicx}
\usepackage{cp2122t}
\usepackage{subcaption}
\usepackage{adjustbox}
\usepackage{color}

\definecolor{red}{RGB}{255,  0,  0}
\definecolor{blue}{RGB}{0,0,255}
\def\red{\color{red}}
\def\blue{\color{blue}}
%================= local x=====================================================%
\def\getGif#1{\includegraphics[width=0.3\textwidth]{cp2122t_media/#1.png}}
\let\uk=\emph
\def\aspas#1{``#1"}
%================= lhs2tex=====================================================%
%include polycode.fmt
%format (div (x)(y)) = x "\div " y
%format succ = "\succ "
%format ==> = "\Longrightarrow "
%format map = "\map "
%format length = "\length "
%format fst = "\p1"
%format p1  = "\p1"
%format snd = "\p2"
%format p2  = "\p2"
%format Left = "i_1"
%format Right = "i_2"
%format i1 = "i_1"
%format i2 = "i_2"
%format >< = "\times"
%format >|<  = "\bowtie "
%format |-> = "\mapsto"
%format . = "\comp "
%format .=?=. = "\mathbin{\stackrel{\mathrm{?}}{=}}"
%format (kcomp (f)(g)) = f "\kcomp " g
%format -|- = "+"
%format conc = "\mathsf{conc}"
%format summation = "{\sum}"
%format (either (a) (b)) = "\alt{" a "}{" b "}"
%format (frac (a) (b)) = "\frac{" a "}{" b "}"
%format (uncurry f) = "\uncurry{" f "}"
%format (const (f)) = "\underline{" f "}"
%format LTree3 = "\mathsf{LTree3}"
%format (lcbr (x)(y)) = "\begin{lcbr}" x "\\" y "\end{lcbr}"
%format (split (x) (y)) = "\conj{" x "}{" y "}"
%format (for (f) (i)) = "\for{" f "}\ {" i "}"
%format B_tree = "\mathsf{B}\mbox{-}\mathsf{tree} "
%\def\ana#1{\mathopen{[\!(}#1\mathclose{)\!]}}
%format <$> = "\mathbin{\mathopen{\langle}\$\mathclose{\rangle}}"
%format Either a b = a "+" b
%format fmap = "\mathsf{fmap}"
%format NA   = "\textsc{na}"
%format NB   = "\textsc{nb}"
%format inT = "\mathsf{in}"
%format outT = "\mathsf{out}"
%format outLTree = "\mathsf{out}"
%format inLTree = "\mathsf{in}"
%format inFTree = "\mathsf{in}"
%format outFTree = "\mathsf{out}"
%format Null = "1"
%format (Prod (a) (b)) = a >< b
%format fF = "\fun F "
%format k1 = "k_1 "
%format k2 = "k_2 "
%format h1 = "h_1 "
%format h2 = "h_2 "
%format f1 = "f_1 "
%format f2 = "f_2 "
%format l1 = "l_1 "
%format d1 = "d_1 "
%format d2 = "d_2 "
%format d3 = "d_3 "
%format v3 = "v_3 "
%format g1 = "g_1 "
%format g2 = "g_2 "
%format map1 = "map_1 "
%format map2 = "map_2 "
%format map3 = "map_3"
%format l2 = "l_2 "
%format Dist = "\fun{Dist}"
%format IO = "\fun{IO}"
%format LTree = "{\LTree}"
%format FTree = "{\FTree}"
%format inNat = "\mathsf{in}"
%format (cata (f)) = "\cata{" f "}"
%format (cataNat (g)) = "\cataNat{" g "}"
%format (cataList (g)) = "\cataList{" g "}"
%format (anaList (g)) = "\anaList{" g "}"
%format Nat0 = "\N_0"
%format Rational = "\Q "
%format toRational = " to_\Q "
%format fromRational = " from_\Q "
%format muB = "\mu "
%format (frac (n)(m)) = "\frac{" n "}{" m "}"
%format (fac (n)) = "{" n "!}"
%format (underbrace (t) (p)) = "\underbrace{" t "}_{" p "}"
%format matrix = "matrix"
%%format (bin (n) (k)) = "\Big(\vcenter{\xymatrix@R=1pt{" n "\\" k "}}\Big)"
%format `ominus` = "\mathbin{\ominus}"
%%format % = "\mathbin{/}"
%format <-> = "{\,\leftrightarrow\,}"
%format <|> = "{\,\updownarrow\,}"
%format `minusNat`= "\mathbin{-}"
%format ==> = "\Rightarrow"
%format .==>. = "\Rightarrow"
%format .<==>. = "\Leftrightarrow"
%format .==. = "\equiv"
%format .<=. = "\leq"
%format .&&&. = "\wedge"
%format cdots = "\cdots "
%format pi = "\pi "
%format (curry (f)) = "\overline{" f "}"
%format (cataLTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (cataFTree (x)) = "\llparenthesis\, " x "\,\rrparenthesis"
%format (anaLTree (x)) = "\mathopen{[\!(}" x "\mathclose{)\!]}"
%format delta = "\Delta "
\newlabel{eq:fokkinga}{{3.93}{110}{The mutual-recursion law}{section.3.17}{}}
%format (plus (f)(g)) = "{" f "}\plus{" g "}"
%format ++ = "\mathbin{+\!\!\!+}"
%format Integer  = "\mathbb{Z}"
%format (cases3 (x)(y)(z)) = "\begin{lcbr}" x "\\" y "\\" z "\end{lcbr}"
\def\plus{\mathbin{\dagger}}

%---------------------------------------------------------------------------

\title{
          Cálculo de Programas
\\
          Trabalho Prático
\\
          LCC --- 2021/22 (2º semestre)
}

\author{
          \dium
\\
          Universidade do Minho
}


\date\mydate

\makeindex
\newcommand{\rn}[1]{\textcolor{red}{#1}}
\begin{document}

\maketitle

\begin{center}\large
\begin{tabular}{ll}
\textbf{Grupo} nr. & 34 
\\\hline
a91650 & Catarina Martins Sá Quintas 
\\
a90214 & Ivo Miguel Gomes Lima 
\\
a91636 & José Pedro Gomes Ferreira 
\\
a91647 & Pedro Alexandre Silva Gomes 
\end{tabular}
\end{center}

\section{Preâmbulo}

\CP\ tem como objectivo principal ensinar
a progra\-mação de computadores como uma disciplina científica. Para isso,
baseia-se num repertório de \emph{combinadores} que formam uma álgebra da
programação (conjunto de leis universais e seus corolários) e usa esses
combinadores para construir programas \emph{composicionalmente}, isto é,
agregando programas já existentes.

Na sequência pedagógica dos planos de estudo dos cursos que têm
esta disciplina, opta-se pela aplicação deste método à programação
em \Haskell\ (sem prejuízo da sua aplicação a outras linguagens
funcionais). Assim, o presente trabalho prático coloca os
alunos perante problemas concretos que deverão ser implementados em
\Haskell.  Há ainda um outro objectivo: o de ensinar a documentar
programas, a validá-los e a produzir textos técnico-científicos de
qualidade.

Antes de abodarem os problemas propostos no trabalho, os grupos devem ler
com atenção o anexo \ref{sec:documentacao} onde encontrarão as instruções
relativas ao sofware a instalar, etc.

%if False
\begin{code}
{-# OPTIONS_GHC -XNPlusKPatterns #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, DeriveDataTypeable, FlexibleInstances #-}
module Main where
import Cp
import List hiding (fac)
import Nat hiding (aux)
import LTree
import FTree
import BTree
import Data.List hiding (find)
import Svg hiding (for)
import Control.Monad
import Control.Applicative hiding ((<|>))
import System.Process
import Data.Char
import Probability hiding (scale)

main = undefined
\end{code}
%endif

\Problema

O algorítmo da \emph{divisão Euclidiana},
\begin{code}
ed (n,0) = Nothing
ed (n,d+1) = (Just . p1) (aux d n)
\end{code}
dá erro quando o denominador |d| é zero, recorrendo à função auxiliar seguinte
nos outros casos, paramétrica em |d|: 

\begin{code}
aux d = split (q d) (split (r d) (c d))
\end{code}
Esta, por sua vez, é o emparelhamento das seguintes funções mutuamente recursivas,
\begin{code}
q d 0 = 0
q d (n+1) = q d n + (if x == 0 then 1 else 0) where x = c d n

r d 0 = 0
r d (n+1) = if x == 0 then 0 else 1 + r d n where x = c d n

c d 0 = d
c d (n+1) = if x == 0 then d else x-1 where x = c d n
\end{code}
onde |q| colabora na produção do quociente, |r| na produção do resto, e |c|
é uma função de controlo --- todas paramétricas no denominador |d|.

Mostre, por aplicação da lei de recursividade mútua, que |aux d| é a mesma
função que o ciclo-for seguinte:
\begin{code}
loop d = for ((g d)) ((0,(0, d))) where
     g d (q, (r, 0)) = (q+1, (0, d))
     g d (q, (r, c+1)) = (q,(r+1, c))
\end{code}
\textbf{Sugestão}: consultar o anexo \ref{sec:mr}.

\Problema

Considere o seguinte desafio, extraído de \href{http://bebras.dcc.fc.up.pt/problems/2020/problemas_09_10.pdf}{O Bebras - Castor Informático} (edição 2020):

\begin{quote}\em
\textbf{11 --- Robôs e Pedras Preciosas}
A Alice e o Bob estão a controlar um robô num labirinto com pedras preciosas.
O robô começa na localização indicada na figura abaixo [Fig.~\ref{fig:labirinto}].
O robô segue um caminho até encontrar uma bifurcação. Um dos jogadores decide
qual dos caminhos (esquerda ou direita) o robô deve tomar. Depois, o robô
segue esse caminho até encontrar outra bifurcação, e assim consecutivamente
(o robô nunca volta para trás no seu caminho).

A Alice e o Bob decidem à vez qual a direção a seguir, com a Alice a começar,
o Bob decidindo a 2ª bifurcação, a Alice a 3ª e por aí adiante. O jogo termina
quando o robô chegar ao final de um caminho sem saída, com o robô a recolher
todas as pedras preciosas que aí encontrar. A Alice quer que o robô acabe
o jogo com o maior número possível de pedras preciosas, enquanto que o Bob
quer que o robô acabe o jogo com o menor número possível de pedras preciosas.

A Alice e o Bob sabem que cada um vai tentar ser mais esperto que o outro.
Por isso se, por exemplo, o Bob redirecionar o robô para uma bifurcação onde
é possível recolher 3 ou 7 pedras preciosas, ele sabe que a Alice vai comandar
o robô escolhendo o caminho que leva às 7 pedras preciosas.
\end{quote}

O labirinto deste desafio (Fig.~\ref{fig:labirinto}) configura uma árvore
binária de tipo \LTree\ cujas folhas têm o número de pedras preciosas do
correspondente caminho:\footnote{Abstracção: as diferentes pedras preciosas
são irrelevantes, basta o seu número.}

\begin{code}
t = Fork (
       Fork (
            Fork (Leaf 2,Leaf 7),
            Fork (Leaf 5,Leaf 4)),
       Fork (
            Fork (Leaf 8,Leaf 6),
            Fork (Leaf 1,Leaf 3))
         )
\end{code}

\begin{enumerate}
\item	
Defina como catamorfismo de \LTree's a função |both :: LTree Int -> Int >< Int| tal que
\begin{quote}
|(a,b) = both t|
\end{quote}
dê,
\begin{itemize}
\item	em |a|: o resultado mais favorável à Alice, quando esta é a primeira a jogar,
	tendo em conta as jogadas do Bob e as suas;
\item	em |b|: o resultado mais favorável ao Bob, quando este é o primeiro a jogar,
	tendo em conta as jogadas da Alice e as suas.
\end{itemize}
\item
De seguida, extraia (por recursividade mútua) as funções (recursivas) |alice| e |bob| tais que
\begin{eqnarray*}
	|both = split alice bob|
\end{eqnarray*}
(Alternativamente, poderá codificar |alice| e |bob| em primeiro lugar e depois
juntá-las num catamorfismo recorrendo às leis da recursividade mútua.)
\end{enumerate}

\begin{figure}
	\centering
	\includegraphics[width=0.6\textwidth]{cp2122t_media/castor11.png}
\caption{
   Labirinto de ``Robôs e Pedras Preciosas".
   \label{fig:labirinto}
}
\end{figure}

\Problema

O \sierp{triângulo de Sierpinski} (Fig.~\ref{fig:sierp1}) é uma figura geométrica
\fractal\ em que um triângulo se subdivide recursivamente em sub-triângulos,
da seguinte forma: considere-se um triângulo rectângulo e
isósceles |A| cujos catetos têm comprimento |s|. A estrutura \fractal\ é
criada desenhando-se três triângulos no interior de |A|, todos eles
rectângulos e isósceles e com catetos de comprimento |div s 2|. Este passo
é depois repetido para cada um dos triângulos desenhados e assim
sucessivamente (Fig.~\ref{fig:sierp2}).

\begin{figure}[htb]
\begin{center}
	\includegraphics[width=0.4\textwidth]{cp2122t_media/sierpinski1.png}
\end{center}
  \caption{Um triângulo de Sierpinski com profundidade |4|.}
  \label{fig:sierp1}
\end{figure}

\begin{figure}[htb]
\begin{center}
	\includegraphics[width=0.6\textwidth]{cp2122t_media/sierpinski2.png}
\end{center}
  \caption{Construção de um triângulo de Sierpinski}
  \label{fig:sierp2}
\end{figure}

Um triângulo de Sierpinski é gerado repetindo-se infinitamente o processo
acima descrito; no entanto para efeitos de visualização é conveniente 
parar o processo recursivo a um determinado nível.

A figura a desenhar é constituída por triângulos todos da mesma dimensão
(por exemplo, no quarto triângulo da Fig.~\ref{fig:sierp2} desenharam-se
27 triângulos). Seja cada triângulo geometricamente descrito pelas coordenadas
do seu vértice inferior esquerdo e o comprimento dos seus catetos:
\begin{code}
type Tri = (Point, Side)
\end{code}
onde
\begin{code}
type Side = Int
type Point = (Int, Int)
\end{code}

A estrutura recursiva que suporta a criação de \sierp{triângulos de Sierpinski}
é captada por uma árvore ternária,
\begin{code}
data LTree3 a = Tri a | Nodo (LTree3 a) (LTree3 a) (LTree3 a) deriving (Eq,Show)
\end{code}
em cujas folhas se irão encontrar os triângulos mais pequenos, todos da
mesma dimensão, que deverão ser desenhados. Apenas estes conterão informação
de carácter geométrico, tendo os nós da árvore um papel exclusivamente estrutural.
Portanto, a informação geométrica guardada em cada folha consiste nas coordenadas
do vértice inferior esquerdo e no cateto do respectivo triângulo. A função
\begin{code}
sierpinski :: (Tri,Int) -> [Tri]
sierpinski = folhasSierp . geraSierp
\end{code}
recebe a informação do triângulo exterior e a profundidade pretendida,
que funciona como critério de paragem do processo de construção do fractal.
O seu resultado é a lista de triângulos a desenhar.

Esta função é um hilomorfismo do tipo |LTree3|, i.e.\ a composição de
duas funções: uma que gera |LTree3|s,
\begin{code}
geraSierp :: (Tri,Int) -> LTree3 Tri
geraSierp = anaLTree3 g2
\end{code}
e outra que as consome:
\begin{code}
folhasSierp :: LTree3 Tri -> [Tri]
folhasSierp = cataLTree3 g1
\end{code}
Trabalho a realizar:
\begin{enumerate}
\item Desenvolver a biblioteca \emph{pointfree} para o tipo |LTree3| de forma análoga
      a outras bibliotecas que conhece (\eg\ \BTree, \LTree, etc).
\item Definir os genes |g1| e |g2| do hilomorfismo |sierpinski|.
\item Correr
\begin{code}
teste = desenha (sierpinski (base,3))
\end{code}
para verificar a correcta geração de triângulos de Sierpinski em \svg\footnote{\svg,
abreviatura de \emph{Scalable Vector Graphics}, é um dialecto de \xml\ para
computação gráfica. A biblioteca Svg.hs (fornecida) faz uma interface rudimentar
entre \Haskell\ e \svg.}, onde |desenha| é uma função dada no anexo \ref{sec:codigo} que,
para o argumento |sierpinski (base,3)|, deverá produzir o triângulo colorido da 
Fig.~\ref{fig:sierp1}.\footnote{O resultado é gravado no ficheiro \verb+_.html+, que pode 
ser visualizado num browser. Poderão ser feitos testes com outros níveis de produndidade.}
\end{enumerate}

\Problema

Os computadores digitais baseiam-se na representação Booleana da informação,
isto é, sob a forma de \emph{bits} que podem ter dois valores, vulg.\ |0| e |1|.
Um problema muito frequente é o de os bits se alterarem, devido a ruído ao
nível electrónico. Essas alterações espúrias designam-se \emph{bit-flips}
e podem acontecer a qualquer nível: na transmissão de informação, na gravação
em disco, etc, etc.

Em contraste com essas perturbações, o utilizador de serviços informáticos
raramente dá pela sua presença. Porquê? Porque existe muito trabalho teórico
em correcção dos erros gerados por \emph{bit-flips}, que os permite esconder
do utilizador.

O objectivo desta questão é conseguirmos avaliar experimentalmente o funcionamento
de uma dessas técnicas de correcção de erros, a mais elementar de todas,
chamada \emph{código de repetição}, escrevendo tão pouco código (\Haskell)
quanto possível. Para isso vamos recorrer ao mónade das \emph{distribuições
probabilísticas} (detalhes no apêndice \ref{sec:probabilities}).

Vamos supor que queremos medir a eficácia de um tal código na situação seguinte:
queremos transmitir mensagens que constam exclusivamente de letras maiúsculas,
representadas por 5 bits cada uma segundo o esquema seguinte de codificação,
\begin{code}
enc :: Char -> Bin
enc c = tobin (ord c - ord 'A')
\end{code}
e descodificação,
\begin{code}
dec :: Bin -> Char
dec b = chr(frombin b + ord 'A')  
\end{code}
onde |tobin| e |frombin| são funções dadas no anexo \ref{sec:codigo}. Por exemplo,
\begin{quote}
|enc 'A' = [0,0,0,0,0]|
\\
|enc 'B' = [0,0,0,0,1]|
\\ $\vdots$ \\
|enc 'Z' = [1,1,0,0,1]|
\end{quote}
Embora |dec| e |enc| sejam inversas uma da outra, para o intervalo de |'A'|
a |'Z'|, deixam de o ser quando, a meio da transmissão, acontecem bit-flips: 

\begin{center}
\unitlength=0.08ex
\linethickness{0.1pt}
\begin{picture}(800.00,110.00)(-160,270)
\put(-170.00,310.00){|x|}
\put( 510.00,310.00){|y|$\not=$ |x|}
\put( 110.00,340.00){(bit-flips)}
\put(-100.00,270.00){\framebox(90,90)[cc]{|enc|}}
\put(350.00,270.00){\framebox(90,90)[cc]{|dec|}}
\put(-150.00,315.00){\vector(1,0){50.00}}
\put( -10.00,315.00){\vector(1,0){50.00}}
\multiput(100.00,315.00)(30,0){5}{.}
\put(300.00,315.00){\vector(1,0){50.00}}
\put(440.00,315.00){\vector(1,0){50.00}}
\end{picture}
\end{center}

Vejamos com quantificar "os estragos". Sabendo-se, por exemplo e por
observação estatística, que a probabilidade de um |0| virar |1| é de |4%|
e a de |1| virar |0| é de |10%|
\footnote{Estas probabilidades, na prática muito mais baixas, estão inflacionadas
para mais fácil observação.}, simula-se essa informação sobre a forma de
uma função probabilística, em Haskell:
\begin{code}
bflip :: Bit -> Dist Bit
bflip 0 = D[(0,0.96), (1,0.04)]
bflip 1 = D[(1,0.90), (0,0.10)]
\end{code}
Agora vamos simular o envio de caracteres. O que devia ser |transmit = dec . enc|
vai ter agora que prever a existência de possíveis bit-flips no meio
da transmissão:
\begin{code}
transmit = dec' . propagate bflip . enc
\end{code}
Por exemplo, |transmit 'H'| irá dar a seguinte distribuição:
\begin{quote}\small
\begin{verbatim}
 'H'  67.2%
 'D'   7.5%
 'F'   7.5%
 'G'   7.5%
 'P'   2.8%
 'X'   2.8%
 'E'   0.8%
 'B'   0.8%
 'C'   0.8%
 'L'   0.3%
 'N'   0.3%
 'O'   0.3%
 'T'   0.3%
 'V'   0.3%
 'W'   0.3%
 '`'   0.1%
 'A'   0.1%
\end{verbatim}
\end{quote}
A saída 'H', que se esperava com |100%| de certeza,
agora só ocorrerá, estatísticamente, com a probabilidade de |67.2%|,
consequência dos bit-flips, havendo um âmbito bastante
grande de respostas erradas, mas com probabilidades mais baixas.

\begin{enumerate}
\item \textbf{Trabalho a fazer:} completar a definição do catamorfismo de listas |propagate|.
\end{enumerate}

O que se pode fazer quanto a estes erros de transmissão? Os chamados códigos
de repetição enviam cada bit um número impar de vezes, tipicamente |3| vezes.
Cada um desses três bits (que na origem são todos iguais) está sujeito
a bit-flips. O que se faz é \emph{votar} no mais frequente --- ver função |v3| no anexo.
Se agora a transmissão do |'H'| for feita em triplicado,
usando
\begin{code}
transmit3 = dec' . propagate3 bflip3 . enc
\end{code}
ter-se-á:
\begin{quote}\small
\begin{verbatim}
Main> transmit3 'H'
 'H'  91.0%
 'F'   2.6%
 'G'   2.6%
 'D'   2.6%
 'P'   0.4%
 'X'   0.4%
 'B'   0.1%
 'C'   0.1%
 'E'   0.1%
\end{verbatim}
\end{quote}
Vê-se que a probabilidade da resposta certa aumentou muito, para |91%|,
com redução também do espectro de respostas erradas.

\begin{enumerate}
\setcounter{enumi}{1}
\item \textbf{Trabalho a fazer:} completar a definição do catamorfismo de
listas |propagate3| e da função |bflip3|.
\end{enumerate}

Apesar da sua eficácia, esta técnica de correcção de erros é dispendiosa,
obrigando o envio do triplo dos bits. Isso levou a
comunidade científica a encontrar formas mais sofisticadas para resolver
o mesmo problema sem tal ``overhead". Quem estiver interessado em saber mais
sobre este fascinante tópico poderá começar por visualizar este
\href{https://youtu.be/X8jsijhllIA?t=4}{vídeo} no YouTube.

\part*{Anexos}

\appendix

\section{Documentação para realizar o trabalho}
\label{sec:documentacao}
Para cumprir de forma integrada os objectivos do trabalho vamos recorrer
a uma técnica de programa\-ção dita ``\litp{literária}'' \cite{Kn92},
cujo princípio base é o seguinte:
%
\begin{quote}\em Um programa e a sua documentação devem coincidir.
\end{quote}
%
Por outras palavras, o código fonte e a documentação de um
programa deverão estar no mesmo ficheiro.

O ficheiro \texttt{cp2122t.pdf} que está a ler é já um exemplo de
\litp{programação literária}: foi gerado a partir do texto fonte
\texttt{cp2122t.lhs}\footnote{O sufixo `lhs' quer dizer
\emph{\lhaskell{literate Haskell}}.} que encontrará no
\MaterialPedagogico\ desta disciplina descompactando o ficheiro
\texttt{cp2122t.zip} e executando:
\begin{Verbatim}[fontsize=\small]
    $ lhs2TeX cp2122t.lhs > cp2122t.tex
    $ pdflatex cp2122t
\end{Verbatim}
em que \href{https://hackage.haskell.org/package/lhs2tex}{\texttt\LhsToTeX} é
um pre-processador que faz ``pretty printing''
de código Haskell em \Latex\ e que deve desde já instalar utilizando o
utiliário \href{https://www.haskell.org/cabal/}{cabal} disponível em \href{https://www.haskell.org}{haskell.org}.

Por outro lado, o mesmo ficheiro \texttt{cp2122t.lhs} é executável e contém
o ``kit'' básico, escrito em \Haskell, para realizar o trabalho. Basta executar
\begin{Verbatim}[fontsize=\small]
    $ ghci cp2122t.lhs
\end{Verbatim}

\noindent Abra o ficheiro \texttt{cp2122t.lhs} no seu editor de texto preferido
e verifique que assim é: todo o texto que se encontra dentro do ambiente
\begin{quote}\small\tt
\verb!\begin{code}!
\\ ... \\
\verb!\end{code}!
\end{quote}
é seleccionado pelo \GHCi\ para ser executado.

\subsection{Como realizar o trabalho}
Este trabalho teórico-prático deve ser realizado por grupos de 3 (ou 4) alunos.
Os detalhes da avaliação (datas para submissão do relatório e sua defesa
oral) são os que forem publicados na \cp{página da disciplina} na \emph{internet}.

Recomenda-se uma abordagem participativa dos membros do grupo em todos os
exercícios do trabalho, para assim poderem responder a qualquer questão colocada
na \emph{defesa oral} do relatório.

Em que consiste, então, o \emph{relatório} a que se refere o parágrafo anterior?
É a edição do texto que está a ser lido, preenchendo o anexo \ref{sec:resolucao}
com as respostas. O relatório deverá conter ainda a identificação dos membros
do grupo de trabalho, no local respectivo da folha de rosto.

Para gerar o PDF integral do relatório deve-se ainda correr os comando seguintes,
que actualizam a bibliografia (com \Bibtex) e o índice remissivo (com \Makeindex),
\begin{Verbatim}[fontsize=\small]
    $ bibtex cp2122t.aux
    $ makeindex cp2122t.idx
\end{Verbatim}
e recompilar o texto como acima se indicou.

No anexo \ref{sec:codigo} disponibiliza-se algum código \Haskell\ relativo
aos problemas que se seguem. Esse anexo deverá ser consultado e analisado
à medida que isso for necessário.

\subsection{Como exprimir cálculos e diagramas em LaTeX/lhs2tex}
Como primeiro exemplo, estudar o texto fonte deste trabalho para obter o
efeito:\footnote{Exemplos tirados de \cite{Ol18}.}
\begin{eqnarray*}
\start
     |id = split f g|
%
\just\equiv{ universal property }
%
        |lcbr(
          p1 . id = f
     )(
          p2 . id = g
     )|
%
\just\equiv{ identity }
%
        |lcbr(
          p1 = f
     )(
          p2 = g
     )|
\qed
\end{eqnarray*}

Os diagramas podem ser produzidos recorrendo à \emph{package} \LaTeX\
\href{https://ctan.org/pkg/xymatrix}{xymatrix}, por exemplo:
\begin{eqnarray*}
\xymatrix@@C=2cm{
    |Nat0|
           \ar[d]_-{|cataNat g|}
&
    |1 + Nat0|
           \ar[d]^{|id + (cataNat g)|}
           \ar[l]_-{|inNat|}
\\
     |B|
&
     |1 + B|
           \ar[l]^-{|g|}
}
\end{eqnarray*}

\section{Regra prática para a recursividade mútua em |Nat0|}\label{sec:mr}

Nesta disciplina estudou-se como fazer \pd{programação dinâmica} por cálculo,
recorrendo à lei de recursividade mútua.\footnote{Lei (\ref{eq:fokkinga})
em \cite{Ol18}, página \pageref{eq:fokkinga}.}

Para o caso de funções sobre os números naturais (|Nat0|, com functor
|fF X = 1 + X|) é fácil derivar-se da lei que foi estudada uma
	\emph{regra de algibeira}
	\label{pg:regra}
que se pode ensinar a programadores que não tenham estudado
\cp{Cálculo de Programas}. Apresenta-se de seguida essa regra, tomando como
exemplo o cálculo do ciclo-\textsf{for} que implementa a função de Fibonacci,
recordar o sistema:
\begin{spec}
fib 0 = 1
fib(n+1) = f n

f 0 = 1
f (n+1) = fib n + f n
\end{spec}
Obter-se-á de imediato
\begin{code}
fib' = p1 . for loop init where
   loop(fib,f)=(f,fib+f)
   init = (1,1)
\end{code}
usando as regras seguintes:
\begin{itemize}
\item	O corpo do ciclo |loop| terá tantos argumentos quanto o número de funções
mutuamente recursivas.
\item	Para as variáveis escolhem-se os próprios nomes das funções, pela ordem
que se achar conveniente.\footnote{Podem obviamente usar-se outros símbolos,
mas numa primeira leitura dá jeito usarem-se tais nomes.}
\item	Para os resultados vão-se buscar as expressões respectivas, retirando
a variável |n|.
\item	Em |init| coleccionam-se os resultados dos casos de base das funções,
pela mesma ordem.
\end{itemize}
Mais um exemplo, envolvendo polinómios do segundo grau $ax^2 + b x + c$ em |Nat0|.
Seguindo o método estudado nas aulas\footnote{Secção 3.17 de \cite{Ol18} e tópico
\href{https://www4.di.uminho.pt/~jno/media/cp/}{Recursividade mútua}
nos vídeos de apoio às aulas teóricas.},
de $f\ x = a x^2 + b x + c$ derivam-se duas funções mutuamente recursivas:
\begin{spec}
f 0 = c
f (n+1) = f n + k n

k 0 = a + b
k(n+1) = k n + 2 a
\end{spec}
Seguindo a regra acima, calcula-se de imediato a seguinte implementação, em Haskell:
\begin{code}
f' a b c = p1 . for loop init where
  loop(f,k) = (f+k,k+2*a)
  init = (c,a+b) 
\end{code}

\section{O mónade das distribuições probabilísticas} \label{sec:probabilities}
%format B = "\mathit B"
%format C = "\mathit C"
Mónades são functores com propriedades adicionais que nos permitem obter
efeitos especiais em progra\-mação. Por exemplo, a biblioteca \Probability\
oferece um mónade para abordar problemas de probabilidades. Nesta biblioteca,
o conceito de distribuição estatística é captado pelo tipo
\begin{eqnarray}
	|newtype Dist a = D {unD :: [(a, ProbRep)]}|
	\label{eq:Dist}
\end{eqnarray}
em que |ProbRep| é um real de |0| a |1|, equivalente a uma escala de $0$ a
$100 \%$.

Cada par |(a,p)| numa distribuição |d::Dist a| indica que a probabilidade
de |a| é |p|, devendo ser garantida a propriedade de  que todas as probabilidades
de |d| somam $100\%$.
Por exemplo, a seguinte distribuição de classificações por escalões de $A$ a $E$,
\[
\begin{array}{ll}
A & \rule{2mm}{3pt}\ 2\%\\
B & \rule{12mm}{3pt}\ 12\%\\
C & \rule{29mm}{3pt}\ 29\%\\
D & \rule{35mm}{3pt}\ 35\%\\
E & \rule{22mm}{3pt}\ 22\%\\
\end{array}
\]
será representada pela distribuição
\begin{code}
d1 :: Dist Char
d1 = D [('A',0.02),('B',0.12),('C',0.29),('D',0.35),('E',0.22)]
\end{code}
que o \GHCi\ mostrará assim:
\begin{Verbatim}[fontsize=\small]
'D'  35.0%
'C'  29.0%
'E'  22.0%
'B'  12.0%
'A'   2.0%
\end{Verbatim}
É possível definir geradores de distribuições, por exemplo distribuições \emph{uniformes},
\begin{code}
d2 = uniform (words "Uma frase de cinco palavras")
\end{code}
isto é
\begin{Verbatim}[fontsize=\small]
     "Uma"  20.0%
   "cinco"  20.0%
      "de"  20.0%
   "frase"  20.0%
"palavras"  20.0%
\end{Verbatim}
distribuição \emph{normais}, eg.\
\begin{code}
d3 = normal [10..20]
\end{code}
etc.\footnote{Para mais detalhes ver o código fonte de \Probability, que é uma adaptação da
biblioteca \PFP\ (``Probabilistic Functional Programming''). Para quem quiser saber mais
recomenda-se a leitura do artigo \cite{EK06}.} |Dist| forma um \textbf{mónade}
cuja unidade é |return a = D [(a,1)]| e cuja composição de Kleisli é (simplificando a notação)
\begin{spec}
  ((kcomp f g)) a = [(y,q*p) | (x,p) <- g a, (y,q) <- f x]
\end{spec}
em que |g: A -> Dist B| e |f: B -> Dist C| são funções \textbf{monádicas} que representam
\emph{computações probabilísticas}.

Este mónade é adequado à resolução de problemas de \emph{probabilidades e
estatística} usando programação funcional, de forma elegante e como caso
particular da programação monádica.

\section{Código fornecido}\label{sec:codigo}

\subsection*{Problema 3}

Triângulo de base:
\begin{code}
base = ((0,0), 32)
\end{code}
Desenho de triângulos em \svg:
\begin{code}
desenha x = picd'' [ scale 0.44 (0,0) (x >>= tri2svg) ]
\end{code}
Função que representa cada triângulo em \svg:
\begin{code}
tri2svg :: Tri -> Svg
tri2svg (p,c) = (red . polyg) [ p, p .+ (0,c), p .+ (c,0) ]
\end{code}
\textbf{NB}: o  tipo |Svg| é sinónimo de |String|:
\begin{code}
type Svg = String
\end{code}

\subsection*{Problema 4}
Funções básicas:
\begin{code}
type Bit = Int

type Bin = [Bit]

type Bit3 = (Bit,Bit,Bit)

tobin = rtrim 5 . pad 5 . dec2bin

frombin = bin2dec . rtrim 5

bin2dec :: Bin -> Int
bin2dec [a] = a
bin2dec b   = bin2dec(init b) * 2 + last b

rtrim n a = drop (length a - n) a

dec2bin 0 = []
dec2bin n = dec2bin m ++ [b] where (m,b) = (div n 2, mod n 2)

pad n x = take m zeros ++ x where
   m = n-length x
   zeros = 0:zeros

bflips = propagate bflip
\end{code}
Função que vota no bit mais frequente:
\begin{code}
v3 (0,0,0) = 0
v3 (0,0,1) = 0
v3 (0,1,0) = 0
v3 (0,1,1) = 1
v3 (1,0,0) = 0
v3 (1,0,1) = 1
v3 (1,1,0) = 1
v3 (1,1,1) = 1
\end{code}
Descodificação monádica:
\begin{code}
dec' = fmap dec
\end{code}
Para visualização abreviada de distribuições:
\begin{code}
consolidate :: Eq a => Dist a -> Dist a
consolidate = D . filter q . map (id><sum) . collect . unD where q(a,p) = p > 0.001

collect x = nub [ k |-> nub [ d' | (k',d') <- x , k'==k ] | (k,d) <- x ]
\end{code}

%----------------- Soluções dos alunos -----------------------------------------%

\section{Soluções dos alunos}\label{sec:resolucao}

\subsection*{Problema 1} \label{pg:P1}
\paragraph{}
Temos como produções as funções: q que produz o quociente, r do resto, d do denominador e c que é a função de controlo.
Pretendemos mostrar, através da aplicação da lei de recursividade mútua, que aux d é a mesma função que o ciclo-for dado.

Numa primeira abordagem, interpretamos que (q d) n + 1 era equivalente a succ (q d) n, mas aquando a transcrição da fórmula para um ciclo for, a primeira parte era distinta da definição do enunciado. Mesmo assim, deixamos esta primeira interpretação, uma vez que esta nos ajudou a obter uma solução correta que será demonstrada pela segunda abordagem.   

\subsubsection*{Abordagem 1} \label{pg:P11}
Admitindo a Regra 1 como:

$$ (c  d)  x \equiv 0 $$ $$(c  d)  x  (\equiv 0)$$ $$ (0 \equiv)  .  (c  d)  x $$ $$  ((0 \equiv)  . (c  d)) $$

Começamos por reescrever a função (q d): 
\begin{eqnarray*}
\start
|lcbr(
     q d 0 = 0
)(
     q d (n + 1) = q d n + (if x == 0 then 1 else 0) where x = c d n
)|
%
\just\equiv{Def de x e 20}
%
|lcbr(
     (q d) 0 = 0
)(
     q d (n+1) = if c d n == 0 then q d n + 1 else q d n + 0
)|
%
\just\equiv{74, 72 e Def de succ}
%
|lcbr(
     ((q d) . const(0)) n = const(0) n
)(
     ((q d) . succ) n = if c d n == 0 then succ . (q d) n else (q d) n
)|
%
\just\equiv{Regra 1}
%
|lcbr(
     ((q d) . const(0)) n = const(0) n
)(
     ((q d) . succ) n = if (== 0) . (c d) n then succ . (q d) n else (q d) n
)|
%
\just\equiv{78}
%
|lcbr(
     ((q d) . const(0)) n = const(0) n
)(
     ((q d) . succ) n = (((== 0) . (c d)) ==> (succ . (q d)) , q d) n
)|
%
\just\equiv{71}
%
|lcbr(
     (q d) . const(0) = 0
)(
     (q d) . succ = ((== 0) . (c d)) ==> succ . (q d) , q d
)|
%
\just\equiv{27}
%
|(q d) . (either (const(0)) (succ)) = (either (const(0)) (( (== 0) . (c d)) ==> succ . (q d) , q d ))|
%
\just\equiv{30 e Def in dos naturais ([|(const 0)|,succ]) }
%
|(q d) . in = (either (const(0)) ((either ( succ . (q d) ) (q d)) . ( (== 0) . (c d)) ?))|
%
\just\equiv{1, 22 e funtor F f = id + f}
%
|(q d) . in = (either (const(0)) (either (succ . (q d) ) (q d) ) ) . (id + ( (== 0) . (c d)) ?)|
%
\qed
\end{eqnarray*}
De seguida, a função (r d):
\begin{eqnarray*}
\start
|lcbr(
     (r d) 0 = 0
)(
     (r d) (n+1) = if x == 0 then 0 else 1 + r d n  where x = c d n
)|
%
\just\equiv{Def de x e 1 + r d n = (succ . (r d)) n}
%
|lcbr(
     (r d) 0 = 0
)(
     (r d) (n+1) = if c d n == 0 then 0 else (succ . (r d)) n
)|
%
\just\equiv{Regra 1, 72, 74 e Def de succ}
%
|lcbr(
     ((r d) . const(0)) n = const(0) n
)(
     ((r d) . succ) n = if ((== 0) . (c d)) n then const(0) n else ( succ . (r d) ) n
)|
%
\just\equiv{78}
%
|lcbr(
     ((r d) . const(0)) n = const(0) n
)(
     ((r d) . succ) n = (((== 0) . (c d)) ==> const(0) , ( succ . (r d) )) n
)|
%
\just\equiv{30 e 71}
%
|lcbr(
     (r d) . const(0) = const(0)
)(
     (r d) . succ = (either (const(0)) ( succ . (r d) )) . ((== 0) . (c d)) ?
)|
%
\just\equiv{27 e Def in dos Naturais ([|(const 0)|,succ])}
%
|(r d) . (either(const 0) (succ)) = (either(const 0) (either(const 0)(succ . (r d))) . ((== 0) . (c d)) ?)|
%
\just\equiv{1, 22 e funtor F f = id + f }
%
|(r d) . in = (either(const(0)) (either (const 0) (succ . (r d)))) . (id + ((== 0) . (c d)) ?)|
\qed
\end{eqnarray*}
Finalmente, reescrevemos a função (c d):
\begin{eqnarray*}
\start
|lcbr(
     c d 0 = d
)(
     c d (n+1) = if x == 0 then 0 else x - 1 where x = c d n
)|
%
\just\equiv{Def de x}
%
|lcbr(
     (c d) 0 = d
)(
     (c d) (n+1) = if c d n == 0 then 0 else c d n - 1
)|
\just\equiv{Regra 1, 72 e 74}
%
|lcbr(
     (c d) (const 0) n = (const d) n
)(
     ((c d) . succ) n = if ((== 0 ) . (c d) ) n then (const 0) n else (c d) n - (const 1) n
)|
%
\just\equiv{sinais}
%
|lcbr(
     (c d) (const 0) n =  (const d) n
)(
     ((c d) . succ) n = if ((== 0 ) . (c d) ) n then (const 0) n else (c d) n + (const (-1)) n
)|
%
\just\equiv{84}
%
|lcbr(
     (c d) (const 0) n = (const d) n
)(
     ((c d) . succ) n = if ((== 0 ) . (c d)) n then (const 0) n else uncurry(+) . ((c d) n , (const (-1)) n) 
)|
%
\just\equiv{76}
%
|lcbr(
(c d) (const 0) n = (const d) n
)(
((c d) . succ) n = if ((== 0 ) . (c d) ) n then (const 0) n else uncurry(+) . (split ((c d)) (const (-1))) n 
)|
%
\just\equiv{78}
%
|lcbr(
     (c d) (const 0) n = (const d) n
)(
     ((c d) . succ) n = (((== 0 ) . (c d) ) ==> (const 0) , add . (split ((c d)) (const (-1)))) n 
)|
%
\just\equiv{71}
%
|lcbr(
     (c d) (const 0) = (const d)
)(
     ((c d) . succ) = (((== 0 ) . (c d) ) ==> (const 0) , add . (split ((c d)) (const (-1))))
)|
%
\just\equiv{27}
%
|(c d) . (either(const 0) (succ)) = [d , ((== 0 ) . (c d) ) ==> (const 0) , add . (split ((c d)) (const (-1)))]|
%
\just\equiv{30}
%
|(c d) . (either(const 0) (succ)) = [(const d) , [(const 0) , add . (split ((c d)) ((const (-1)))) ] . ((== 0 ) . (c d))?]|
%
\just\equiv{1, 22, funtor F f = id + f e Def in dos naturais ([|(const 0)|,succ])}
%
|(c d) . in = [(const d) , [(const 0) , add . (split ((c d)) ((const (-1))))]] . F (id + ((== 0 ) . (c d) ?))|
%
\end{eqnarray*}
E obtemos o seguinte sistema, que tal como referido, anteriormente, não corresponde à solução correta:
\begin{eqnarray*}
\start
|cases3(
     (q d) . in = [const(0) , [( succ . (q d)) , q d ]] . F (id + ( (== 0) . (c d)) ?)
)( 
     (r d) . in = [const(0) , [const(0) , ( succ . (r d))]] . F (id + ((== 0) . (c d)) ?)
)(
     (c d) . in = [const(d) , [const(0) , add . (split ((c d)) ((const (-1)))) ] ] . F (id + ((== 0 ) . (c d) ?)) 
)|
%
\qed
\end{eqnarray*}

\subsubsection*{Abordagem 2} \label{pg:P12}
\paragraph{}
Consideremos a Regra1 definida anteriormente e ainda, a definição de Reverse +-absorption (2.43) da Secção 3.17, na página 119, de \textit{PROGRAM DESIGN BY CALCULATION}.

Após esta primeira tentativa, consideramos, agora, a definição pointfree das diferentes funções constituintes da função \emph{aux}.

Tendo isto em mente, escrevemos a função q \ d como:
\begin{eqnarray*}
\start
|lcbr(
(q d) 0 = 0
)(
(q d) (n + 1) = (q d) n + (if x == 0 then 1 else 0) where x = (c d) n 
)|
%
\just\equiv{Def de x, Def de succ e 74}
%
|lcbr(
(q d) (const 0) n = const(0) n)(
(q d) (succ n) = (q d) n + (if (c d) n == 0 then const(1) n else const(0) n))
|
%
\just\equiv{Regra1}
%
|lcbr(
(q d) (const 0) n = const(0) n
)(
(q d) (succ n) = (q d) n + (if (((0 ==) . (c d)) n) then const(1) n else const(0) n)
)|
%
\just\equiv{78}
%
|lcbr(
(q d) (const 0) n = const(0) n
)(
(q d) (succ n) = (q d) n + (((0 ==) . (c d)) ==> const(1) , const(0)) n
)|
%
\just\equiv{30, 71 e 84}
%
|lcbr(
(q d) (const 0) = const(0)
)(
(q d) (succ n) = (uncurry(+) ( (q d) n , ([const(1) , const(0)].((0 ==) . (c d))?) ) ) n
)|
%
\just\equiv{72 e 76}
%
|lcbr(
     (q d) (const 0) = const(0)
)(
     ((q d).succ) = uncurry(+) . split (q d) ([const(1) , const(0)].((0 ==) . (c d))?)
)|
%
\just\equiv{Reverse +-absorption (2.43) e considerando o funtor F f = id + f}
%
|(q  d) . in = [const(0) , uncurry(+) . split (q d)  ([const(1) , const(0)] . ((0 ==) . (c d))?)].F (split (qd) (split (rd) (cd)))|
\qed
\end{eqnarray*}

Já no caso de r \ d temos:

\begin{eqnarray*}
\start
|lcbr(
(r d) 0 = 0 )(
(r d) (n+1) = if x == 0 then 0 else 1 + (r d) n where x + (c d) n) 
|
%
\just\equiv{Def de x, Def de succ e 74}
%
|lcbr(
(r d) (const 0) n = const(0) n)(
(r d) (succ n) = if (c d) n == 0 then const(0) n else const(1) n + (r d) n)
|
%
\just\equiv{Regra1}
%
|lcbr(
(r d) (const 0) n = const(0) n)(
(r d) (succ n) = if (((0 ==) . (c d)) n) then const(0) n else const(1) n + (r d) n)
|
%
\just\equiv{84}
%
|lcbr(
(r d) (const 0) n = const(0) n)(
(r d) (succ n) = if (((0 ==) . (c d)) n) then const(0) n else (uncurry (+)) (const(1) n , (r d) n))
|
%
\just\equiv{76}
%
|lcbr(
(r d) (const 0) n = const(0) n)(
(r d) (succ n) = if (((0 ==) . (c d)) n) then const(0) n else (uncurry (+)) . (split(const(1)) ((r d))) n)
|
%
\just\equiv{72 e 78}
%
|lcbr(
     (r d) (const 0) n = const(0) n 
)(
     ((r d) . succ) n = ((0 ==) . (c d)) ==> const(0) , (uncurry (+)) . (split(const(1))  ((r d)) )n
)|
%
\just\equiv{30 e 71}
%
|lcbr(
     (r d) (const 0) = const(0) 
)(
     ((r d) . succ) = [0, (uncurry (+)) . (split (const(1))  ((r d)))] . ((0 ==) . (c d)) ?
)|
%
\just\equiv{Reverse +-absorption (2.43) e considerando o funtor F f = id + f}
%
|(r d) . in = [const(0),[const(0), (uncurry (+)) . (split (const(1)) ((r d)))] . ((0 ==) . (c d)) ?] . F (split (qd) (split (rd) (cd)))|
\qed
\end{eqnarray*}

Finalmente, para a função c d temos:

\begin{eqnarray*}
\start
|lcbr(
(c d) 0 = 0 )(
(c d) (n + 1) = if x == 0 then d else x - 1 where x = (c d) n)
|
%
\just\equiv{ Def de x e Def de succ }
%
|lcbr(
(c d) (const 0) n = const(d) n)(
(c d) (succ n) = if (c d) n == 0 then const(d) n else (c d) n - 1 n)
|
%
\just\equiv{84}
%
|lcbr(
(c d) (const 0) n = const(d) n )(
(c d) (succ n) = if ((0 ==) . (c d))n then const(d) n else (uncurry(-)) ((c d) n, const(1) n) )
|
%
\just\equiv{Regra1}
%
|lcbr(
(c d) (const 0) n = const(d) n)(
(c d) (succ n) = if ((0 ==) . (c d)) n then const(d) n else (uncurry(-)) ((c d)n, const(1) n))
|
%
\just\equiv{72, 76 e 78}
%
|lcbr(
(c d) (const 0) n = const(d) n)(
((c d) . succ) n = ( ((0 ==) . (c d)) ==> const(d) , (uncurry (-)) . (split ((c d)) (const(1)) ) )n)
|
%
\just\equiv{30 e 71}
%
|lcbr(
(c d) (const 0) = const(d)
)(
((c d) . succ) = [const(d), (uncurry(-)) . (split ((c d)) (const(1)))] . ((0 ==) . (c d))?)
|
%
\just\equiv{Reverse +-absorption (2.43) e considerando o funtor F f = id + f}
%
|(c d) . in = [const(d),[const(d), (uncurry(-)) . (split ((c d)) (const(1)))]((0 ==) . (c d))?].F (split (qd) (split (rd) (cd)))|
\qed
\end{eqnarray*}

De seguida utilizamos a generalização (3.95) pedida na Secção 3.17 da página 122, de \textit{PROGRAM DESIGN BY CALCULATION}

\begin{eqnarray*}
\start
|cases3(
     (q d) . in = h . F (split( (q d))(split ( (r d) )( (c d) ) ))
)(
     (r d) . in = k . F (split( (q d))(split ( (r d) )( (c d) ) ))
)(
     (c d) . in = l . F (split( (q d))(split ( (r d) )( (c d) )))
)|
%
\just\equiv{Definição de h, k e l}
%
|cases3(
     (q d) . in = [h1, h2] . F (split((q d))(split ((r d))((c d))))
) (
     (r d) . in = [k1, k2] . F (split( (q d))(split ( (r d) )( (c d) ) ))
) (
     (c d) . in = [l1 , l2] . F (split( (q d))(split ( (r d) )( (c d) ) ))
)|
%
\just\equiv{Substituindo $h_1, \ h_2, \ k_1,\ k_2,\ l_1 \ e \ l_2$ pelos valores encontrados em cima}
%
|cases3(
     (q d) . in = [const(0) , uncurry(+) . split ((q d))  ([const(1), const(0)].((0 ==) . (c d))?)] . F (split ((q d))(split((r d))((c d)))) 
)(
     (r d) . in = [const(0),[const(0), (uncurry (+)) . (split (const(1)) (r d))] . ((0 ==) . (c d)) ?] . F (split((q d))(split((r d))((c d))))
)(
     (c d) . in = [const(d),[const(d),(uncurry (-)) . (split (c d) (const(1)))] . ((0 ==) . (c d))?] . F (split((q d))(split ((r d))((c d))))
)|
%
\just\equiv{3.95 (52 aplicada a 3 casos)}
\end{eqnarray*}
$ \conj{q d}{\conj{r d}{c d}}= \cataNat{
     \conj{[\underline{0},\uncurry{+}.\conj{qd}{[\underline{1},\underline{0}].((0=).(cd))?}]}{
\conj{[\underline{0},[\underline{0},\uncurry{+}.\conj{\underline{1}}{rd}].((0=).(cd))?]}
     {[\underline{d},[\underline{d},\uncurry{-}.\conj{cd}{\underline{1}}].((0=).(cd))?]}}}
$

Após a aplicação desta regra reparamos que os splits do lado esquerdo da igualdade está a definição da $\emph{aux\ d}$ referida no enunciado.
\begin{eqnarray*}
\start
%
\just\equiv{28 aplicada a 3 casos}
\end{eqnarray*}

$\conj{q d}{\conj{r d}{c d}} = \cataNat{
     [
          \conj{\underline{0}}{\conj{\underline{0}}{\underline{d}}}{\conj{\uncurry{+}. \conj{q d}{[\underline{1},\underline{0}].((0=).(c\ d))?}}{
     \conj{[\underline{0},\uncurry{+}.\conj{\underline{1}}{r d}].((0=).(c  d))?} {[\underline{d},\uncurry{-}.\conj{c d}{\underline{1}}].((0=).(c d))?}}}]}$
\begin{eqnarray*}
\start
%
\just\equiv{denotando |split((q d))(split((r d))( (c d) ))| como gd' e convertendo para pointwise}
%
|cases3(
     gd' (0,(0,0)) = (0,(0,d)) 
)(
     gd' (q d,(r d, 0)) = (q d + 1, (0 , d)) 
)(
     gd' (q d, ( r d, c d + 1 ) ) = ( (q d + 0), (r d + 1, c d) )  
)|
\qed
\end{eqnarray*}

Falta agora apenas fazer se a escrita de $\emph{gd'}$ como a semântica de um ciclo for-loop.

\begin{spec}
aux d = for (gd') (0,(0,d)) where
    gd' (q, (r, 0)) = (q + 1,(0, d))
    gd' (q, (r, c + 1)) = (q, (r + 1, c))
\end{spec}

Ficando assim demonstrada que $\emph{aux\ d}$ é a mesma função que o ciclo-for:

\begin{spec}
loop d = for ((g d)) ((0,(0, d))) where
     g d (q, (r, 0)) = (q+1, (0, d))
     g d (q, (r, c+1)) = (q,(r+1, c))
\end{spec}

\subsection*{Problema 2}

\paragraph{}
Neste problema temos como objetivos:

\begin{itemize}
    \item Definir como catamorfismo de \LTree's a função both :: LTree Int |->| Int |><| Int dada de onde resulta \emph{(a,b) = both t} em que:
    \begin{itemize}
          \item a é o resultado mais favoravel à Alice, quando esta é a primeira a jogar, tendo em conta as jogadas do Bob e as suas;
          \item b é o resultado mais favoravel ao Bob, quando este é o primeiro a jogar, tendo em conta as jogadas da Alice e as suas.
    \end{itemize}
    \item Obter as funções recursivas (por recursividade mútua) $alice \ e \ bob \ : \  both = \conj{alice}{bob} $.
\end{itemize}

Decidimos primeiramente codificar |alice| e |bob| e posteriormente juntá-las num catamorfismo através das leis de recursividade mútua para obter |both|.

O seguinte diagrama corresponde ao diagrama genérico de um catamorfismo de árvores LTree:

\begin{center}
     \begin{eqnarray*}
          \xymatrix@@C=2cm@@R=2cm{
                LTree X \ar[d]_{|cataLTree g|}\ar@@/^2pc/[rr]^(0.45){out} & \cong &
                X + Y^2\ar@@/^2pc/[ll]^(0.579){in}
               \ar[d]^{id + f^2}\\
               X && X + Y^2 \ar[ll]^{[|g1|, |g2|]}
          }
     \end{eqnarray*}
\end{center}

Depois de feito o acerto dos tipos ficamos com o seguinte diagrama para o caso da |alice|:
\begin{center}
\begin{eqnarray*}
\xymatrix@@C=2cm@@R=2cm{
LTree A \ar[d]_{alice}\ar@@/^2pc/[rr]^(0.45){out} & \cong &
A + (LTree A)^2\ar@@/^2pc/[ll]^(0.579){in}
\ar[d]^{id + (bob |><| bob)}\\
A && A + (A |><| A) \ar[ll]^{[id, umax]}
}
\end{eqnarray*}
\end{center}

Por fim podemos definir a função da |alice| como:
\begin{code}
alice :: Ord c => LTree c -> c
alice = either id (umax . (bob >< bob)) . outLTree
\end{code}

No caso do |bob| o diagrama será:
\begin{center}
\begin{eqnarray*}
\xymatrix@@C=2cm@@R=2cm{
A^{|><|} \ar[d]_{bob}\ar@@/^2pc/[rr]^(0.45){out} & \cong &
A + A^2\ar@@/^2pc/[ll]^(0.575){in}
\ar[d]^{id + (alice |><| alice)}\\
A && A + (A |><| A) \ar[ll]^{[id, umin]}
}
\end{eqnarray*}
\end{center}

Portanto neste caso a função pode ser declarada da seguinte forma:
\begin{code}
bob :: Ord c => LTree c -> c
bob = either id (umin . (alice >< alice)) . outLTree
\end{code}

Para o caso do |both| teremos a seguinte demonstração:

\begin{eqnarray*}
\start
|cataNat(both)| = |split(alice)(bob)|
%
\just\equiv{45}
%
both . F |split(alice)(bob)| = |split(alice)(bob)| . in
%
\just\equiv{9}
%
both . F |split(alice)(bob)| = |split(alice . in)(bob . in)|
%
\just\equiv{6}
%
|lcbr(p1. both . F (split(alice)(bob)) = alice.in
)(
     p2 . both . F (split(alice)(bob)) = bob.in
)|
%
\just\equiv{52}
%
|cataNat(split(p1 . both)(p2 . both)) = split(alice)(bob)|
\qed
\end{eqnarray*}

Que nos conduziu à seguinte solução:

\begin{code}
both :: Ord d => LTree d -> (d, d)
both = cataLTree (either (split id id) (split  (umax . (p2 >< p2) ) (umin . (p1 >< p1))))
\end{code}


\subsection*{Problema 3}
\paragraph{}
Este problema é constituido por três partes:
\begin{enumerate}
     \item Desenvolver a biblioteca \emph{pointfree} para o tipo |LTree3|.
     \item Definir os genes |g1| e |g2| do hilomorfismo |sierpinski|.
     \item Correr a função teste = desenha (sierpinski (base,3)) verificando a correta geração dos triângulos.
\end{enumerate}

Catamorfismo:
\begin{eqnarray*}
\xymatrix@@C=2cm@@R=2cm{
LTree3\ar[d]_{folhasSierp}\ar@@/^2pc/[rr]^(0.45){out} & \cong & Tri + LTree3^3 \ar@@/^2pc/[ll]^(0.575){in}\ar[d]^{id + folhasSierp^3}\\
Tri^* && Tri + Tri^3\ar[ll]^{id + conc . (conc |><| id)}
}
\end{eqnarray*}

Anamorfismo:
\begin{eqnarray*}
\xymatrix@@C=2cm@@R=2cm{
LTree3\ar@@/^2pc/[rr]^(0.45){out} & \cong & Tri + LTree3^3 \ar@@/^2pc/[ll]^(0.575){in}\\
Tri |><| \N_0\ar@@/^2pc/[rr]^(0.45){|g2|}\ar[r]^{out} \ar[u]^{geraSierp} & Tri |><| 1 + Tri |><| \N_0 \ar[r]^{id + |split (split (f) (g)) (h)|} & Tri + (Tri|><|\N_0)^3 \ar[u]_{id + geraSierp^3}
}
\end{eqnarray*}

Hilomorfismo:
\begin{eqnarray*}
\xymatrix@@C=2cm@@R=2cm{
Tri^* && Tri + Tri^3\ar[ll]_{id + conc . (conc |><| id)}\\
LTree3\ar[u]^{folhasSierp}\ar@@/^2pc/[rr]^(0.45){out} & \cong & Tri + LTree3^3\ar[u]_{id + folhasSierp^3} \ar@@/^2pc/[ll]^(0.575){in}\\
Tri |><| \N_0\ar@@/^2pc/[rr]^(0.45){|g2|}\ar[r]^{out} \ar[u]^{geraSierp} & Tri |><| 1 + Tri |><| \N_0 \ar[r]^{id + |split (split (f) (g)) (h)|} & Tri + (Tri|><|\N_0)^3 \ar[u]_{id + geraSierp^3}
}
\end{eqnarray*}

Tendo por base os diagramas apresentados, podemos concluir que a biblioteca |LTree3| será da seguinte forma:
\begin{code}

inLTree3 = either Tri (uncurry (uncurry Nodo))

outLTree3 (Tri t) = i1 t
outLTree3 (Nodo a b c) =  i2 ((a,b), c)

baseLTree3 f g = f -|- ((g >< g) >< g)

recLTree3 f = baseLTree3 id f 

cataLTree3 f = f . (recLTree3 (cataLTree3 f)) . outLTree3

anaLTree3 f = inLTree3 . (recLTree3 (anaLTree3 f)) . f 

hyloLTree3 f g = cataLTree3 . anaLTree3
\end{code}
Os Genes do hilomorfismo |sierpinski| serão:
\begin{code}
g1 = either singl (conc . (conc >< id))        

g2 (t,0) = i1 t 
g2 (((x,y),s),n+1) = i2((t1,t2),t3) where
     t1 = (((x,y), div s 2), n)
     t2 = (((x + l,y), l), n) where l = div s 2
     t3 = (((x, y + l), l), n) where l = div s 2
\end{code}

Se corrermos a função teste com as soluções que apresentamos, para a biblioteca e para os genes, esta irá gerar os triângulos de |sierpinski|.

\subsection*{Problema 4}

\paragraph{}
Para este útimo problema temos, como tarefas: 
\begin{enumerate}
     \item Finalizar a definição do catamorfismo de listas |propagate|.
     \item Finalizar a definição do catamorfismo de listas |propagate3| e da função |bflip3|.
\end{enumerate}

\paragraph{}
Começamos pela função |propagate|:

Abaixo representamos o diagrama da função:

\begin{eqnarray*}
\xymatrix@@C=2cm@@R=2cm{
    A^* \ar[d]_{propagate} \ar@@/^2pc/[rr]^(0.45){out} & \cong & 1+A|><|A^* \ar@@/^2pc/[ll]^(0.575){in} \ar[d]^{id+id|><|propagate}\\
    B^* && 1+A|><|(T_B)^* \ar@@{-->}[ll]^{g} \ar[d]^{id+f|><|id} \\
     && 1+ T_B |><| (T_B)^* \ar@@{-->}[ull]^{return.nil\lfloor const \rfloor}
}
\end{eqnarray*}

Podemos definir a função como:

\begin{code}
propagate :: Monad m => (t -> m a) -> [t] -> m [a]
propagate f = cataList (g f) where
   g f = either (return . nil) (g2 f) 
   g2 f (a,b) = do { tail <- b; head <- f a; return (head:tail)}

\end{code}

Obtemos então a função a qual a probabilidade da resposta certa é baixa e o espectro de respostas erradas é extenso.

No caso da função |propagate3| desenvolvemos o seguinte diagrama:

\begin{eqnarray*}
\xymatrix@@C=2cm@@R=2cm{
    A^* \ar[d]_{propagate3} \ar@@/^2pc/[rr]^(0.45){out} & \cong & 1+A|><|A^* \ar@@/^2pc/[ll]^(0.575){in} \ar[d]^{id+id|><|propagate3}\\
    B^* && 1+A|><|(T_B)^* \ar@@{-->}[ll]^{g} \ar[d]^{id+v3.f(id,id,id)|><|id} \\
     && 1+ T_B |><| (T_B)^* \ar@@{-->}[ull]^{return.nil\lfloor const \rfloor}
}
\end{eqnarray*}

O código ficará da seguinte forma:

\begin{code}
propagate3 :: (Monad m) => (Bit3 -> m Bit3) -> [Bit] -> m [Bit]
propagate3 f = cataList (g f) where
   g f = either (return .nil) (g2 f)
   g2 f (a,b) = do { tail <- b; head <- f (a,a,a); return ((v3 (head)): tail)}
\end{code}

A função |bflip3|, a programar a seguir, estende |bflip| aos três bits da entrada.

Tendo o seguinte diagrama:

\begin{eqnarray*}
     \xymatrix@@C=1cm@@R=2cm{
         Bit^*
         \ar[d]_{|cataList gf |}
         \ar@@/^1.5pc/[rr]^(0.5){outList} 
     & 
          \cong
     &
         1 + Bit |><| Bit^*
                \ar[d]^{|id + id >< (cataList gf )|}
                \ar@@/^1.5pc/[ll]^(0.5){inList}
     \\
          D(Bit^*) && 1 + Bit |><| D(Bit^*)
          \ar[ll]
     }
\end{eqnarray*}

Ou seja, 

\begin{code}
bflip3 :: Bit3 -> Dist Bit3
bflip3(a,b,c) = do { na <- bflip a; nb <- bflip b; nc <- bflip c; return (na,nb,nc) } 

\end{code}

\paragraph{}
Por fim, obtemos a função mais eficaz, a qual a probabilidade da resposta certa é bem maior e o espectro de respostas erradas reduzido.

%----------------- Índice remissivo (exige makeindex) -------------------------%

\printindex

%----------------- Bibliografia (exige bibtex) --------------------------------%

\bibliographystyle{plain}
\bibliography{cp2122t}

%----------------- Fim do documento -------------------------------------------%
\end{document}