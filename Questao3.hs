module Questao3 (Pilha, pilhaVazia, pushPilha, popPilha, topPilha) where

type Pilha a = [a]

{-
- Implementar uma pilha e seus algoritmos em Haskell. Use a lista de 
- Haskell como estrutura sobrejacente e operações que não sejam acesso 
- pelo índice.
-}

pilhaVazia :: Pilha a -> Bool
pilhaVazia [] = True
pilhaVazia xs = False

pushPilha :: Pilha a -> a -> Pilha a
pushPilha xs elemento = elemento : xs

popPilha :: Pilha a -> (Pilha a, Maybe a)
popPilha [] = ([], Nothing)
popPilha (x:xs) = (xs, Just x)

topPilha :: Pilha a -> Maybe a
topPilha [] = Nothing
topPilha (x:xs) = Just x

