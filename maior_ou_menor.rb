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
	nome
end

def sorteiaNumeroSecreto(dificuldade)
	case dificuldade
	 	when 1
	 		maximo = 30
	 	when 2
	 		maximo = 60
    	when 3
        	maximo = 100
	    when 4
	        maximo = 150
	    else
	        maximo = 200
	end	 
        
	puts "Escolhendo um número secreto entre 1 e #{maximo}... \n\n"
	# Definindo um número
	numeroSecreto = rand(maximo) + 1
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

def pede_dificuldade
    puts "Qual o nível de dificuldade que deseja? (1 fácil, 5 difícil)"
    dificuldade = gets.to_i
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

def joga(nome)
	pontos_ate_agora = 1000
	dificuldade = pede_dificuldade
	numeroSecreto = sorteiaNumeroSecreto dificuldade
	limiteDeTentivas = 5
	totalDeChutes = []
	for tentativa in 1..limiteDeTentivas
		# Outra convencao do Ruby, passar os parametros para a funcao sem usar parenteses
		chute = pedeUmNumero tentativa, limiteDeTentivas, totalDeChutes
		if nome == "Felipe"
			puts "Acertou!"
			break
		end
		pontos_perdidos = (chute.to_i - numeroSecreto).abs / 2 
	    pontos_ate_agora = pontos_ate_agora - pontos_perdidos
		if verificaSeAcertou chute, numeroSecreto
		 	break
		end
	end
	puts "Você marcou: #{pontos_ate_agora}"
end

def quer_jogar
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    quero_jogar.upcase == "S"
end

nome = deBoasVindas

while quer_jogar
	joga(nome)
end
