-- Qual é o países com mais circuitos?

select country, count(country) 
from circuits 
group by country;

-- Quais pilotos com maior numero de corridas vencidas?

select driverId, count(driverId) 
from qualifying 
group by driverId;

-- Quais foram as voltas com menores e maiores tempos?

-- Maiores
select driverId,fastestLapTime
from results
order by fastestLapTime desc
limit 5;

-- Menores
select driverId,fastestLapTime
from results
order by fastestLapTime asc
limit 5;


-- Quais equipe/construtores ganharam mais corridas?


select constructorId,
	count(constructorId)
	from constructors
    group by constructorId;