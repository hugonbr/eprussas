"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const links = [];
let proxId = 1;
function generateCode() {
    let text = '';
    const possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    for (let i = 0; i < 5; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
}
function postLink(req, res) {
    const link = req.body;
    link.id = proxId++;
    link.code = generateCode();
    link.hits = 0;
    links.push(link);
    // res.send('postLink');
    res.status(201).json(link);
}
function getLink(req, res) {
    const code = req.params.code;
    const link = links.find(item => item.code === code);
    if (!link) {
        res.sendStatus(404);
    }
    else {
        res.json(link);
    }
}
function hitLink(req, res) {
    const code = req.params.code;
    const index = links.findIndex(item => item.code === code);
    if (index === -1) {
        res.sendStatus(404);
    }
    else {
        links[index].hits++;
        res.json(links[index]);
    }
}
exports.default = {
    postLink,
    getLink,
    hitLink
};
