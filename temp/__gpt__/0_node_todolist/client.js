const request = require('request');

const options = {
    url: 'http://localhost:3000/tasks',
    method: 'POST',
    json: {
        task: 'Comprar leite'
    }
};

request(options, (error, response, body) => {
    if (!error && response.statusCode === 200) {
        console.log(body);
    }
});