module Questao2 (encontraFloorECeil) where

{-
- Encontrar floor e ceil de um número x dentro de um array a. O número x pode não estar no array a. 
- O floor(x) é o número do array a que é menor que x e que mais se aproxima de x (pode existir mais
- de um número menor que x, o floor é o maior deles). Dualmente, o ceil(x)  é o número do array a
- que é maior que x e que mais se aproxima de x (pode existir mais de um número maior do que x, o 
- ceil é o menor deles).
-}

{- 
- Explicação do desenvolvimento:
- Essa questão foi bem mais fácil que a outra, tive algumas dúvidas no desenvolvimento como por exemplo 
- se x estiver no array a o valor do floor e ceil é o próprio x? Não achei muito sentido nisso então 
- considerei que seria o menor e maior número mais próximos dele. A segunda dúvida era caso não houvesse
- um menor ou maior o que retornar? Para facilitar os testes eu retorno valor 0 quando não é encontrado um 
- menor ou maior que x
-}

encontraFloorECeil [] _ = (0, 0)

encontraFloorECeil xs n = (maiorLista (filter (< n) xs), menorLista (filter (> n) xs))
  where 
    maiorLista [] = 0
    maiorLista [x] = x
    maiorLista (x:xs) = max x (maiorLista xs)
    menorLista [] = 0
    menorLista [x] = x
    menorLista (x:xs) = min x (menorLista xs)
    