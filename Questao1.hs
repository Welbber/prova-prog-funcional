module Questao1 (encontraParProximo) where
{-
- Dado um array ordenado e um número x, encontre um par (a,b) de números pertencentes 
- ao array tal que (a + b) se aproxime o máximo possível de x.
-}

{- 
- Explicação do desenvolvimento:
- Não achei que fazia sentido listas vazias ou com unico elemento retornarem um par, então lancei mensagem informativa a respeito.
- Para desenvolver essa função pensei em criar um laço aninhado percorrendo a lista sendo duas vezes.
- Tendo duas podas na arvore de recusão onde validada se encontrei  valores que produto de sua soma fossem iguais a n. 
- A segunda poda é percorrer somente elementos i> no laço interno (claro que ainda assim nossa complexidade é O(n²))
- Pensei em aplicar soluções como ordenação e após isso realizar busca binarias modificada para considerar os "vizinhos"
- do elemento encontrado na lista para realizar operação de comparação. Porém achei complicado para caso em questão.
-}

encontraParProximo [] _ = "Lista vazia"
encontraParProximo [x] _ = "Lista necessita de ter mais de um item"

encontraParProximo (a:b:xs) n = percorreLista (a:b:xs) (a, b)
    where 
        percorreLista (x:xs) (a, b)
            | (a + b) == n || xs == [] = (show a) ++ " and " ++ (show b)
            | otherwise = percorreLista xs (encontraParMaisProximoParaPrimeiro xs (a, b) x)

        encontraParMaisProximoParaPrimeiro [] (a, b) _ = (a, b)
        encontraParMaisProximoParaPrimeiro (x:xs) (a, b) i
            | abs(n - (i + x)) < abs(n - (a + b)) = encontraParMaisProximoParaPrimeiro xs (i, x) i
            | otherwise = encontraParMaisProximoParaPrimeiro xs (a, b) i