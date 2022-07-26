const { v4: uuidv4 } = require('uuid')

require('../resources/db/connection')()

const SecretModel = require('../resources/db/models/Secret')

module.exports.create = async (event, context) => {

    context.callbackWaitsForEmptyLoop = false

    const { name, email } = JSON.parse(event.body)

    const externalId = uuidv4();
    const adminKey = uuidv4();

    try {
        await SecretModel.create({
            owner: name,
            ownerEmail: email,
            adminKey,
            externalId,
        })
    } catch (error) {
        return {
            statusCode: 500,
            body: JSON.stringfy({
                success: false,
            }),
        }
    }
}

module.exports.get = async (event) => {

}

module.exports.draw = async (event) => {

}