const squares = document.querySelectorAll(".square");
const resetButton = document.querySelector("#reset");
let currentPlayer = "X";

function handleSquareClick(event) {
  const square = event.target;
  if (square.textContent !== "") {
    return;
  }
  square.classList.add(currentPlayer.toLowerCase());
  square.textContent = currentPlayer;
  currentPlayer = currentPlayer === "X" ? "O" : "X";
}

function resetGame() {
  squares.forEach((square) => {
    square.classList.remove("x", "o");
    square.textContent = "";
  });
  currentPlayer = "X";
}

squares.forEach((square) => {
  square.addEventListener("click", handleSquareClick);
});

resetButton.addEventListener("click", resetGame);
