/*Авто стоимостью больше 90 тыс руб. */
-- SELECT Brand,Model,Year, SaleRate AS Цена_Аренды_в_сутки FROM car WHERE (SaleRate > 90000);

/*Авто от 2023 года выпуска. */
-- SELECT Brand,Model,Year AS Год From car WHERE (Year>=2023);
    
/* Авто с рейтингом 5 и отзывы*/
-- SELECT RatingValue,CarID,Review  FROM rating WHERE  RatingValue=5;

/* Авто фирмы Mercedes */
-- SELECT * FROM car WHERE Brand="Mercedes";

/*--SELECT user.FirstName, user.LastName, reservation.CarID As Номер_автомобиля
	From user,reservation 
	WHERE (user.FirstName="Roman");*/
/*--SELECT user.FirstName, user.LastName, reservation.CarID, reservation.EndDate As Окончание_аренды
	From user,reservation 
	WHERE (user.FirstName="Roman");*/
    
/* Свободные авто стоимостью до 80 тыс. руб. */
/*SELECT car.CarID,car.Brand,car.Model,car.Year,car.SaleRate
	From car 
	LEFT JOIN reservation ON car.CarID=reservation.CarID
	WHERE car.CarID NOT IN (SELECT reservation.CarID FROM reservation) AND car.SaleRate<=80000 */
    
/* Свободные авто */
/*SELECT car.CarID,car.Brand,car.Model,car.Year,car.SaleRate
	From car 
	LEFT JOIN reservation ON car.CarID=reservation.CarID
	WHERE car.CarID NOT IN (SELECT reservation.CarID FROM reservation);*/

/* */
-- UPDATE car SET Rate =Rate-(Rate*0.1) WHERE Brand = "Nissan";

/*Пользователи, которые зарезервировали авто BMW*/
/*SELECT user.FirstName, user.LastName, user.Email, car.Brand, car.Model, car.Year, car.SaleRate
	FROM reservation
	LEFT JOIN car ON reservation.CarID =car.CarID
	LEFT JOIN user ON reservation.UserId =user.UserId
	WHERE car.Brand = "BMW";*/

/**/
/*SELECT user.FirstName, user.LastName,user.Email, car.Brand, car.Model, car.Year, car.SaleRate
	FROM reservation
	LEFT JOIN car ON reservation.CarID =car.CarID
	LEFT JOIN user ON reservation.UserId =user.UserId
	WHERE reservation.StartDate BETWEEN "2023-10-16 1:00:00" AND "2023-10-30 23:59:00";*/
