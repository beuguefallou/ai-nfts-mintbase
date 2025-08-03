/*
  Warnings:

  - You are about to drop the column `email` on the `prediction` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `Prediction_email_key` ON `prediction`;

-- AlterTable
ALTER TABLE `prediction` DROP COLUMN `email`,
    ADD COLUMN `completed_at` DATETIME(3) NULL,
    ADD COLUMN `created_at` DATETIME(3) NULL,
    ADD COLUMN `metrics` JSON NULL,
    ADD COLUMN `started_at` DATETIME(3) NULL,
    ADD COLUMN `status` VARCHAR(191) NULL,
    MODIFY `logs` TEXT NULL;
