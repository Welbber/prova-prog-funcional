module Questao3 (pilhaVazia, pushPilha, popPilha, topPilha) where

{-
- Implementar uma pilha e seus algoritmos em Haskell. Use a lista de 
- Haskell como estrutura sobrejacente e operações que não sejam acesso 
- pelo índice.
-}

pilhaVazia [] = True
pilhaVazia xs = False

pushPilha xs elemento = elemento : xs

popPilha [] = ([], Nothing)
popPilha (x:xs) = (xs, Just x)

topPilha [] = Nothing
topPilha (x:xs) = Just x

