# Projeto
# Primeira parte do desafio
A primeira etapa foi a importação da biblioteca Pandas, para entrada do aquivo "DB_Teste.csv". 

Em seguida foi feita uma visualização dos dados e iniciei a segunda etapa, que é o tratamento de dados, apagamos a coluna 'Unnamed: 10' que foi criada devido a forma do separador ';' que o arquivo vou salvo, logo em seguida verificamos se existia dados faltantes e dados duplicados, e depois verificamos o type dos dados de cada coluna, analisado, começamos tratamento das datas com a função to_datetime() da biblioteca Pandas, feito isso, tratamos a coluna "Valor" com a função replace(), alterando "R$" para "", "," para "." e utilizando a função astype() para alterar type para float, pra que fosse possível a manipulação.

Na terceira etapa foi feito a analise dos dados, na qual constuimos uma tabela com o valor vendido por cada vendedor, que foi feita utilizando a função groupby() para agrupalos, ordenamos logo em seguida do maior para o menor com a função sort_values() com o parâmetro ascending=False. Em seguida foi utilizado a função max() e min() para retornar o maior e o menor valor de uma venda feita ao cliente. Passando para próxima analise, foi utilizada novamentente a função groupby() os tipos da venda juntamente com a media do valor das vendas utilizando a função mean(), e por último foi foi utilizada a função value_counts(), para verificando os total de vendas a determinados clientes.

Por fim foi salvamos o dataframe tratado para ser utilizado na segunda parte do desafio.

# Segunda parte do desafio
Para a segunda etapa primeiramente foi feito um diagrama de um modelo relacional com as categorias do arquivo csv.

Na segunda parte implimentamos esse modelo na criação das tabelas no banco de dados MySQL, importamos o arquivo csv já tratado e começamos a analise.

Para terceira parte começamos listando todas as vendas (ID) e seus respectivos clientes apenas no ano de 2020, utilizando a linguagem SQL, foi utilizado os comandos SELECT para a chamada das colunas ID e Cliente, FROM para a chamada da tabela e WHERE para chama de acordo com o ano. Feito isso passamos para próxima etapa que era listar a equipe de cada vendedor, para isso utilizando os comandos SELECT e FROM novamentos, juntamento com GROUP BY para agrupar os dados. E por fim foi constuida uma tabela com os dados total do valor das vendas por trimeste em cada ano, utilizando SELECT, FROM, GROUP BY e  ORDEN BY (utilizado para ordenar de acordo com o parâmetro passado), juntamento com as funções QUARTER() que utilizada para retorna o trimeste do ano, SUM() para retorna a soma de todos os valores de determinado trimeste. Logo feito isso, foi salva essa tabela para criação de um gráfico desse histórico.

Para última parte foi importado essa tabela, visualizada, e alteranda o type das colunas 'YEAR(Data_da_Venda)', 'QUARTER(Data_da_Venda)' e juntando elas em uma só pra melhor compreensão. Por fim foi crinando um gráfico com os trimestres e total de suas respectivas vendas utilizado a biblioteca Matplotlib.