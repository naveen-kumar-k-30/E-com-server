/*
  Warnings:

  - You are about to drop the `AddToCart` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "AddToCart" DROP CONSTRAINT "AddToCart_cardItemId_fkey";

-- DropTable
DROP TABLE "AddToCart";
