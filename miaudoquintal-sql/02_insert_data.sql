-- 02_insert_data.sql
-- Inserção de dados iniciais nas tabelas do projeto MiauDoQuintal

USE miaudoquintal;

-- Inserindo Tutores
INSERT INTO Tutor (nome, email, telefone, endereco, preferencias) VALUES
('Maria Silva', 'maria.silva@gmail.com', '11987654321', 'Rua das Flores, 123', 'Preferência por gatos'),
('João Pereira', 'joao.pereira@gmail.com', '11912345678', 'Av. Central, 890', 'Prefere animais jovens'),
('Ana Souza', 'ana.souza@gmail.com', '21999993333', 'Rua das Laranjeiras, 55', 'Animais de porte pequeno');

-- Inserindo Administradores
INSERT INTO Administrador (nome, email, cargo) VALUES
('Carlos Mendes', 'c.mendes@miaudoquintal.org', 'Gestor'),
('Fernanda Rocha', 'f.rocha@miaudoquintal.org', 'Assistente');

-- Inserindo Animais
INSERT INTO Animal (nome, especie, idade, porte, peso, historico, status) VALUES
('Luna', 'Gato', 3, 'Pequeno', 4.20, 'Resgatada em bom estado geral', 'disponível'),
('Rex', 'Cachorro', 5, 'Médio', 12.00, 'Resgatado ferido, já tratado', 'disponível'),
('Toby', 'Cachorro', 1, 'Pequeno', 6.30, 'Filhote saudável, muito ativo', 'disponível'),
('Mel', 'Gato', 2, 'Pequeno', 3.80, 'Resgatada com suspeita de desnutrição', 'adotado');

-- Inserindo Solicitações de Adoção
-- Obs.: tutor 3 não possui solicitação (para exemplo de DELETE seguro depois)
INSERT INTO SolicitacaoAdocao 
(data_solicitacao, status, id_tutor, id_animal, id_admin_responsavel) 
VALUES
('2025-02-10', 'pendente', 1, 1, 1),
('2025-02-12', 'aprovada', 2, 2, 2),
('2025-02-15', 'rejeitada', 1, 3, 1);
