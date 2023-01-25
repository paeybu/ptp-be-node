import express from 'express';
import { PrismaClient } from '@prisma/client';
const app = express();
const port = 8080;

const prisma = new PrismaClient();

app.get('/api', (req, res) => {
  res.send('Hello World!');
});

app.get('/api/candidates', async (req, res) => {
  const candidates = await prisma.candidate.findMany();
  res.json(candidates);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
