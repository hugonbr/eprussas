const mongoose = require('mongoose')

let conn = null

const URI = 'mongodb+srv://hugonbr:<hugo@#357>@cluster0.ysjon.mongodb.net/secret?retryWrites=true&w=majority'

module.exports = async () => {
    if (!conn) {
        conn = mongoose.connect(URI, {
            useNewUrlParser: true,
            useCreateIndex: true,
        })

        await conn
    }
}