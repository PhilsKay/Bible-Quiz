CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(150) NOT NULL,
    `ProductVersion` varchar(32) NOT NULL,
    PRIMARY KEY (`MigrationId`)
);

START TRANSACTION;

IF NOT EXISTS(SELECT * FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20211007122535_AddIdentity')
BEGIN
    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20211007122535_AddIdentity', '5.0.10');
END;

COMMIT;

START TRANSACTION;

IF NOT EXISTS(SELECT * FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20211007124625_AddQuiz')
BEGIN
    CREATE TABLE `Quiz` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Question` varchar(500) NOT NULL,
        `Answer` varchar(500) NOT NULL,
        `ReleasedDate` text NOT NULL,
        PRIMARY KEY (`Id`)
    );
END;

IF NOT EXISTS(SELECT * FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20211007124625_AddQuiz')
BEGIN
    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20211007124625_AddQuiz', '5.0.10');
END;

COMMIT;

