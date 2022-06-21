import {Request, Response} from 'express';
import {Link} from '../models/link';

const links : Link[] = [];
let proxId = 1;

function postLink(req: Request, res: Response) {
    const link = req.body as Link;
    link.id = proxId++;
    
    res.send('postLink');
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

