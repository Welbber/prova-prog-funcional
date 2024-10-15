module Main where

import Questao1
import Questao2
import Questao3
import Questao4
import Questao5
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
    testarFuncao (uncurry encontraFloorECeil) casosDeTesteQuestao2 -- Executa casos de teste questão 2

    putStrLn "=-=-=-=-==-=-=-=-= TESTES QUESTÃO 3 =-=-=-=-==-=-=-=-="
    
    putStrLn "=-=-= Teste Pilha Vazia =-=-="
    testarFuncao  pilhaVazia [([], True), ([1, 2, 3], False)]
    
    putStrLn "=-=-= Teste Push pilha =-=-="
    testarFuncao (uncurry pushPilha) [(([1], 2), [2, 1]), (([], 1), [1])]
    
    putStrLn "=-=-= Teste Top pilha =-=-="
    testarFuncao topPilha [([1], Just 1), ([2, 2, 3, 45], Just 2), ([], Nothing)]

    putStrLn "=-=-= Teste Pop pilha =-=-="
    testarFuncao popPilha [([1], ([], Just 1)), ([2, 3, 4], ([3, 4], Just 2)),([], ([], Nothing))]

    putStrLn "=-=-=-=-==-=-=-=-= TESTES QUESTÃO 4 =-=-=-=-==-=-=-=-="

    putStrLn "=-=-= Teste Fila Vazia =-=-="
    testarFuncao filaVazia [([], True), ([1, 2, 3], False)]
    
    putStrLn "=-=-= Teste Enqueue fila =-=-="
    testarFuncao (uncurry enqueueFila) [(([1], 2), [1, 2]), (([], 1), [1])]
    
    putStrLn "=-=-= Teste Front fila =-=-="
    testarFuncao frontFila [([1], Just 1), ([2, 2, 3, 45], Just 2), ([], Nothing)]
    
    putStrLn "=-=-= Teste Dequeue fila =-=-="
    testarFuncao dequeueFila [([1], ([], Just 1)), ([2, 3, 4], ([3, 4], Just 2)), ([], ([], Nothing))]

    putStrLn "=-=-=-=-==-=-=-=-= TESTES QUESTÃO 5 =-=-=-=-==-=-=-=-="
    
    let aluno1 = Aluno { matricula = 123, primeiroNome = "João", sobrenome = "Silva", periodoIngresso = "2018.1", cra = 8.5 }
    let aluno2 = Aluno { matricula = 456, primeiroNome = "Maria", sobrenome = "Oliveira", periodoIngresso = "2019.2", cra = 9.0 }
    let aluno3 = Aluno { matricula = 789, primeiroNome = "Ana", sobrenome = "Santos", periodoIngresso = "2020.1", cra = 7.8 }
    let aluno4 = Aluno { matricula = 321, primeiroNome = "Carlos", sobrenome = "Pereira", periodoIngresso = "2017.1", cra = 3.9 }
    let aluno5 = Aluno { matricula = 654, primeiroNome = "Paulo", sobrenome = "Costa", periodoIngresso = "2021.2", cra = 7.2 }
    
    let alunos1 = [aluno1, aluno2, aluno3]  
    let alunos2 = [aluno1]                 
    let alunos3 = []                       
    
    testarFuncao calculaMediaCRA [(alunos1, 8.433333), (alunos2, 8.5), (alunos3, 0.0)]
    
    let aluno6 = Aluno { matricula = 111, primeiroNome = "Maria", sobrenome = "Jose", periodoIngresso = "2021.2", cra = 7.2 }

    let alunos4 = [aluno1, aluno2, aluno3, aluno4, aluno5, aluno6]
    
    let casosDeTeste = [
            (alunos4, [(7.2, [aluno6, aluno5]), (3.9, [aluno4]), (7.8, [aluno3]), (9.0, [aluno2]), (8.5, [aluno1])]),   -- Teste 1: Todos os alunos
            (alunos2, [(8.5, [aluno1])]),                                                                               -- Teste 2: Apenas um aluno
            (alunos3, [])                                                                                               -- Teste 3: Lista vazia
            ]

    putStrLn "=-=-= Teste agrupamento Alunos pelo CRA =-=-="
    testarFuncao agrupaAlunoPorCRA casosDeTeste