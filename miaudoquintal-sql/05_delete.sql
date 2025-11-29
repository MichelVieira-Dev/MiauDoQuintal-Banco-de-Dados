-- 05_delete.sql
-- Comandos de DELETE para o banco de dados MiauDoQuintal

USE miaudoquintal;

-- 1) Excluir solicitações rejeitadas
DELETE FROM SolicitacaoAdocao
WHERE status = 'rejeitada';

-- 2) Excluir um tutor que ainda não possui solicitações associadas
DELETE FROM Tutor
WHERE id_tutor = 3;

-- 3) Excluir um animal que não está mais no abrigo e não possui solicitações vinculadas
DELETE FROM Animal
WHERE id_animal = 4;
