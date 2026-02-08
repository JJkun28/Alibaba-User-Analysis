create database if not exists ali_analysis;
use ali_analysis;

create table user_behavior(
	user_id INT,
	item_id INT,
	category_id INT,
	behavior_type VARCHAR(10),
	timestamp INT,
	datetime DATETIME
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

alter table user_behavior ADD INDEX idx_user_id (user_id);
alter table user_behavior add index idx_datetime (datetime);
alter table user_behavior ADD INDEX idx_behavior_time (behavior_type, datetime);