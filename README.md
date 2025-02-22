# 🌿 Análise de Diversidade Ecológica em R

Este repositório contém um script em **R** para a análise de diversidade ecológica, utilizando **índices ecológicos** e **testes estatísticos**.
O script calcula e compara a diversidade de espécies em diferentes regiões, com base em dados de abundância de espécies.

---

## 📂 Estrutura do Repositório

📜 **Teste de Hutcheson.R**: Script principal que realiza os cálculos de diversidade e testes estatísticos.

📁 **Data/**: Pasta com os arquivos de dados:
   - `Teste de Shennon.txt`
   - `Teste de Hutcheson.xlsx`

---

## 📊 Testes e Índices de Diversidade

### 1️⃣ **Índice de Shannon**
📌 Mede a diversidade de espécies, considerando:
- **Riqueza** (quantidade de espécies)
- **Equitabilidade** (uniformidade na distribuição dos indivíduos entre as espécies)

Quanto maior o valor, maior a diversidade!

### 2️⃣ **Índice de Pielou**
📌 Mede a equitabilidade das espécies. Valores próximos de **1** indicam maior uniformidade entre as espécies.

### 3️⃣ **Índice de Simpson**
📌 Mede a **dominância das espécies mais abundantes**.
- Valores menores indicam maior diversidade, pois nenhuma espécie domina a comunidade.

### 4️⃣ **Diversidade de Odum**
📌 Relaciona o **número de espécies** com o **número total de indivíduos**.

### 5️⃣ **Teste t de Hutcheson**
📌 Compara a **diversidade de Shannon** entre **duas amostras** (ex: duas regiões) para verificar se há diferenças significativas na diversidade.

---

## 📝 Como Usar o Script

### 🔹 1. Instale as bibliotecas necessárias:
```
install.packages(c("openxlsx", "vegan", "ecolTest"))
```

### 🔹 2. Prepare os dados:
Coloque os arquivos de dados na pasta **`Dados/`**.

### 🔹 3. Execute o script:
Rode o script **Teste de Hutcheson.R** no R:
```r
source("Teste de Hutcheson.R")
```

📌 O script calculará os **índices de diversidade** e realizará o **teste de Hutcheson**, exibindo os resultados no console.

---

## 📄 Resultados Obtidos
Após a execução, o script exibirá:

📊 **Índice de Shannon**: Mede a diversidade das espécies.

📊 **Índice de Pielou**: Indica a equitabilidade entre as espécies.

📊 **Índice de Simpson**: Mostra a dominância das espécies mais abundantes.

📊 **Diversidade de Odum**: Relaciona a riqueza de espécies com o total de indivíduos.

📊 **Teste t de Hutcheson**: Compara duas amostras para verificar diferenças significativas na diversidade.

---

## 📚 Referências
📌 **vegan**: Pacote R para análise de ecologia de comunidades.

📌 **ecolTest**: Pacote R para testes estatísticos ecológicos.

---

## 🤝 Contribuições
Contribuições são **bem-vindas**! 🎉

🔹 Sinta-se à vontade para **abrir uma issue** ou **enviar um pull request**.

Esperamos que este script seja útil para suas análises de diversidade ecológica! 🌱✨

---

