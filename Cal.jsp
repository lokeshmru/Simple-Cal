<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Calculator</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script>
        function calculate() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var operator = document.getElementById("operator").value;
            var result;

            if (isNaN(num1) || isNaN(num2)) {
                result = "Enter valid numbers!";
            } else {
                switch (operator) {
                    case "+": result = num1 + num2; break;
                    case "-": result = num1 - num2; break;
                    case "*": result = num1 * num2; break;
                    case "/": result = num2 !== 0 ? num1 / num2 : "Cannot divide by zero"; break;
                    default: result = "Invalid Operation!";
                }
            }
            document.getElementById("result").innerHTML = "Result: " + result;
        }
    </script>
</head>
<body>
    <div class="calculator">
        <h2>Simple Calculator</h2>
        <input type="number" id="num1" placeholder="Enter first number">
        <select id="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="number" id="num2" placeholder="Enter second number">
        <button onclick="calculate()">Calculate</button>
        <p id="result"></p>
    </div>
</body>
</html>
