-- 04_update.sql
-- Comandos de UPDATE para o banco de dados MiauDoQuintal

USE miaudoquintal;

-- 1) Atualizar o status de um animal após ser adotado
UPDATE Animal
SET status = 'adotado'
WHERE id_animal = 2;

-- 2) Corrigir o telefone de um tutor
UPDATE Tutor
SET telefone = '11955554444'
WHERE id_tutor = 2;

-- 3) Atualizar o histórico de saúde de um animal após nova avaliação
UPDATE Animal
SET historico = 'Animal passou por nova avaliação veterinária e está em bom estado'
WHERE id_animal = 3;
