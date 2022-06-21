"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const links_1 = __importDefault(require("../controllers/links"));
const router = (0, express_1.Router)();
router.post('/links', links_1.default.postLink);
router.get('/links/:code', links_1.default.hitLink);
router.get('/links/:code/stats', links_1.default.getLink);
exports.default = router;
