--- Generated from Progress 11.7
set names utf8mb4;
create database if not exists psc;
use psc;
drop table if exists salesrep;
create table salesrep (
    `repname`   varchar (60),
    `region`    varchar (16),
    `salesrep`  varchar (8),
    `monthquota_1`    integer default 0,
    `monthquota_2`    integer default 0,
    `monthquota_3`    integer default 0,
    `monthquota_4`    integer default 0,
    `monthquota_5`    integer default 0,
    `monthquota_6`    integer default 0,
    `monthquota_7`    integer default 0,
    `monthquota_8`    integer default 0,
    `monthquota_9`    integer default 0,
    `monthquota_10`    integer default 0,
    `monthquota_11`    integer default 0,
    `monthquota_12`    integer default 0
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8; 

insert into `salesrep` values
('Brawn , Bubba B.','East','BBB','1600','1648','1697','1748','1800','1854','1910','1967','2026','2087','2150','2215'),
('Pitt , Dirk K.','Central','DKP','1800','1854','1910','1967','2026','2087','2150','2215','2281','2349','2419','2492'),
('Donna Swindall','Southern','DOS','3800','3914','4031','4152','4277','4405','4537','4673','4813','4957','5106','5259'),
('Gilles Ehrer','Bretagne','GPE','1600','1648','1697','1748','1800','1854','1910','1967','2026','2087','2150','2215'),
('Harry Munvig','Sverige','HXM','3800','3914','4031','4152','4277','4405','4537','4673','4813','4957','5106','5259'),
('Jan Loopsnel','Noord','JAL','2200','2266','2334','2404','2476','2550','2627','2706','2787','2871','2957','3046'),
('Kari Iso-Kauppinen','Finland','KIK','1800','1854','1910','1967','2026','2087','2150','2215','2281','2349','2419','2492'),
('Robert Roller','Austria','RDR','4200','4326','4456','4590','4728','4870','5016','5166','5321','5481','5645','5814'),
('Smith , Spike Louise','West','SLS','3000','3090','3183','3278','3376','3477','3581','3688','3799','3913','4030','4151');
