const mongoose = require('mongoose')

let conn = null

const URI = 'mongodb+srv://hugonbr:nDjQFXOAtIERUBTy@cluster0.ysjon.mongodb.net/secret?retryWrites=true&w=majority'
// const URI = 'mongodb+srv://hugonbr:hugo@#357@cluster0.ysjon.mongodb.net/secret?retryWrites=true&w=majority'

// 'mongodb+srv://hugonbr:<password>@cluster0.ysjon.mongodb.net/?retryWrites=true&w=majority'

module.exports = async () => {
    if (!conn) {
        // conn = mongoose.connect(URI)
        conn = mongoose.connect(URI, {
            useNewUrlParser: true,
            // useCreateIndex: true,
        })

        await conn
    }
}