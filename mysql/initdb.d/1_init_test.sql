
-- データベースの作成
CREATE DATABASE `mysql_test`;

-- ユーザーの作成
CREATE USER `docker`@`%` IDENTIFIED BY 'docker';
GRANT ALL PRIVILEGES ON `mysql\_test`.* TO `docker`@`%`;
FLUSH PRIVILEGES;

-- テーブルの作成とデータ挿入
use `mysql_test`;
CREATE TABLE `users` (`id` int, `name` varchar(255));
INSERT INTO `users` (id, name) VALUES (1, 'test_user');
