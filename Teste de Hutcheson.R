# Carrega as bibliotecas necessárias
library(openxlsx)  # Manipulação de arquivos Excel
library(vegan)     # Cálculos de diversidade ecológica
library(ecolTest)  # Testes ecológicos

# Lê os dados do arquivo "Teste de Shennon.txt" e armazena no data frame testeshennon
testeshennon <- read.table("Dados/Teste de Shennon.txt", header = TRUE)

# Calcula o índice de diversidade de Shannon para os dados em testeshennon
shannon <- diversity(testeshennon)

# Exibe o índice de Shannon
print(shannon)

# Calcula o índice de Pielou (equidade) usando o índice de Shannon e o número de espécies
Pielou <- shannon / log(specnumber(testeshennon))

# Exibe o índice de Pielou
print(Pielou)

# Calcula o índice de Simpson para os dados em testeshennon
Simpson <- diversity(testeshennon, "simpson")

# Exibe o índice de Simpson
print(Simpson)

# Calcula a diversidade de Odum para a região Leste
odunleste <- 18 / log1p(645)

# Calcula a diversidade de Odum para a região Oeste
odunoeste <- 15 / log1p(438)

# Lê os dados do arquivo "Teste de Hutcheson.xlsx" na planilha 3 e armazena no data frame testehut
testehut <- read.xlsx("Dados/Teste de Hutcheson.xlsx", sheet = 3, colNames = TRUE)

# Realiza o teste t de Hutcheson para comparar a diversidade de Shannon entre duas amostras (Leste e Oeste)
Hutcheson_t_test(x = testehut$Leste,
                 y = testehut$Oeste,
                 shannon.base = 10)