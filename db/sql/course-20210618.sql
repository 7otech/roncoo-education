
alter table course_video change column period_id `period_id` bigint(20) DEFAULT 0 COMMENT 'ID';

alter table course_video change column `period_id` `period_id` bigint(20) not null DEFAULT 0 COMMENT 'ID';