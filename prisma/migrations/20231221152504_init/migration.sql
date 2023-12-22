/*
  Warnings:

  - You are about to drop the `_BookingToProperty` table. If the table is not empty, all the data it contains will be lost.
  - Made the column `userId` on table `Review` required. This step will fail if there are existing NULL values in that column.
  - Made the column `propertyId` on table `Review` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `Host` MODIFY `profilePicture` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Review` MODIFY `userId` VARCHAR(191) NOT NULL,
    MODIFY `propertyId` VARCHAR(191) NOT NULL,
    MODIFY `comment` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `User` MODIFY `profilePicture` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `_BookingToProperty`;

-- CreateTable
CREATE TABLE `_AmenityToProperty` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_AmenityToProperty_AB_unique`(`A`, `B`),
    INDEX `_AmenityToProperty_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE INDEX `Booking_userId_idx` ON `Booking`(`userId`);

-- CreateIndex
CREATE INDEX `Booking_propertyId_idx` ON `Booking`(`propertyId`);

-- CreateIndex
CREATE INDEX `Property_hostId_idx` ON `Property`(`hostId`);

-- CreateIndex
CREATE INDEX `Property_title_idx` ON `Property`(`title`);

-- CreateIndex
CREATE INDEX `Property_location_idx` ON `Property`(`location`);

-- CreateIndex
CREATE INDEX `Review_propertyId_idx` ON `Review`(`propertyId`);

-- CreateIndex
CREATE INDEX `Review_userId_idx` ON `Review`(`userId`);
