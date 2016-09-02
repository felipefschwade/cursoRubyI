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
end

def sorteiaNumeroSecreto
	puts "Escolhendo um número secreto entre 0 e 200... \n\n"
	# Definindo um número
	numeroSecreto = 175
	# Convencional em Ruby não utilizar return para retornar um valor e enviar apenasa variável desejada
	numeroSecreto
end

def pedeUmNumero(tentativa, limiteDeTentivas)
	puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentivas.to_s + "\n"
	puts "Digite o seu chute \n"
	# Pega chute da entrada do usuário
	chute = gets
	puts "Será que acertou? Você chutou " + chute +"\n\n"
	# Convencional em Ruby não utilizar return para retornar um valor e enviar apenasa variável desejada
	chute
end

def verificaSeAcertou(chute, numeroSecreto)
	acertou = chute.to_i == numeroSecreto
	if acertou
	 	puts "Acertou!"
	 	return true
	else 
		maior = chute.to_i > numeroSecreto
		if maior
			puts "Você chutou um número maior que o número secreto"
		else
			puts "Você chutou um número menor que o número secreto"
		end
	end
	false
end

deBoasVindas

numeroSecreto = sorteiaNumeroSecreto
limiteDeTentivas = 3

for tentativa in 1..limiteDeTentivas
	# Outra convencao do Ruby, passar os parametros para a funcao sem usar parenteses
	chute = pedeUmNumero tentativa, limiteDeTentivas
	if verificaSeAcertou chute, numeroSecreto
	 	break
	end
end