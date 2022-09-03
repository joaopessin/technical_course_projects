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

					se ((ptc >= pta) e (ptc >= ptd) e (ptc >= ptf))	// PTC
					{
						escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)

						se ((pta >= ptd) e (pta >= ptf))	// PTA
						{
							escreva("\n13. José Ailton   [PTA] | Votos: " + pta)

							se (ptd >= pta)
							{
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
							} senao {
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
							}
						} senao se ((ptd >= pta) e (ptd >= ptf))	// PTD
						{
							escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)

							se (pta >= ptf)
							{
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
							} senao {
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
							}
						} senao se ((ptf >= pta) e (ptf >= ptd)) {	// PTF
							escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)

							se (pta >= ptd)
							{
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
							} senao {
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
							}
						}
					} senao se ((pta >= ptc) e (pta >= ptd) e (pta >= ptf))	// PTA
					{
						escreva("\n13. José Ailton   [PTA] | Votos: " + pta)

						se ((ptc >= ptd) e (ptc >= ptf))	// PTC
						{
							escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)

							se (ptd >= ptf)
							{
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
							} senao {
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
							}
						} senao se ((ptd >= ptc) e (ptd >= ptf))	// PTD
						{
							escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)

							se (ptc >= ptf)
							{
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
							} senao {
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
							}
						} senao se ((ptf >= ptc) e (ptf >= ptd)) {	// PTF
							escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)

							se (ptc >= ptd)
							{
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
							} senao {
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
							}
						}
					} senao se ((ptd >= ptc) e (ptd >= pta) e (ptd >= ptf))	// PTD
					{
						escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)

						se ((ptc >= pta) e (ptc >= ptf))	// PTC
						{
							escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)

							se (pta >= ptf)
							{
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
							} senao {
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
							}
						} senao se ((pta >= ptc) e (pta >= ptf))	// PTA
						{
							escreva("\n13. José Ailton   [PTA] | Votos: " + pta)

							se (ptc >= ptf)
							{
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
							} senao {
								escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
							}
						} senao se ((ptf >= ptc) e (ptf >= pta)) {	// PTF
							escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)

							se (ptc >= pta)
							{
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
							} senao {
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
							}
						}
					} senao se ((ptf >= ptc) e (ptf >= pta) e (ptf >= ptd))	// PTF
					{
						escreva("\n22. Luzia Santos  [PTF] | Votos: " + ptf)

						se ((ptc >= pta) e (ptc >= ptd))	// PTC
						{
							escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)

							se (pta >= ptd)
							{
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
							} senao {
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
							}
						} senao se ((pta >= ptc) e (pta >= ptd))	// PTA
						{
							escreva("\n13. José Ailton   [PTA] | Votos: " + pta)

							se (ptc >= ptd)
							{
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
							} senao {
								escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
							}
						} senao se ((ptd >= ptc) e (ptd >= pta)) {	// PTD
							escreva("\n12. Cláudia Amara [PTD] | Votos: " + ptd)

							se (ptc >= pta)
							{
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
							} senao {
								escreva("\n13. José Ailton   [PTA] | Votos: " + pta)
								escreva("\n45. Alisson Reis  [PTC] | Votos: " + ptc)
							}
						}
					}

					inteiro totalVotos = ptc + ptd + pta + ptf, metadeVotos = (totalVotos / 2)

					escreva("\n")

					se (ptc >= metadeVotos)
					{
						escreva("\nAlisson Reis do partido PTC [45] GANHOU a eleição!")
					} senao se (ptd >= metadeVotos)
					{
						escreva("\nCláudia Amara do partido PTD [12] GANHOU a eleição!")
					} senao se (pta >= metadeVotos)
					{
						escreva("\nJosé Ailton do partido PTA [13] GANHOU a eleição!")
					} senao se (ptf >= metadeVotos)
					{
						escreva("\nLuzia Santos do partido PTF [22] GANHOU a eleição!")
					} senao {
						escreva("\nHaverá 2º TURNO!")
					}
					
					escreva("\n")
					
				} senao {
					escreva("\nSenha incorreta!\n")

					opcaoUsuario = 0
				}
				
			}
		 	
		}

	}
}
