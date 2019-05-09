use USAirlineFlights2;

-- Exercici 1
select Count(flightID) as TotalFlights
from Flights;

-- Exercici 2
select origin, avg(ArrDelay) as promig_arribades, avg(DepDelay) as promig_sortides
from Flights
group by origin;

-- Exercici 3
select origin, colYear, colMonth, avg(ArrDelay) as promig_arribades
from Flights
group by origin, colYear, colMonth
order by origin;

-- Exercici 4 
select City, colYear, colMonth, avg(ArrDelay) as promig_arribades
from USAirports, Flights
where Flights.Origin= USAirports.IATA
group by city, colYear, colMonth
order by city;

-- Exercici 5

select UniqueCarrier, colYear, colMonth, avg(ArrDelay), sum(cancelled) as total_Cancelled
from Flights
group by UniqueCarrier, colYear, colMonth
having total_Cancelled >0
order by total_Cancelled DESC;

-- Exercici 6

select TailNum, sum(Distance) as Total_Distance
from Flights
where TailNum like 'N%'
group by TailNum
order by Total_Distance desc
Limit 10;

-- Exercici 7

select UniqueCarrier, avg(ArrDelay) as avgDelay
from Flights
group by UniqueCarrier
having avgDelay>10
order by avgDelay desc;





