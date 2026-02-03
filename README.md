# 🏥 **Painel SABEIS -- PCDT**

Painel interativo para visualização e análise de dados relacionados ao
**Protocolo Clínico e Diretrizes Terapêuticas (PCDT)**. A aplicação foi
desenvolvida em **R Shiny** com foco em análises epidemiológicas e de
custos em saúde.

------------------------------------------------------------------------

## 📌 Visão Geral

Este projeto fornece uma interface analítica para exploração de dados
clínicos e administrativos associados ao PCDT, permitindo:

-   Visualização interativa de indicadores epidemiológicos\
-   Análise de custos relacionados a tratamentos\
-   Integração com banco de dados PostgreSQL\
-   Execução padronizada via contêineres Docker

------------------------------------------------------------------------

## 🏗 Arquitetura

A solução é composta por:

-   **Aplicação:** R Shiny (UI + Server em `app.R`)\
-   **Banco de Dados:** PostgreSQL 13\
-   **Containerização:** Docker e Docker Compose\
-   **Proxy Reverso:** Nginx (configurado no host)

------------------------------------------------------------------------

## 🚀 Como Executar (Docker)

### **Pré-requisitos**

Certifique-se de ter instalado:

-   Docker\
-   Docker Compose\
-   Git

### **1. Clonar o Repositório**

``` bash
git clone https://github.com/labx-ia-br/sabeis_pcdt.git
cd sabeis_pcdt
```

### **2. Configurar Variáveis de Ambiente**

Por segurança, o arquivo de credenciais não é versionado. Para
configurá-lo:

1.  Copie o arquivo de exemplo:

    ``` bash
    cp .env.example .env
    ```

2.  Edite o arquivo `.env` e preencha as variáveis:

    -   `DB_HOST`
    -   `DB_USER`
    -   `DB_PASSWORD`

### **3. Construir e Iniciar os Contêineres**

Execute:

``` bash
docker compose up -d --build
```

Isso irá: - Construir a imagem da aplicação Shiny\
- Subir o serviço PostgreSQL\
- Iniciar a aplicação na porta **3838**

### **4. Acessar a Aplicação**

Após iniciar os serviços, acesse:

    http://localhost:3838

Caso esteja em um servidor remoto, utilize o IP correspondente.

------------------------------------------------------------------------

## 📂 Estrutura do Projeto

    sabeis_pcdt/
    │
    ├── dataset/
    │   └── Arquivos CSV e dados estáticos utilizados pela aplicação
    │
    ├── app.R
    │   └── Código principal da aplicação Shiny (UI + Server)
    │
    ├── Dockerfile
    │   └── Definição do ambiente de execução (R, pacotes e dependências)
    │
    ├── docker-compose.yml
    │   └── Configuração dos serviços (Shiny + PostgreSQL)
    │
    ├── .env.example
    │   └── Modelo das variáveis de ambiente

------------------------------------------------------------------------

## 🛠 Tecnologias Utilizadas

  Componente        Tecnologia
  ----------------- -------------------------
  Linguagem         R (Shiny Dashboard)
  Banco de Dados    PostgreSQL 13
  Containerização   Docker & Docker Compose
  Proxy             Nginx (no host)

------------------------------------------------------------------------

## 🤝 Contribuição

Contribuições são bem-vindas! Para colaborar:

1.  Faça um fork do repositório\
2.  Crie uma branch (`git checkout -b minha-feature`)\
3.  Faça suas alterações e commit (`git commit -m "Minha melhoria"`)\
4.  Envie um pull request

-----------------------------------------------------------------------