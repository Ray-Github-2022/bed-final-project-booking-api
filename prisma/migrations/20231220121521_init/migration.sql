/*
  Warnings:

  - Added the required column `pricePerNight` to the `Property` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Property` ADD COLUMN `pricePerNight` DECIMAL(10, 2) NOT NULL;

-- CreateTable
CREATE TABLE `_BookingToProperty` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_BookingToProperty_AB_unique`(`A`, `B`),
    INDEX `_BookingToProperty_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
