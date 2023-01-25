/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Profile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Profile" DROP CONSTRAINT "Profile_userId_fkey";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "Profile";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Candidate" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "title" VARCHAR(255),
    "name" VARCHAR(255) NOT NULL,
    "nickname" VARCHAR(255) NOT NULL,
    "province" VARCHAR(255) NOT NULL,
    "khet" INTEGER NOT NULL,
    "Amphur" VARCHAR(255) NOT NULL,
    "zip_code" VARCHAR(255) NOT NULL,
    "phone_no" VARCHAR(255) NOT NULL,
    "ss_term" INTEGER NOT NULL,
    "fb" VARCHAR(255) NOT NULL,
    "ig" VARCHAR(255) NOT NULL,
    "twitter" VARCHAR(255) NOT NULL,
    "line" VARCHAR(255) NOT NULL,
    "tiktok" VARCHAR(255) NOT NULL,
    "pic_url" VARCHAR(255) NOT NULL,
    "resume_url" VARCHAR(255) NOT NULL,
    "party_list_no" INTEGER NOT NULL,
    "result" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "Candidate_pkey" PRIMARY KEY ("id")
);
