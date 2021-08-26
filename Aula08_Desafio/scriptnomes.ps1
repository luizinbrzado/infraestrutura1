foreach($nome in $(Get-Content -Path .\lista_nomes.txt)) {
	if ($nome -eq "Pedro") {
		Write-Output "Encontrou $nome"
	  } else {
		 $outrosNomes++
	  }	  
}