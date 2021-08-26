# INTEGRANTES:
# Felipe Rodrigues
# Larissa Nunes
# Marcos Spano
# Fernando Victor
# Luiz Gustavo

# Define a pasta de origem - o caractere "*" significa que iremos pegar tudo, arquivos e pastas. 
$sourcePath = "W:\Certified Tech Developer\2Bim\Front2\*"
 
# Define a pasta do drive de destino.
$destinyPath = "C:\Users\Louix\Documents\backup\"
 
# 1. Coloque a data atual no nome do seu backup;
$date = Get-Date -Format "dd-MM-yyyy HH-mm-ss UTC_-03-00"

# 2. Verifique se existem arquivos na pasta;
# 3. Remova o backup do dia anterior; (SE tem arquivos na pasta)
if(![System.IO.File]::Exists($destinyPath)){
    Remove-Item -Force -Recurse -Verbose "$destinyPath\*"
}

# Copia da origem para o destino
# O parâmetro "Recurse" diz que vai copiar todas as subpastas
# O parâmetro "Verbose" diz que as ações serão mostradas
# para gravar as ações realizadas em um arquivo de log,
# vamos direcionar a saída do comando para o arquivo que possui
# um nome composto por "log" mais a data
Copy-Item $sourcePath $destinyPath -Recurse -Verbose > "$destinyPath\log-$date.txt"