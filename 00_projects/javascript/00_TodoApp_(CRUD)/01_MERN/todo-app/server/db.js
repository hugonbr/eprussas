const mongoose = require('mongoose');

module.exports = async () => {
    try {
        const connectionParams = {
            useNewUrlParser: true,
            useCreatelndex: true,
            useUnifiedTopology: true
        };
        await mongoose.connect(
            "mongodb://127.0.0.1:27017/todo-app"
            // mongodb://localhost:27017/myapp
        );
        console.log("Connected to database.");
    } catch (error) {
        console.log("Could not connect to database.", error);
    }
}