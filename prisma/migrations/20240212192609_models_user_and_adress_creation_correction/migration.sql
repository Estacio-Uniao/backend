-- CreateTable
CREATE TABLE "adresses" (
    "id" TEXT NOT NULL,
    "uf" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "street" TEXT NOT NULL,
    "zip_code" TEXT NOT NULL,
    "neighborhood" TEXT NOT NULL,
    "additional_information" TEXT NOT NULL,
    "number" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "adresses_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "adresses" ADD CONSTRAINT "adresses_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
