-- @author Manjunath Asundi
INSERT IGNORE INTO `role` VALUES
(1,'ADMIN'),
(2,'MANAGER'),
(3,'EMPLOYEE'),
(4,'SPONSOR'),
(5,'PARTNER');

INSERT IGNORE INTO `address`
(`id`,`area`,`city`,`country`,`created_time`,`pincode`,`state`,`updated_time`)
VALUES
(1, 'Vijayanagar','Bangalore','india', CURRENT_TIMESTAMP, '560040',
'Karnataka', CURRENT_TIMESTAMP);

INSERT IGNORE INTO `corporate`
(`id`,`gst`,`created_time`,`name`, `client_spoc_name`, `client_spoc_email`,`client_spoc_phone`,`updated_time` , `is_deleted`, `address_id`)
VALUES
(1, '22AAA1EA000', CURRENT_TIMESTAMP, 'sample-app', 'manjunath asundi', 'manjunathasundi07@gmail.com', '+919886988915', CURRENT_TIMESTAMP, 0, 1);

INSERT IGNORE INTO `corporate_domain`(`id`, `name`, `corporate_id`)
VALUES
(1, 'gmail.com', 1),
(2, 'live.com', 1);

INSERT IGNORE INTO `user`
(`id`,`created_time`,`email`,`fname`,`lname`,`gender`,`password`,`phone`,`updated_time`,`user_name`,`is_enabled`,`is_deleted`,`created_by`,`updated_by`)
VALUES
(1,CURRENT_TIMESTAMP,'manjunathasundi39@gmail.com','manjunath','asundi','Male','$2y$12$7irYwQ5YC/tg2HAUhJjZSueCTeLwj3d54nlKt.xVpxGNnl/Y8NHOW',
'+918217641688', current_timestamp, 'manjunath@gmail.com', 1, 0, 'system', 'system'); 

INSERT IGNORE INTO `user`
(`id`,`created_time`,`email`,`fname`,`lname`,`gender`,`password`,`phone`,`updated_time`,`user_name`,`is_enabled`,`is_deleted`,`created_by`,`updated_by`)
VALUES
(2,CURRENT_TIMESTAMP,'manju@gmail.com','Manjunath','Asundi','Male','$2y$12$.ZC6TtcDHsNilus1OEgd3eOcFFqwBEP4iY0x.2JBjppI7nr4vc0ym',
'+919886988915', current_timestamp, 'manju@gmail.com', 1, 0, 'manjunath@gmail.com', 'manjunath@gmail.com'); 

INSERT IGNORE INTO `user_role` 
VALUES(1,1),(2,2);

INSERT IGNORE INTO `corporate_employee` 
VALUES(1,1),(1,2);