import { Request, Response } from "express";
import { Link } from "../models/link";
import linksRepository from "../models/linksRepository";

const generateCode = () => {
  let text = "";
  const possible =
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  for (let i = 0; i < 5; i++) {
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  }

  return text;
};

const postLink = async (request: Request, response: Response) => {
  const link = request.body as Link;

  link.code = generateCode();
  link.hits = 0;
  const result = await linksRepository.add(link);

  if (!result.id) {
    return response.sendStatus(400);
  }

  link.id = result.id!;

  return response.status(201).json(link);
};

const getLink = async (request: Request, response: Response) => {
  const code = request.params.code as string;
  const link = await linksRepository.findByCode(code);

  if (!link) {
    return response.sendStatus(404);
  }

  return response.json(link);
};

const hitLink = async (request: Request, response: Response) => {
  const code = request.params.code as string;
  const link = await linksRepository.hit(code);

  if (!link) {
    return response.sendStatus(404);
  }

  return response.json(link);
};

export default {
  postLink,
  getLink,
  hitLink
};
