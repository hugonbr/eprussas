const { EventEmitter } = require('events');
const ev = new EventEmitter();

let cont = 0;

ev.on('saySomething', () => {
    console.log(`Eu ouvi você ${++cont}`);
});

ev.emit('saySomething');
ev.emit('saySomething');
ev.emit('saySomething');
ev.emit('saySomething');
ev.emit('saySomething');