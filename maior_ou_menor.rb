def deBoasVindas
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
end


deBoasVindas
limiteDeTentivas = 3
# Definindo um número
numeroSecreto = 175
for tentativa in 1..limiteDeTentivas
	puts "Tentativa " + tentativa.to_s + "\n"
	puts "Digite o seu chute \n"
	# Pega chute da entrada do usuário
	chute = gets
	puts "Será que acertou? Você chutou " + chute +"\n\n"
	# Assimila acertou a entrada do usuário comparada com número secreto
	acertou = chute.to_i == numeroSecreto
	if acertou
	 	puts "Acertou!"
	 	break
	else 
		maior = chute.to_i > numeroSecreto
		if maior
			puts "Você chutou um número maior que o número secreto"
		else
			puts "Você chutou um número menor que o número secreto"
		end
	end 
end