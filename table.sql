-- 增加字段
USE dhr;
ALTER TABLE `table_name` ADD COLUMN `work_values` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '工作选择价值观状态（1未采集，2已采集，3不需要采集）' AFTER `normstar`;
   ADD COLUMN `key_expr` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关键经历状态（1未采集，2已采集，3不需要采集）' AFTER `normstar`;

-- 修改字段
use ssc;
ALTER TABLE table_name add images text NOT NULL COMMENT '图片地址';

-- 修改字段的值
use db_name;
UPDATE table_name SET images='[]' WHERE images='' OR images=NULL or images='null';

-- 显示表结构
-- 只显示缩略字段
desc table_name;
-- 显示所有字段
show full fields from table_name;