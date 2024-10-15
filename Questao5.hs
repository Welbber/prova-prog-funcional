module Questao5 (Aluno(..), calculaMediaCRA, agrupaAlunoPorCRA) where

{-
- Um aluno é representado como uma estrutura contando matrícula, um primeiro nome, um sobrenome, período de ingresso e CRA.
- Implemente a estrutura que representa um aluno
-
- Implemente uma função que calcula a média dos CRAs dos alunos (dispostos em uma lista) usando o operador de foldr 
- (você não pode usar map)
-
- Implemente uma função que realiza o groupBy dos alunos por CRA. Ou seja, dada uma lista de alunos, a função retorna uma 
- lista de pares (cra, [Aluno]), agrupando alunos com um mesmo CRA em pares cujo primeiro elemento é o CRA e o segundo é uma 
- lista de alunos.
-}
 {-
 - Explicação do desenvolvimento:
 - Essa questão foi a que mais tive dificuldades por não ter estudado como trabalhar com estrutura de dados data
 - Tive diversos erros durante desenvolvimento. Para criar função calcularMedia tive que revisar os materias 
 - pois sabia utilizar o foldr para um array de um tipo primitivo, ou no caso utilizar o map antes. Então vi um exemplo
 - que explicava sobre usar lambda no foldr. Então quando vi isso consegui criar função auxiliar para realizar soma dos CRAs.
 - Para realizar o agruplamento não consegui implementar uma maneira mais eficiente (pensei em usar a lib do Map para isso)
 - mas não sei se teria problemas em usar ela, então implementei com força bruta, interando os alunos da lista recebecida
 - e percorrendo uma lista auxiliar para agrupar o aluno caso ele já esteja em uma tupla da lista ou criando um novo indice da lista
 -}

data Aluno = Aluno { matricula :: Int, primeiroNome :: String, sobrenome :: String, periodoIngresso :: String, cra :: Float } deriving (Show, Eq)

calculaMediaCRA [] = 0
calculaMediaCRA alunos = somaCRA / fromIntegral (length alunos)
    where
        somaCRA = foldr (\aluno soma -> cra aluno + soma) 0 alunos

agrupaAlunoPorCRA [] = []  
agrupaAlunoPorCRA (x:xs) = setAluno x (agrupaAlunoPorCRA xs)
    where 
        setAluno aluno [] = [(cra aluno, [aluno])]  
        setAluno aluno ((a, b):xs)
            | a == cra aluno = (a, b ++ [aluno]) : xs 
            | otherwise = (a, b) : setAluno aluno xs 