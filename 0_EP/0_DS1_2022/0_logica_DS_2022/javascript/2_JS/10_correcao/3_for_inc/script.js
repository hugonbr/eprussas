let r, t='';

r = document.getElementById("r");

for(let i = 1; i < 11; i++) {
    console.log(`${i};`);
    t += `${i};`;
}

r.innerHTML = t;