-- CreateTable
CREATE TABLE "AddToCart" (
    "id" SERIAL NOT NULL,
    "quantity" INTEGER NOT NULL DEFAULT 1,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "cardItemId" INTEGER NOT NULL,

    CONSTRAINT "AddToCart_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "AddToCart" ADD CONSTRAINT "AddToCart_cardItemId_fkey" FOREIGN KEY ("cardItemId") REFERENCES "CardItem"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
