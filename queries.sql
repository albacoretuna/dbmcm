INSERT INTO `seyedhe`.`Belonging` (`id`, `DateAdded`, `Privacy`, `PhotoURL`, `Category`, `Description`, `Name`, `RecyclingNotes`, `PurchasePrice`, `SellingPrice`, `DateBought`, `GaurantyInfo`, `owner`) VALUES (NULL, '2014-11-18', 'private', 'http://i1368.photobucket.com/albums/ag162/ommmmid/fsdetchphp_zpse0f15af6.jpg', '1', 'A new Raspberry PI', 'Raspberry PI', 'Special centers in Espoo', '30', '10', '2014-09-08', 'none', '1');


INSERT INTO `seyedhe`.`Person` (`id`, `FullName`, `NickName`, `BirthDate`, `Email`, `Address`, `Password`) VALUES (NULL, 'Anton Chernenko', 'Anton', '2013-09-17', 'anton@mail.com', 'Kunikatu 29', 'antonpasswd');


INSERT INTO `seyedhe`.`Friendship` (`id`, `person1`, `person2`) VALUES (NULL, '1', '3');



INSERT INTO `seyedhe`.`lendandborrow` (`id`, `LenderID`, `Date`, `ReturnEstimation`, `BorrowerID`, `BelongingID`) VALUES (NULL, '1', '2014-11-18', '2014-12-01', '3', '1');


INSERT INTO `seyedhe`.`Belonging` (`id`, `DateAdded`, `Privacy`, `PhotoURL`, `Category`, `Description`, `Name`, `RecyclingNotes`, `PurchasePrice`, `SellingPrice`, `DateBought`, `GaurantyInfo`, `owner`) VALUES (NULL, '2014-10-13', 'public', 'http://i1368.photobucket.com/albums/ag162/ommmmid/e324e787-a527-4f42-99f9-2357dd0fb6fa_zps0287e9f7.jpg', '1', 'A xbee client ', 'xbee client', 'Special centers in finland', '150', '20', '2014-07-09', 'ends in jan 2015', '3');


SELECT * FROM `Belonging` WHERE `Name` LIKE '%Rasp%' 


SELECT * FROM `Belonging` WHERE `Name` LIKE '%Rasp%' AND `Privacy` = 'Public' 
