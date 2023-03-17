USE catalogoFilmeDB;
	-- COMANDOS DE DML
-- inicialmente passando dados do admin, pois nao ha onde fazer cadastro, entao damos uma carga inicial no proprio bd
INSERT INTO tb_usuario (nm_usuario, ds_email, ds_senha)
VALUES ('admin', 'admin@admin.com.br', '1234');
       
        -- CaSo de uso 01: efetuar login
select id_usuario   id,
	   nm_usuario   nome,
       ds_email     email
from tb_usuario
where ds_email      ='admin@admin.com.br'
  and ds_senha      ='1234';
 
  -- Caso de uso de cadastrar um filme novo, segue script
  INSERT INTO tb_filme (id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel, img_filme)
VALUES (1, 'Harry Potter e a Camara Secreta', 'Filme bem tops', 8.2, '2012-02-11', true, '/storage/filmes/3232312.jpg');
       
 
  -- Caso de uso 3, alterar um filme da tabela, trocando os dados por outro
  UPDATE tb_filme
SET nm_filme   ='Hary Potter e a Pedra Filosofal',
ds_sinopse ='Filme bem legal',
vl_avaliacao =9.5,
dt_lancamento = '2010-05-03',
bt_disponivel = true,
img_filme     = '/storage/filme/jsjask.jpg'
WHERE id_filme = 1;

-- caso de uso 4, remover um filme da tabela filme
DELETE FROM tb_filme
WHERE id_filme = 1;
   
-- caso de uso 5, consultar todos os filmes da tabela
SELECT id_filme   id,
  nm_filme   nome,
       ds_sinopse sinopse,
       vl_avaliacao avaliacao,
       dt_lancamento lancamento,
       bt_disponivel disponivel
FROM tb_filme;

-- caso de uso 6, consultar um filme por nome
SELECT id_filme   id,
       nm_filme   nome,
       ds_sinopse sinopse,
       vl_avaliacao avaliacao,
       dt_lancamento lancamento,
       bt_disponivel disponivel
FROM tb_filme
WHERE nm_filme    LIKE '%hari%';

-- caso 07 consultar filme por id
SELECT id_filme id,
  nm_filme   nome,
       ds_sinopse sinopse,
       vl_avaliacao avaliacao,
       dt_lancamento lancamento,
       bt_disponivel disponivel,
       img_filme capa
FROM tb_filme
WHERE id_filme    LIKE 1;