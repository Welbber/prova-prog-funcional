module Main where

import Questao1
import Questao2
import Teste

main :: IO ()

main = do
    let casosDeTesteQuestao1 = [                                                -- Casos de testes questão 1
            (([], 10), "Lista vazia"),                                          -- Caso 1: Lista vazia
            (([5], 10), "Lista necessita de ter mais de um item"),              -- Caso 2: Lista com um único elemento
            (([5, 10], 10), "5 and 10"),                                        -- Caso 3: Lista com dois elemento
            (([1, 2, 4], 6), "2 and 4"),                                        -- Caso 4: Lista com tres itens
            (([5, 5, 5, 5], 10), "5 and 5"),                                    -- Caso 5: Lista com valores iguais
            (([-10, -5, 0, 5, 10], 0), "-10 and 10"),                           -- Caso 6: Lista com valores negativos
            (([-3, 1, 4, -1, -4, 2], 1), "-3 and 4"),                           -- Caso 7: Lista com valores mistos
            (([10, 22, 28, 29, 30, 40], 54), "22 and 30"),                      -- Caso 8: Exemplo enunciado
            (([1, 3, 4, 7, 10], 15), "4 and 10"),                               -- Caso 9: Exemplo enunciado
            (([-20, -15, -5, 0, 7, 12, 25, 30, 50, 70, 90], 45), "-5 and 50"),  -- Caso 10: Teste mais complexo
            (([-50, -30, -10, 0, 10, 20, 40, 60], -25), "-50 and 20")           -- Caso 11: Teste número negativo
            ]
    putStrLn "=-=-=-=-==-=-=-=-= TESTES QUESTÃO 1 =-=-=-=-==-=-=-=-="
    testarFuncao (uncurry encontraParProximo) casosDeTesteQuestao1 -- Executa casos de teste questão 1
        
    let casosDeTesteQuestao2 = [
            (([], 5), (0, 0)),                       -- Caso 1: Lista vazia
            (([10, 20, 30], 5), (0,  10)),           -- Caso 2: n é menor que todos os elementos da lista
            (([10, 20, 30], 35), (30, 0)),           -- Caso 3: n é maior que todos os elementos da lista
            (([1, 2, 4, 6, 8, 10], 5), ( 4,  6)),    -- Caso 4: n está no meio dos valores da lista
            (([1, 2, 4, 6, 8, 10], 6), ( 4,  8)),    -- Caso 5: n está exatamente na lista
            (([-10, -5, 0, 5, 10], -7), (-10, -5)),  -- Caso 6: Lista com valores negativos e n negativo
            (([10], 5), (0, 10)),                    -- Caso 7: Lista com um único elemento (menor que n)
            (([10], 15), (10, 0)),                   -- Caso 8: Lista com um único elemento (maior que n)
            (([-20, -10, -5, 0, 5], 6), (5, 0)),     -- Caso 9: Lista com valores negativos e n maior que todos os valores
            (([3, 7, 14, 25, 33, 45], 20), (14, 25)) -- Caso 10: n está no meio com lista de valores mistos
            ]
    putStrLn "=-=-=-=-==-=-=-=-= TESTES QUESTÃO 2 =-=-=-=-==-=-=-=-="
    testarFuncao (uncurry encontraFloorECeil) casosDeTesteQuestao2 -- Executa casos de teste questão 1