CREATE TABLE `Customer_details` (
	`customer_id` VARCHAR(25)  NULL,
	`customer_name` VARCHAR(25)  NULL,
	`customer_address` VARCHAR(25)  NULL,
	`phone_number` VARCHAR(25)  NULL
);



LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\admin\\OneDrive\\Desktop\\Customer_details.csv' REPLACE INTO TABLE `tea`.`customer_details` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`customer_id`, `customer_name`, `customer_address`, `phone_number`);



CREATE TABLE `order_details` (
	`order_id` VARCHAR(50) NULL DEFAULT NULL,
	`order_date` DATE NULL,
	`quantity` INT(15) NULL,
	`price` INT(15) NULL,
	`customer_id` VARCHAR(50) NULL DEFAULT NULL
);


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\admin\\OneDrive\\Desktop\\order_details.csv' REPLACE INTO TABLE `tea`.`order_details` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`order_id`, `order_date`, `quantity`, `price`, `customer_id`);


CREATE TABLE `order_status` (
	`order_status_id` VARCHAR(25) NULL DEFAULT NULL,
	`order_id` VARCHAR(25) NULL DEFAULT NULL,
	`process` VARCHAR(25) NULL DEFAULT NULL
);


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\admin\\OneDrive\\Desktop\\order_status.csv' REPLACE INTO TABLE `tea`.`order_status` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`order_status_id`, `order_id`, `process`);

CREATE TABLE `payment` (
	`payment_id` VARCHAR(25) NULL DEFAULT NULL,
	`method` VARCHAR(25) NULL DEFAULT NULL,
	`pay_status` VARCHAR(25) NULL DEFAULT NULL,
	`amount` FLOAT NULL DEFAULT NULL,
	`customer_id` VARCHAR(25) NULL DEFAULT NULL
);


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\admin\\OneDrive\\Desktop\\payment.csv' REPLACE INTO TABLE `tea`.`payment` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`payment_id`, `method`, `pay_status`, `amount`, `customer_id`);


CREATE TABLE `review` (
	`review_id` VARCHAR(54) NULL DEFAULT NULL,
	`Customer_name` VARCHAR(45) NULL DEFAULT NULL,
	`comment` VARCHAR(43) NULL DEFAULT NULL
);


LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\admin\\OneDrive\\Desktop\\review.csv' REPLACE INTO TABLE `tea`.`review` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY ',' ESCAPED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`review_id`, `Customer_name`, `comment`);
