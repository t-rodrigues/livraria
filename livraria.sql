CREATE TABLE `autores` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255),
  `email` varchar(255),
  `data_nascimento` date,
  `mini_curriculo` text
);

INSERT INTO
  autores (nome, email, data_nascimento, mini_curriculo)
VALUES
  (
    'Thiago Rodrigues',
    'thiagor_@live.com',
    '1991-12-29',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sagittis tristique leo, eu cursus erat. In laoreet quis nisi sit amet congue. Pellentesque dignissim imperdiet sodales. Sed varius consectetur neque. Nulla bibendum sodales erat, sit amet commodo lectus fermentum at.'
  );

INSERT INTO
  autores (nome, email, data_nascimento, mini_curriculo)
VALUES
  (
    'Robert C Martin',
    'bob@gmail.com',
    '1952-12-05',
    'Robert Cecil Martin, também conhecido como "Uncle Bob", é uma grande personalidade da comunidade de desenvolvimento de software, métodos ágeis e software craftsmanship, atuando na área desde 1970. Atualmente é consultor internacional e autor de vários livros abordando o tema.'
  );
