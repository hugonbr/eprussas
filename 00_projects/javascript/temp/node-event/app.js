const EventEmitter = require('events')

const customEmitter = new EventEmitter()

customEmitter.on('response', () => {
    console.log(`data recieved `)
})

customEmitter.emit('response')
customEmitter.emit('response')
customEmitter.emit('response')

