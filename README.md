# DREV - DRE Viewer 
Luiz Servelo, Deborah Ribeiro Carvalho

Download do sistema: https://github.com/luizservelo/drev-tcc/archive/master.zip

O sistema está feito em PHP, HTML, CSS e JavaScript.

Temos as camadas Model, View e Controller (MVC) com suas respectivas responsabilidades. 

## Instalação

Para instalar o sistema é preciso ter uma infra-estrutura com: 
	
	PHP >= 5.6
	MySQL ou MariaBD

Para instalar deve-se colocar os arquivos do projeto dentro da raiz do servidor e conectar com o banco de dados no arquivo 'model/Config.inc.php' e estar a url desejada para funcionamento da aplicação

## Features e Modificações

	Comparação OK
	Filtros OK
	Upload em Collections OK
	Otimização de código OK 

## Uso da Ferramenta

Após a instalação, deve ser criado uma conta para a utilização da ferramenta. 
Para subir um processamento, deve compactar em zip o conteúdo de saída do DRE para otimizar o processamento. 
Na aba "Novo Processamento" crie uma coleção e envie um arquivo para a mesma, lembrando que o arquivo deve estar compactado em zip.
Para visualizar o processamento basta apenas ir em "Meus processamentos" e clicar dentro no botão azul com o ícone de olho.
Na página de visualização basta escolher o consequente e o antecedente para denominar uma regra geral e gerar o grafo com as respectivas regras de exceções.
Dentro da página de visualização, pode-se escolher outro processamento de mesma natureza para realizar a comparação gráfica entre os processamentos.
	
