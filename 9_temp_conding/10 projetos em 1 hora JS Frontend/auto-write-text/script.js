const text = "Morpheus: Unfortunately, no one can be told what The Matrix is. You'll have to see it for yourself.";

let index = 0;

function writeText() {
    document.body.innerText = text.slice(0, index);

    index++;

    if (index > text.length) {
        index = 0;
    }
}

setInterval(writeText, 100);
