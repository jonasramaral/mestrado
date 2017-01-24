# Mestrado em Fisica do Solo
# Caracterizacao fisico hidrica dos solos da bacia do Marinheiro - Sete Lagoas - MG
# Calculo do Diametro medio geometrico (DMG)
# Autor: Jonas Rodrigo do Amaral <jonasramaral@gmail.com>
# Data: Janeiro de 2017

# Define o nome do arquivo com o resultado de analise de estabilidade de agregados
arquivo_peneiras = "estabilidade_agregados_fracoes_peneiras_profundidade2.csv"

# importar os dados
# 1. salvar os dados no formato csv, sem mesclas, acentos e espaços)
# 2. salvar na pasta do projeto, no caso "caracterizacao fisico hidrica"
# 3. utilizar a funcao "read.table", especificando qual o formato do arquivo:
# se o arquivo possui cabecalho (ou seja, se considera a primeira linha como dados ou nome de colunas)
# e qual caracter:
# -separa as colunas, por ex. sep = ";" ou  sep = ","
# -separa os decimais, por ex. dec = "," ou dec = "."
# 4. a funcao read.table retorna o arquivo lido na forma de tabela
fracoes = read.table(arquivo_peneiras, sep = ";", dec = ",", header = TRUE)

###
### R trabalha por colunas, ou seja, todas as operacoes (soma, subtracao, divisao, multiplicacao)
### feitas em  colunas sao aplicadas linha a linha e o resultado e' uma coluna.
### Todas as colunas "devem" ter a mesma quantidade de linhas, caso contrario as linhas faltantes
### serao preencidas com valores nulos no momento da operacao e o resultado tera valores nulos
### nos mesmo lugares.
###

# Para acessar uma celula especifica utiliza-se: variavel_tabela[numero_linha, numero_coluna],
# variavel_tabela: variavel que contem uma tabela (read.table gera uma tabela)
# numero_linha: numero da linha
# numero_coluna: numero da coluna

# define as repeticoes da estabilidade de agregados do perfil
repeticao1 = fracoes[1:6, ] # linhas de 1 a 6 e todas as colunas
repeticao2 = fracoes[7:12, ] # linhas de 7 a 12 e todas as colunas
repeticao3 = fracoes[13:18, ] # linhas de 13 a 18 e todas as colunas

# Calcula para todas as linhas a relacao entre a massa percentual de solo seco com o diametro medio
# Para acessar a coluna atraves do nome utiliza-se variavel_tabela$nome_coluna
# variavel_tabela: variavel que contem uma tabela
# nome_coluna: nome da coluna
# Como por ex. repeticao2$DIAMETRO_MEDIO
#
# Para acessar a coluna atraves do numero utiliza-se variavel_tabela[, numero_coluna],
# variavel_tabela: variavel que contem uma tabela
# numero_coluna: numero da coluna
# Como por ex. repeticao1[, 3]
relacao_massa_diametro1 = repeticao1[, 7] * log10(repeticao1[, 3])
relacao_massa_diametro2 = repeticao2$PERCENTUAL_MASSA_SS * log10(repeticao2$DIAMETRO_MEDIO)
relacao_massa_diametro3 = repeticao3$PERCENTUAL_MASSA_SS * log10(repeticao3$DIAMETRO_MEDIO)

# Calcula o DMG para cada repeticao do perfil
DMG1 = 10^(sum(relacao_massa_diametro1)/100)
DMG2 = 10^(sum(relacao_massa_diametro2)/100)
DMG3 = 10^(sum(relacao_massa_diametro3)/100)

# Calcula a media aritmetica dos DMG
linha_dmg = c(DMG1, DMG2, DMG3) # concatena todos os DMG em uma linha
media_dmg = mean(linha_dmg) # media dos elementos da linha (funcao so recebe um argumento)

print(vetor_dmg)
print(media_dmg)

# Exporta os dados
arquivo_saida_dmg = "dmg_perfil.csv"
write.table(linha_dmg, arquivo_saida_dmg, sep = ";", dec = ",")
