programa
{
	
	funcao inicio()
	{
		inteiro opcaoUsuario, alissonFreitas = 0, joseAilton = 0, claudiaAmara = 0, luziaSantos = 0, branco = 0, nulo = 0
		cadeia votar = ""

		faca {
			escreva("\nEmitir candidato a eleição?")
			escreva("\nOpção [s/n]: ")
			leia(votar)

			se (votar == "n") {
				pare
			}
			
			escreva("\n\"Candidatos a prefeitura\"\n")	// candidatos
		
			escreva("\n45. Alisson Freitas [PTC]")	// 0
			escreva("\n13. José Ailton [PTA]")		// 1
			escreva("\n12. Cláudia Amara [PTD]")	// 2
			escreva("\n22. Luzia Santos [PTF]\n")	// 3
		
			escreva("\n11. Branco")	// 4
			escreva("\n10. Nulo\n")	// 5

			escreva("\nOpção: ")
			leia(opcaoUsuario)

			se (opcaoUsuario == 45) {
				alissonFreitas++
			} senao se(opcaoUsuario == 13) {
				joseAilton++
			} senao se(opcaoUsuario == 12) {
				claudiaAmara++
			} senao se(opcaoUsuario == 22) {
				luziaSantos++
			} senao se(opcaoUsuario == 11) {
				branco++
			} senao se(opcaoUsuario == 10) {
				nulo++
			} senao {
				escreva("\nValor inválido!\n")
			}

			escreva("\n----------------------------------------\n")

		} enquanto (votar != "n")

		escreva("\n\"Votos dos Candidatos\"\n")

		escreva("\n45. Alisson Freitas [PTC] - Votos: " + alissonFreitas)
		escreva("\n13. José Ailton [PTA]     - Votos: " + joseAilton)
		escreva("\n12. Cláudia Amara [PTD]   - Votos: " + claudiaAmara)
		escreva("\n22. Luzia Santos [PTF]    - Votos: " + luziaSantos)
		escreva("\n11. Branco                - Votos: " + branco)
		escreva("\n10. Nulo                  - Votos: " + nulo)
		escreva("\n")
	}
}
