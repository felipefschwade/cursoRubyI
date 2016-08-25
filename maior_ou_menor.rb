# Puts Imprime algo na tela
puts "Bem-vindo ao jogo da adivinhação \n\n\n"
puts "Qual o seu nome?"
#Gets captura a entrada de um usuário
nome = gets
puts "\n\n\n\n"
# Mensagem de comeco do jogo
puts "Começaremos o jogo para voce " + nome + "\n\n"
# Mensagem de escolha do numero
puts "Escolhendo um número secreto entre 0 e 200... \n\n"
# Definindo um número
numeroSecreto = 175
puts "Tentativa 1\n"
puts "Digite o seu chute \n"
# Pega chute da entrada do usuário
chute = gets
puts "Será que acertou? Você chutou " + chute +"\n\n"
# Compara o chute à entrada do usuário
puts chute.to_i == numeroSecreto