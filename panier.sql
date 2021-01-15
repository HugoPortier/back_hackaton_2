DROP TABLE IF EXISTS panier;
create table `panier`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(50) NOT NULL,
    `effet` VARCHAR(200) NOT NULL,
    `image` VARCHAR(200) NOT NULL,
    `duration` VARCHAR(15) NOT NULL,
    `age_min` VARCHAR(20) NULL,
    `age_max` VARCHAR(20) NULL,
    `categorie` VARCHAR(20) NOT NULL,
    `prix` VARCHAR(50) NOT NULL,
    PRIMARY KEY(`id`)
    );