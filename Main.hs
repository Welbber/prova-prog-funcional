module Main where

import Questao1
import Teste

main :: IO ()

main = do
    let casosDeTesteQuestao1 = [                                                        -- Casos de testes questão 1
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
    
    testarFuncao (uncurry encontraParProximo) casosDeTesteQuestao1 -- Executa casos de teste questão 1