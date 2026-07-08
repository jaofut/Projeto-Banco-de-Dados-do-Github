ALTER TABLE usuario DROP COLUMN url;
ALTER TABLE usuario ADD COLUMN data_criacao DATE DEFAULT CURRENT_DATE;
ALTER TABLE usuario ADD COLUMN url_user VARCHAR(255)
    GENERATED ALWAYS AS ('https://user/' || nome_usuario || '.com') STORED;

ALTER TABLE usuario ADD CONSTRAINT uq_url_user UNIQUE (url_user);
ALTER TABLE usuario ADD CONSTRAINT uq_nome_usuario UNIQUE (nome_usuario);