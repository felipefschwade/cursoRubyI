def deBoasVindas
	# Puts Imprime algo na tela
	puts "Bem-vindo ao jogo da adivinhação \n\n\n"
	puts "Qual o seu nome?"
	#Gets captura a entrada de um usuário
	nome = gets.strip
	puts "\n\n\n\n"
	# Mensagem de comeco do jogo
	puts "Começaremos o jogo para voce #{nome}\n\n"
	# Mensagem de escolha do numero
end

def sorteiaNumeroSecreto
	puts "Escolhendo um número secreto entre 0 e 200... \n\n"
	# Definindo um número
	numeroSecreto = 175
	# Convencional em Ruby não utilizar return para retornar um valor e enviar apenasa variável desejada
	numeroSecreto
end

def pedeUmNumero(tentativa, limiteDeTentivas, totalDeChutes)
	puts "Chutes até agora " + totalDeChutes.to_s
	puts "Tentativa #{tentativa} de #{limiteDeTentivas}\n"
	puts "Digite o seu chute \n"
	# Pega chute da entrada do usuário e remove os espaços em branco
	chute = gets.strip
	# Adiciona chute ao final de total de chutes
	totalDeChutes << chute
	puts "Será que acertou? Você chutou #{chute}\n\n"
	# Convencional em Ruby não utilizar return para retornar um valor e enviar apenasa variável desejada
	chute
end

def verificaSeAcertou(chute, numeroSecreto)
	acertou = numeroSecreto == chute.to_i
    if acertou
        puts "Acertou!"
        return true
    end
    maior = numeroSecreto > chute.to_i
    if maior
        puts "O número secreto é maior!"
    else
        puts "O número secreto é menor!"
    end
    false
end

deBoasVindas

numeroSecreto = sorteiaNumeroSecreto
limiteDeTentivas = 3
totalDeChutes = []

for tentativa in 1..limiteDeTentivas
	# Outra convencao do Ruby, passar os parametros para a funcao sem usar parenteses
	chute = pedeUmNumero tentativa, limiteDeTentivas, totalDeChutes
	if verificaSeAcertou chute, numeroSecreto
	 	break
	end
end