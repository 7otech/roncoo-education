
update course_video set period_id=0;

alter table course_video change column `period_id` `period_id` bigint(20) not null DEFAULT 0 COMMENT 'ID';