# -----------------
# Introdução
# -----------------

# Ruby possui diversos métodos que funcionam como a função de filtro vista
# no exemplo dos slides: são métodos que recebem um conjunto
# (normalmente um array) e uma função anônima (na forma de um bloco) e,
# para cada elemento do array, chamam a função passada como parâmetro, passando
# um elemento do array para esta função anônima.

# Estes método são chamados de **iteradores**.

# Um destes métodos é o `each`, e a sua existência deste método explica por que
# é muito raro encontrar um `while` ou `for` em um código Ruby.

# -----------------
# Exercício 5.1
# -----------------

# O código abaixo itera sobre um array e, para cada elemento (objeto) do array,
# imprime a classe deste objeto.

# Altere o código para usar o método each, que recebe um bloco (uma função
# anônima e, a cada iteração, passa para o bloco um elemento do array).

# O método `each` está documentado em:
# http://www.ruby-doc.org/core-2.1.1/Array.html#method-i-each

arr = ["Apple", 1, -> { puts "Hey!"}, Hash.new, 1.000001, 1e10, 100_000 ]

for i in (0..arr.length-1) do
  puts "Class: #{arr[i].class}"
end