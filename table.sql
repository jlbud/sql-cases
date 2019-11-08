-- 增加字段
USE dhr;
ALTER TABLE `table_name` ADD COLUMN `column_name` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '这是对字段的描述' AFTER `column_name`,
                        ADD COLUMN `column_name` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '这是对字段的描述' AFTER `column_name`;

-- 修改字段属性
use db_name;
ALTER TABLE `table_name` modify column `column_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '这是对字段的描述';

-- 修改字段的值
use db_name;
UPDATE table_name SET images='[]' WHERE images='' OR images=NULL or images='null';

-- 显示表结构
-- 只显示缩略字段
desc table_name;
-- 显示所有字段
show full fields from table_name;