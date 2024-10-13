module Questao3 (Pilha, pilhaVazia, pushPilha, popPilha, topPilha) where

type Pilha a = [a]

{-
- Implementar uma pilha e seus algoritmos em Haskell. Use a lista de 
- Haskell como estrutura sobrejacente e operações que não sejam acesso 
- pelo índice.
-}

{-
- Explicação do desenvolvimento:
- Para essa questão implementei as principais funcionalidades de uma pilha,
- sendo: verificar se ela está vazia, adicionar ao topo da pilha, remover
- do topo da pilha e verificar o valor que está no topo da pilha sem remove-lo.
- Pensei em usar data para realizar criação da pilha, mas como no enunciado fala
- que devemos considerar a pilha como um array, então simplifiquei criando as funções
- dessa forma onde elas recebem a pilha por parâmetro. Considerando o primeiro elemento
- do array como o topo da pilha 
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
