use mysql;
CREATE TABLE `heartbeat` (
  `ts` int(11) DEFAULT NULL
);
CHANGE MASTER TO
MASTER_HOST='mymon-master',
MASTER_PORT=3306,
MASTER_USER='slave',
MASTER_PASSWORD='mypassword',
MASTER_LOG_FILE='binlog.000002',
MASTER_LOG_POS=155;
START slave;