module Teste (testarFuncao) where

testarFuncao funcao casosDeTeste = mapM_ testarUmCaso (zip [1..] casosDeTeste)
    where
        testarUmCaso (i, (entrada, esperado)) =
            let resultado = funcao entrada
            in if resultado == esperado
                then putStrLn $ "TESTE " ++ show i ++ ": ACEITO"
                else putStrLn $ "TESTE " ++ show i ++ ": ERRADO, ESPERAVA-SE " ++ show esperado ++ " MAS RECEBEU " ++ show resultado