# Mestrado em Fisica do Solo
# Caracterizacao fisico hidrica dos solos da bacia do Marinheiro - Sete Lagoas - MG
# Correlacao granulometria com permeabilidade
# Autor: Jonas Rodrigo do Amaral <jonasramaral@gmail.com>
# Data: Janeiro de 2017

# Instalar as bibliotecas utilizadas (apenas a primeira vez)

# Carregar as bibliotecas utilizadas

# importar os dados
# 1. salvar os dados no formato csv, sem mesclas, acentos e espaços)
# 2. salvar na pasta do projeto, no caso "caracterizacao fisico hidrica"
# 3. utilizar a funcao "read.table", especificando qual o formato do arquivo:
# se o arquivo possui cabecalho (ou seja, se considera a primeira linha como dados ou nome de colunas)
# e qual caracter:
# -separa as colunas, por ex. sep = ";" ou  sep = ","
# -separa os decimais, por ex. dec = "," ou dec = "."
# 4. a funcao read.table retorna o arquivo lido na forma de tabela


###
### R trabalha por colunas, ou seja, todas as operacoes (soma, subtracao, divisao, multiplicacao)
### feitas em  colunas sao aplicadas linha a linha e o resultado e' uma coluna.
### Todas as colunas "devem" ter a mesma quantidade de linhas, caso contrario as linhas faltantes
### serao preencidas com valores nulos no momento da operacao e o resultado tera valores nulos
### nos mesmo lugares.
###

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


# tratar os dados

# analise estatistica

# correlacao de todas as variaveis com a condutividade hidraulica saturada (Ks);
correlacao = cor(var1, ks)

# Gera o grafico de dispersao
plot(var1, ks)

# correlacao de todas as variaveis com o Diametro medio geometrico (DMG);
# correlacao de todas as variaveis com a Capacidade de agua disponivel (CAD).


# significancia das correlacoes acima;
# variancia das correlacoes acima.