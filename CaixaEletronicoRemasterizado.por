programa
{
	
   	real saldo = 150.00// Float
   	cadeia extrato = ""
	inteiro senha
	cadeia nome_usuario
	
	funcao inicio() {
		escreva("Seja bem vindo! Qual o seu nome? ")
		leia(nome_usuario)
		escreva("Olá ", nome_usuario, "! É um prazer ter você por aqui!\n")

		inteiro opcao = 0

		enquanto (opcao != 6){
		escreva("Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Ver extrato\n")
		escreva("3. Fazer saque\n")
		escreva("4. Fazer depósito\n")
		escreva("5. Fazer transferência\n")
		escreva("6. Sair\n")
		leia(opcao)

		escolha(opcao) {
			caso 1: verSaldo() pare
			caso 2: verExtrato() pare
			caso 3: fazerSaque() pare
			caso 4: fazerDeposito() pare
			caso 5: fazerTransferencia() pare
			caso 6: sair() pare
			caso contrario: erro() pare

		    }
		}
		escreva("A opção selecionada foi: ", opcao , "\n")
	}
	
	funcao registrar(cadeia linha){
		se (extrato != "") {
			extrato = extrato + "\n"
		}
		extrato = extrato + linha
	}

	funcao pedirSenha(){
		escreva("Informe sua senha para acessar este serviço.\n")
		leia(senha)
		se (senha != 3589) {
			escreva("Senha incorreta!\n")
			pedirSenha()
		}
	}
	
	funcao verSaldo(){
		pedirSenha()
		escreva("Seu saldo atual é: ", saldo, "\n")
	}

	funcao verExtrato(){
		pedirSenha()

		escreva("\n===== EXTRATO =====\n")

		se (extrato == "") {
			escreva("Nenhuma movimentação registrada.\n")
		} senao {
			escreva(extrato, "\n")
		}
	}

	funcao fazerSaque(){
	
		real saque
		pedirSenha()
		
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0 ou saque > saldo){
	        escreva("Operação não autorizada.\n")
	        fazerSaque()
		} senao {
			saldo = saldo - saque
			registrar("Saque - R$ " + saque)
			verSaldo()
		}
	}
	
	funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Operação não autorizada.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			registrar("Depósito - R$ " + deposito)
			verSaldo()
		}
	}

	funcao fazerTransferencia() {
		inteiro valor_transferencia, numero_conta

		pedirSenha()
		
			escreva("Informe o número da conta para o qual deseja transferir (somente números).\n")
			leia(numero_conta)
			escreva ("Qual o valor da transferência?\n")
			leia(valor_transferencia)
			
		se (valor_transferencia <= 0 ou valor_transferencia > saldo) {
			escreva("Operação não autorizada.")
			fazerTransferencia()
		} senao {
			saldo = saldo - valor_transferencia
			registrar("Transferência - R$ " + valor_transferencia)
			verSaldo()
		}
	}

	funcao erro() {
		escreva("Opção inválida.\n")
	}

	funcao sair(){
		escreva(nome_usuario, ", foi um prazer ter você por aqui!\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */