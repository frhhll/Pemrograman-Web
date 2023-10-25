const resultElement = document.querySelector('[name="result"]');
const calculatorButtons = document.querySelectorAll(".cal-button");

let SecondInput = "";
let calculateOperator = "";
let FirstInput = "";

function displayResult() {
  resultElement.textContent = SecondInput;
}

function handleInput(value) {
  if (value === "=") {
    if (SecondInput && FirstInput && calculateOperator) {
      switch (calculateOperator) {
        case "+":
          SecondInput = parseFloat(FirstInput) + parseFloat(SecondInput);
          break;
        case "-":
          SecondInput = parseFloat(FirstInput) - parseFloat(SecondInput);
          break;
        case "*":
          SecondInput = parseFloat(FirstInput) * parseFloat(SecondInput);
          break;
        case "/":
          SecondInput = parseFloat(FirstInput) / parseFloat(SecondInput);
          break;
        case "^":
          SecondInput = parseFloat(Math.pow(FirstInput, SecondInput));
          break;
        case "mod":
          SecondInput = parseFloat(FirstInput) % parseFloat(SecondInput);
          break;
      }
      FirstInput = "";
      calculateOperator = "";
    }
  } else if (value === "ac") {
    SecondInput = "";
    FirstInput = "";
    calculateOperator = "";
  } else if (value === "de") {
    SecondInput = SecondInput.slice(0, -1);
  } else if (["+", "-", "*", "/", "^", "mod"].includes(value)) {
    if (SecondInput && FirstInput && calculateOperator) {
      handleInput("=");
    }
    calculateOperator = value;
    FirstInput = SecondInput;
    SecondInput = "";
  } else {
    SecondInput += value;
  }
  displayResult();
}

calculatorButtons.forEach((button) => {
  const value = button.getAttribute("value");
  button.addEventListener("click", () => {
    handleInput(value);
  });
});

displayResult();
