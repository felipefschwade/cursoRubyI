# Puts Imprime algo na tela
puts "Bem-vindo ao jogo da adivinhação"
puts 
puts
puts
puts "Qual o seu nome?"
#Gets captura a entrada de um usuário
nome = gets
puts 
puts
puts
# Mensagem de comeco do jogo
puts "Começaremos o jogo para voce " + nome
puts 
puts
# Mensagem de escolha do numero
puts "Escolhendo um número secreto entre 0 e 200..."
# Definindo um número
numeroSecreto = 175
puts "Tentativa 1"
puts "Digite o seu chute"
# Pega chute da entrada do usuário
chute = gets
puts "Será que acertou? Você chutou " + chute
# Compara o chute à entrada do usuário
puts chute.to_i == numeroSecreto