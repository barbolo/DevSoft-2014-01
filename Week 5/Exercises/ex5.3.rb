# -----------------
# Introdução
# -----------------

# Alguns dos iteradores mais importantes em Ruby são:
# each, each_with_index, map, reduce, find, find_all e reject.

# Chamadas a estes iteradores podem ser encadeadas, para aplicar uma sucessão
# de transformações a uma coleção e obter o resultado desejado.

# Alguns exemplos:

# Dada uma lista de inteiros, remover todos os números pares, multiplicar os
# ímpares restantes por 2 e, ao final, imprimir a soma dos elementos.

result = (0..10).
  reject { |x| x % 2 == 0 }.
  map { |x| x * 2 }.
  reduce(0) { |x, sum| sum + x}

puts "Result is: #{result}"

# -----------------
# Exercício 5.3
# -----------------

# Dado uma lista de hashes, na qual cada elemento representa uma pessoa,
# utilizar iteradores para responder às seguintes perguntas:

# Exemplo de lista:
people = [
  { name: 'Liz', gender: :female, age: 10, country: 'England'},
  { name: 'John', gender: :male, age: 28, country: 'Argentina'},
  { name: 'Mark', gender: :male, age: 28, country: 'Brazil'},
  { name: 'Pedro', gender: :male, age: 19, country: 'Brazil'},
  { name: 'Tom', gender: :male, age: 14, country: 'Brazil'},
  { name: 'Marcela', gender: :female, age: 30, country: 'Brazil'},
  { name: 'Tiago', gender: :male, age: 1, country: 'Spain'},
  { name: 'João', gender: :male, age: 17, country: 'Brazil'},
  { name: 'Matt', gender: :male, age: 26, country: 'United States'},
  { name: 'Robin', gender: :female, age: 31, country: 'United States'},
  { name: 'Barney', gender: :male, age: 32, country: 'United States'},
  { name: 'Jon', gender: :female, age: 40, country: 'The Wall'},
  { name: 'Sansa', gender: :female, age: 16, country: 'Winterfell'},
  { name: 'Ted', gender: :male, age: 30, country: 'Winterfell'}
]

# 1) Quantas pessoas são homens?

# Seu código aqui...

# 2) Quantas são mulheres?

# Seu código aqui...

# 3) Quantas pessoas são maiores de idade?

# Seu código aqui...

# 4) Qual a soma das idades de todos os brasileiros?

# Seu código aqui...

# 5) Imprima todos os nomes em ordem alfabética

# Seu código aqui...
