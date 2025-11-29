-- 03_select_queries.sql
-- Consultas SQL (SELECT) no banco de dados MiauDoQuintal

USE miaudoquintal;

-- 1) Listar todos os animais disponíveis para adoção
SELECT 
    nome,
    especie,
    idade,
    porte,
    status
FROM Animal
WHERE status = 'disponível';

-- 2) Listar tutores que possuem solicitações cadastradas
SELECT 
    t.id_tutor,
    t.nome,
    t.email,
    s.id_solicitacao,
    s.status
FROM Tutor t
JOIN SolicitacaoAdocao s ON s.id_tutor = t.id_tutor
ORDER BY t.nome;

-- 3) Listar solicitações com tutor, animal e administrador (JOIN múltiplo)
SELECT 
    s.id_solicitacao,
    s.data_solicitacao,
    s.status,
    t.nome AS nome_tutor,
    a.nome AS nome_animal,
    adm.nome AS nome_admin
FROM SolicitacaoAdocao s
JOIN Tutor t ON t.id_tutor = s.id_tutor
JOIN Animal a ON a.id_animal = s.id_animal
JOIN Administrador adm ON adm.id_admin = s.id_admin_responsavel
ORDER BY s.data_solicitacao DESC;

-- 4) Animais com peso menor que 10 kg, ordenados pelo peso
SELECT 
    nome,
    especie,
    peso
FROM Animal
WHERE peso < 10
ORDER BY peso ASC;

-- 5) Listar os 2 tutores mais recentemente cadastrados (com base no id)
SELECT 
    id_tutor,
    nome,
    email
FROM Tutor
ORDER BY id_tutor DESC
LIMIT 2;
