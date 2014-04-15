# encoding: utf-8

# -----------------
# Introdução
# -----------------

# A linguagem Ruby possui diversos métodos e operadores que são usados,
# normalmente, com expressões regulares.
# Alguns dos mais usados são: scan, match, gsub e sub.

# Estes métodos estão descritos de forma simplificada a seguir.
# A documentação completa pode ser encontrada em:
# http://ruby-doc.org/core-2.0/String.html

# 1. SCAN
# -------

# O método `scan` recebe uma regex como parâmetro e retorna um array com todos
# os trechos da string que "deram match" com o padrão fornecido.

# Exemplo:
"Banana".scan(/na/) # => ["na", "na"]

# 2. MATCH
# -------

# O método `match` recebe uma regex e retorna um objeto que pode ser usado para
# acessar diversos atributos do primeiro "match". Note que, ao contrário do
# método `scan`, o método `match` só encontra uma ocorrência do padrão, e não
# todas.

# Exemplo:
"Banana".match(/ba/) # => nil (sem match)

# Captura o DDD e o restante de um número de telefone:
md = "11 9999-9999".match(/\A(\d\d) ([0-9\-]+)/)

# Imprime os grupos capturados:
puts "DDD is: #{md[1]}"
puts "Number is: #{md[2]}"

# 3. GSUB
# -------

# O método gsub recebe dois parâmetros: um padrão de match (regex) e um padrão
# de substituição, e substitui todas as ocorrências do padrão pelo padrão de
# substituição:

"Hello, World!!".gsub(/[^a-z]/, "*") # => "*ello***orld**"

# Se a substituição for mais complexa, é possível passar um bloco para o `gsub`
# ao invés de uma string no segundo parâmetro e, neste bloco, você pode usar
# qualquer expressão Ruby. Exemplo:

"Hello, World!!".gsub(/[^a-z]/) do |match|
  # Só substituir se o match for um ponto de exclamação:
  if match == '!'
    '*'
  else
    match
  end
end # => "Hello, World**"

# 3. SUB
# -------

# O método sub funciona da mesma forma que o gsub, mas realiza a substituição
# apenas na primeira ocorrência do padrão:

"Hello, World!!".sub(/[^a-z]/, "*") # => "*ello, World!!"

# -----------------
# Exercício 6.3
# -----------------

# Com base nas notícias abaixo, escreva expressões regulares para responder
# às perguntas abaixo.

str = <<-STR
09:55 - [política] Prefeito da Krakosia é eleito o melhor para economia
10:14 - [cotidiano] Cachorro salva dono de assalto
11:01 - [esporte] Seleção local de golfe se classifica para mundial
11:36 - [esporte] João da Silva Sauro é cortado da seleção de golfe
13:19 - [economia] Desemprego sobe para 12% no último mês
14:55 - [política] Lei de incentivo ao esporte é aprovada no senado
16:13 - [economia] Cotação do dólar sobe 5% em uma semana
19:26 - [esporte] Liga nacional de basquete tem recorde de público
STR

# 1) Capturar o horário, tema, e título de cada notícia. Em seguida, para cada
# notícia, imprimi-la com o seguinte formato: "TEMA: TÍTULO (HORA)"

# Seu código aqui...

# 2) Quantas linhas existem nesta string?

# Seu código aqui...
puts "Existem _____ linhas."

# 3) Quantas notícias de economia de falam sobre o dólar?

# Seu código aqui...
puts "_____ notícias falam sobre o dólar."

# 4) Imprimir todos os horários das notícias que contém a palavra golfe.

# 5) Substituir todos os temas de notícias pela sua versão em maiúsculas e
# imprimir a string resultante. Ou seja: seu código deverá imprimir o seguinte:

# 09:55 - [POLíTICA] Prefeito da Krakosia é eleito o melhor para economia
# 10:14 - [COTIDIANO] Cachorro salva dono de assalto
# 11:01 - [ESPORTE] Seleção local de golfe se classifica para mundial
# 11:36 - [ESPORTE] João da Silva Sauro é cortado da seleção de golfe
# 13:19 - [ECONOMIA] Desemprego sobe para 12% no último mês
# 14:55 - [POLíTICA] Lei de incentivo ao esporte é aprovada no senado
# 16:13 - [ECONOMIA] Cotação do dólar sobe 5% em uma semana
# 19:26 - [ESPORTE] Liga nacional de basquete tem recorde de público

# Seu código aqui...
