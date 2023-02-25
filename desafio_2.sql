use mydb;

SELECT ID, Cliente FROM desafio
WHERE YEAR(Data_da_Venda) = '2020';

SELECT Vendedor, Equipe
FROM desafio
GROUP BY Vendedor, Equipe;

SELECT QUARTER(Data_da_Venda), YEAR(Data_da_Venda), SUM(Valor)
FROM desafio
GROUP BY QUARTER(Data_da_Venda), YEAR(Data_da_Venda)
ORDER BY YEAR(Data_da_Venda), QUARTER(Data_da_Venda);