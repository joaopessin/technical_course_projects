programa
{
	
	funcao inicio()
	{
		real totalRebocoMensal = 0.0, monetizacaoDiaria = 0.0
		inteiro diasUteis = 22
		
		escreva("\"Alvenaria\"\n")
		
		escreva("\nInforme o total de reboco produzido no mês (m²): ")
		leia(totalRebocoMensal)

		real producaoMediaDiaria = totalRebocoMensal / diasUteis

		se (producaoMediaDiaria <= 40)
		{
			monetizacaoDiaria = producaoMediaDiaria * 9.8
		} senao {
			monetizacaoDiaria = producaoMediaDiaria * 10
		}

		real valorBruto = monetizacaoDiaria * diasUteis

		escreva("\nQuantidade de dias úteis no mês: " + diasUteis)
		escreva("\nProdução média diária (m²): " + producaoMediaDiaria)
		escreva("\nMonetização média diária: R$" + monetizacaoDiaria)
		escreva("\nValor bruto a ser pago: R$" + valorBruto)
		escreva("\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 783; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
