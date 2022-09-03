programa
{
	
	funcao inicio()
	{
		inteiro opcaoUsuario = 0, branco = 0, nulo = 0, ptc = 0, pta = 0, ptd = 0, ptf = 0

		enquanto (opcaoUsuario != 1 e opcaoUsuario != 2)
		{
			escreva("\n-------------------------------------------------------")
			escreva("\n\"Urna Eleitoral\"")
		 	escreva("\n1. Votar | 2. Apurar votos\n")
		 	escreva("\nOpção: ")
		 	leia(opcaoUsuario)

			inteiro opcaoVoto = 0, limiteCorrigirVoto = 0

			se (opcaoUsuario == 1)
			{
				enquanto (opcaoVoto != 1 e opcaoVoto != 2)
				{
					escreva("-------------------------------------------------------")
					escreva("\n1. Votar em um candidato | 2. Votar em branco\n")
					escreva("\nOpcão: ")
					leia(opcaoVoto)
	
					inteiro numeroCandidato = 0, confirmarVoto = 0
	
					se (opcaoVoto == 2)
					{
						enquanto (confirmarVoto != 1 e confirmarVoto != 2)
						{
							escreva("-------------------------------------------------------")
							escreva("\nOpção de voto: Branco")
							escreva("\n1. CONFIRMAR | 2. CORRIGIR\n")
							escreva("\nOpção: ")
							leia(confirmarVoto)
						}
	
						se (confirmarVoto == 1)
						{
							branco++
							opcaoUsuario = 0
						} senao {		// corrigir voto
							limiteCorrigirVoto++
	
							se (limiteCorrigirVoto < 3)
							{
								opcaoVoto = 0
							} senao {
								escreva("\nLimite de correção de votos atingido!\n")
								opcaoUsuario = 0
							}
							
						}
						
					} senao {		// opcaoVoto == 1 (votar em um candidato)
						escreva("-------------------------------------------------------")
						escreva("\n45. Alisson Reis  [PTC]\n13. José Ailton   [PTA]\n12. Cláudia Amara [PTD]\n22. Luzia Santos  [PTF]\n")
						escreva("\nOpção: ")
						leia(numeroCandidato)
	
						se (numeroCandidato != 45 e numeroCandidato != 13 e numeroCandidato != 12 e numeroCandidato != 22)
						{
							enquanto (confirmarVoto != 1 e confirmarVoto != 2)
							{
								escreva("-------------------------------------------------------")
								escreva("\nOpção de voto não atribuída: Nulo")
								escreva("\n1. CONFIRMAR | 2. CORRIGIR\n")
								escreva("\nOpção: ")
								leia(confirmarVoto)
							}
	
							se (confirmarVoto == 1)
							{
								nulo++
								opcaoUsuario = 0
							} senao {		// corrigir voto
								limiteCorrigirVoto++
	
								se (limiteCorrigirVoto < 3)
								{
									opcaoVoto = 0
								} senao {
									escreva("\nLimite de correção de votos atingido!\n")
									opcaoUsuario = 0
								}
							}
							
						} senao se (numeroCandidato == 45)
						{
							enquanto (confirmarVoto != 1 e confirmarVoto != 2)
							{
								escreva("-------------------------------------------------------")
								escreva("\nOpção de voto: 45. Alisson Reis [PTC]")
								escreva("\n1. CONFIRMAR | 2. CORRIGIR\n")
								escreva("\nOpção: ")
								leia(confirmarVoto)
							}
	
							se (confirmarVoto == 1)
							{
								ptc++
								opcaoUsuario = 0
							} senao {		// corrigir voto
								limiteCorrigirVoto++
	
								se (limiteCorrigirVoto < 3)
								{
									opcaoVoto = 0
								} senao {
									escreva("\nLimite de correção de votos atingido!\n")
									opcaoUsuario = 0
								}
							}
						} senao se (numeroCandidato == 13)
						{
							enquanto (confirmarVoto != 1 e confirmarVoto != 2)
							{
								escreva("-------------------------------------------------------")
								escreva("\nOpção de voto: 13. José Ailton [PTA]")
								escreva("\n1. CONFIRMAR | 2. CORRIGIR\n")
								escreva("\nOpção: ")
								leia(confirmarVoto)
							}
	
							se (confirmarVoto == 1)
							{
								pta++
								opcaoUsuario = 0
							} senao {		// corrigir voto
								limiteCorrigirVoto++
	
								se (limiteCorrigirVoto < 3)
								{
									opcaoVoto = 0
								} senao {
									escreva("\nLimite de correção de votos atingido!\n")
									opcaoUsuario = 0
								}
							}
						} senao se (numeroCandidato == 12)
						{
							enquanto (confirmarVoto != 1 e confirmarVoto != 2)
							{
								escreva("-------------------------------------------------------")
								escreva("\nOpção de voto: 12. Cláudia Amara [PTD]")
								escreva("\n1. CONFIRMAR | 2. CORRIGIR\n")
								escreva("\nOpção: ")
								leia(confirmarVoto)
							}
	
							se (confirmarVoto == 1)
							{
								ptd++
								opcaoUsuario = 0
							} senao {		// corrigir voto
								limiteCorrigirVoto++
	
								se (limiteCorrigirVoto < 3)
								{
									opcaoVoto = 0
								} senao {
									escreva("\nLimite de correção de votos atingido!\n")
									opcaoUsuario = 0
								}
							}
						} senao se (numeroCandidato == 22)
						{
							enquanto (confirmarVoto != 1 e confirmarVoto != 2)
							{
								escreva("-------------------------------------------------------")
								escreva("\nOpção de voto: 22. Luzia Santos [PTF]")
								escreva("\n1. CONFIRMAR | 2. CORRIGIR\n")
								escreva("\nOpção: ")
								leia(confirmarVoto)
							}
	
							se (confirmarVoto == 1)
							{
								ptf++
								opcaoUsuario = 0
							} senao {		// corrigir voto
								limiteCorrigirVoto++
	
								se (limiteCorrigirVoto < 3)
								{
									opcaoVoto = 0
								} senao {
									escreva("\nLimite de correção de votos atingido!\n")
									opcaoUsuario = 0
								}
							}
						}
					}
					
				}
				
			} senao {	// Apurar votos
				inteiro senhaCorreta = 123456, senhaInserida = 0

				escreva("\nSenha: ")
				leia(senhaInserida)

				se (senhaInserida == senhaCorreta)
				{
					escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
					escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
					escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
					escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
					escreva("\n")
					
				} senao {
					escreva("\nSenha incorreta!\n")

					opcaoUsuario = 0
				}
				
			}

		 	
		}
		

	}
}
