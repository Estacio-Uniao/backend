import { User } from "@prisma/client";
import { prisma } from "../../../../prisma/client";

export class GetAllUsersUseCase {
  async execute(): Promise<User[]> {
    const users = await prisma.user.findMany();

    return users;
  }
}
