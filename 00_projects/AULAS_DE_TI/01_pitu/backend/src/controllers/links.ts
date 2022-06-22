import {Request, Response} from 'express';
import {Link} from '../models/link';

const links : Link[] = [];
let proxId = 1;

function generateCode() {
    let text = '';
    const possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    for (let i=0; i<5; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
}

function postLink(req: Request, res: Response) {
    const link = req.body as Link;
    link.id = proxId++;
    link.code = generateCode();
    link.hits = 0;
    links.push(link);
    // res.send('postLink');
    res.status(201).json(link);
}
function getLink(req: Request, res: Response) {
    res.send('getLink');
}
function hitLink(req: Request, res: Response) {
    res.send('hitLink');
}

export default {
    postLink,
    getLink,
    hitLink
}

