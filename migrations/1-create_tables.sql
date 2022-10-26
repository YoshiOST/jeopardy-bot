CREATE TABLE `discord_channel` 
(
    `id` BIGINT(36) UNSIGNED AUTO_INCREMENT NOT NULL,
    `channel_id` BIGINT(36) NOT NULL,
    `channel_state` TINYINT(1) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

CREATE TABLE `discord_user`
(
    `id` BIGINT(36) UNSIGNED AUTO_INCREMENT NOT NULL,
    `discord_id` BIGINT(36) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

CREATE TABLE `jeopardy_account`
(
    `id` BIGINT(36) UNSIGNED AUTO_INCREMENT NOT NULL,
    `discord_id` BIGINT(36) NOT NULL,
    `correct_answers` INT(36) NOT NULL,
    `wrong_answers` INT(36) NOT NULL,
    `money` INT(36) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);