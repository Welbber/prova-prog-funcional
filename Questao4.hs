module Questao4 (Fila, filaVazia, enqueueFila, dequeueFila, frontFila) where

type Fila a = [a]

{-
-Implementar uma Fila e seus algoritmos em Haskell. Use a lista de 
- Haskell como estrutura sobrejacente e operações que não sejam acesso 
- pelo índice.
-}

{-
- Explicação do desenvolvimento:
- Pra essa implantação foi basicamente replicar o que foi feito na pilha
- e alterar para as regras da estrutura de fila. Considerando o primeiro
- elemento como inicio da fila (ou seja o primeiro que chegou sera primeiro)
- elemento da lista. E o último elemento que chegou será o último elemento da
- lista.
-}

filaVazia :: Fila a -> Bool
filaVazia [] = True
filaVazia xs = False

enqueueFila :: Fila a -> a -> Fila a
enqueueFila xs elemento = xs ++ [elemento]

dequeueFila :: Fila a -> (Fila a, Maybe a)
dequeueFila [] = ([], Nothing)
dequeueFila (x:xs) = (xs, Just x)

frontFila :: Fila a -> Maybe a
frontFila [] = Nothing
frontFila (x:xs) = Just x

