#define a pasta de origem - o caractere "*" significa que iremos pegar tudo, arquivos e pastas. 
$sourcePath = "W:\Certified Tech Developer\2Bim\Front2\*"
 
#define a pasta do drive de destino.
$destinyPath = "C:\Users\Louix\Documents\backup\"
 
#pega a data atual no formato dia-mês-ano para fazer o arquivo de log
$date = Get-Date -Format d-M-yyy
 
#Copia da origem para o destino
#O parâmetro "Recurse" diz que vai copiar todas as subpastas
#O parâmetro "Verbose" diz que as ações serão mostradas
#para gravar as ações realizadas em um arquivo de log,
#vamos direcionar a saída do comando para o arquivo que possui um nome composto por "log" mais a data
Copy-Item $sourcePath $destinyPath -Recurse -Verbose > "$destinyPath\log-$date.txt"