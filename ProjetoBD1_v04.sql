CREATE TABLE url_repositorio(
id INT PRIMARY KEY,
fk_id_repositorio INT REFERENCES repositorio(id)
    ON DELETE CASCADE,
url_repositorio VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE arquivo(
  id_arquivo INT PRIMARY KEY,
  fk_id_repositorio INT REFERENCES repositorio(id) ON DELETE CASCADE,
  nome_arquivo VARCHAR(255) NOT NULL,
  fk_id_usuario_criador INT REFERENCES usuario(id),
  data_criacao DATE DEFAULT CURRENT_DATE
);

CREATE TABLE versao_arquivo(
  id_versao_arquivo INT PRIMARY KEY,
  versao_arquivo VARCHAR(255) NOT NULL,
  fk_id_arquivo INT  REFERENCES arquivo(id_arquivo) ON DELETE CASCADE,
  comentario TEXT,
  conteudo TEXT,
  data_criacao DATE DEFAULT CURRENT_DATE,
  fk_id_usuario_criador INT REFERENCES usuario(id),
  fk_id_usuario_ultima_edicão INT REFERENCES usuario(id),
  em_edicao BOOLEAN NOT NULL DEFAULT TRUE
);