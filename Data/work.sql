SELECT * 
FROM transaction


SELECT *
FROM card_holder 

SELECT b.id_holder , a.amount , a.date , a.card
FROM transaction as a 
JOIN card_holder as b ON a.id = b.id_holder
WHERE b.id_holder = 18 OR b.id_holder = 2

SELECT *
FROM credit_card 

SELECT * 
FROM transaction 
WHERE card = '675911140852'