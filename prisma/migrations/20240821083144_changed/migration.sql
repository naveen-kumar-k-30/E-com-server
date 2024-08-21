/*
  Warnings:

  - You are about to drop the column `message` on the `Auth` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Auth" DROP COLUMN "message";

-- CreateTable
CREATE TABLE "AddToCart" (
    "id" SERIAL NOT NULL,
    "quantity" INTEGER NOT NULL DEFAULT 1,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "cardItemId" INTEGER NOT NULL,
    "authId" INTEGER NOT NULL,

    CONSTRAINT "AddToCart_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "AddToCart" ADD CONSTRAINT "AddToCart_cardItemId_fkey" FOREIGN KEY ("cardItemId") REFERENCES "CardItem"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AddToCart" ADD CONSTRAINT "AddToCart_authId_fkey" FOREIGN KEY ("authId") REFERENCES "Auth"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
