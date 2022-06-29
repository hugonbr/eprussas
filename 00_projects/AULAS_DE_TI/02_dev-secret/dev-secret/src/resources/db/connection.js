const mongoose = require('mongoose')

let conn = null

const URI = ''

module.exports = async () => {
    if (!conn) {
        conn = mongoose.connect(URI, {
            useNewUrlParser: true,
            useCreateIndex: true,
        })

        await conn 
    }
}