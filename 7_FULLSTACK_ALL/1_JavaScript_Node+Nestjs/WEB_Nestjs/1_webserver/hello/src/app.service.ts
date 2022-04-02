import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return '<p style="text-align: center;">Hello Server on nest.js</p>';
  }
}

//command
//npm run start