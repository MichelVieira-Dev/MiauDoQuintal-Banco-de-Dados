# 🐾 MiauDoQuintal – Banco de Dados (Atividade 4)

Repositório contendo os scripts SQL desenvolvidos para a **Atividade 4** do projeto _MiauDoQuintal_.  
Esta etapa integra o modelo lógico anteriormente criado com comandos SQL de manipulação de dados (DML).

---

## 📘 1. Sobre o Projeto

O sistema **MiauDoQuintal** gerencia adoções de animais resgatados.  
O banco de dados inclui quatro entidades principais:

- Tutor
- Administrador
- Animal
- SolicitacaoAdocao

As tabelas foram normalizadas até **3FN** e seguem estritamente o minimundo oficial.

---

## 🧱 2. Estrutura do Repositório

```
📁 /miaudoquintal-sql
│
├── 01_ddl_create_tables.sql      → Criação das tabelas
├── 02_insert_data.sql            → Povoamento (INSERT)
├── 03_select_queries.sql         → Consultas (SELECT)
├── 04_update.sql                 → Atualizações (UPDATE)
├── 05_delete.sql                 → Remoções (DELETE)
└── README.md                     → Documentação
```

---

## 🗄️ 3. Pré-requisitos

- MySQL Server ou MariaDB
- MySQL Workbench
- Git para versionamento
- (Opcional) PGAdmin, caso utilize PostgreSQL

---

## 🚀 4. Como Executar os Scripts

1. Clone o repositório:

```
git clone https://github.com/MichelVieira-Dev/MiauDoQuintal-Banco-de-Dados.git
```

2. Abra o MySQL Workbench
3. Execute:

```
01_ddl_create_tables.sql
```

4. Em seguida:

```
02_insert_data.sql
```

5. Utilize os demais scripts conforme necessidade:

- SELECT → consultas
- UPDATE → atualizações
- DELETE → remoções seguras

---

## 📚 5. Conteúdo dos Scripts

### **5.1. DDL – Criação das tabelas**

Contém todas as entidades e FKs definidas no modelo lógico.

### **5.2. INSERT – Povoamento**

- 3 tutores
- 2 administradores
- 4 animais
- 3 solicitações

### **5.3. SELECT – Consultas**

- WHERE
- JOIN
- ORDER BY
- LIMIT

### **5.4. UPDATE – Atualizações**

- Correção de telefone
- Mudança de status
- Atualização de histórico

### **5.5. DELETE – Remoções**

3 exclusões

---

## ✨ 6. Autor

Desenvolvido por **Michel Vieira**  
Disciplina: Modelagem de Banco de Dados
