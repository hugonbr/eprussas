const { EventEmitter } = require('events');
const ev = new EventEmitter();

let cont = 0;

ev.on('saySomething', (message) => {
    console.log(`Ouvi ${++cont}: ${message}`);
});

ev.emit('saySomething', 'Hugo');
ev.emit('saySomething', 'Isso aqui também');
ev.emit('saySomething', 'E esse :)');
