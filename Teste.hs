module Teste (testarFuncao) where


{-
- Durante desenvolvimento dos testes da questão estava criando varias lets para armazenar
- os valores dos testes e lets para os resultados esperados. Foi quando me dei conta que
- havia muito código duplicado, então pensei em criar essa função que recebe uma lista
- de tuplas, executa uma funcão com os valores recebidos na tupla e compara com resultado
- obtido pela funcao. 
-}

testarFuncao funcao casosDeTeste = mapM_ testarUmCaso (zip [1..] casosDeTeste)
    where
        testarUmCaso (i, (entrada, esperado)) =
            let resultado = funcao entrada
            in if resultado == esperado
                then putStrLn $ "TESTE " ++ show i ++ ": ACEITO"
                else putStrLn $ "TESTE " ++ show i ++ ": ERRADO, ESPERAVA-SE " ++ show esperado ++ " MAS RECEBEU " ++ show resultado