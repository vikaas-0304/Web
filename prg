6.A.Javascript
<!DOCTYPE html>
<html>
<body>
<h2>What Can JavaScript Do?</h2>
<p id="demo">JavaScript can change HTML content.</p>
<button type="button" onclick="toggleContent()">Click Me: change HTML content!</button>
<p>JavaScript can change HTML attribute values.</p>
<p>JavaScript changes the value of the src (source) attribute of an image.</p>
<img id="myImage" src="pic_bulboff.gif" style="width:100px">
<button onclick="document.getElementById('myImage').src='pic_bulbon.gif'">Turn on the light</button>
<button onclick="document.getElementById('myImage').src='pic_bulboff.gif'">Turn off the light</button>
<button type="button" onclick="toggleStyle()">Click Me: change the style!</button>
<button type="button" onclick="document.getElementById('demo').style.display='none'">Click Me: hide HTML elements!</button>
<button type="button" onclick="document.getElementById('demo').style.display='block'">Click Me: show hidden elements!</button>
<script>
let isBig = false, isHello = false;
function toggleStyle() {
    isBig = !isBig;
    document.getElementById('demo').style.fontSize = isBig ? '35px' : '16px';
}
function toggleContent() {
    isHello = !isHello;
    document.getElementById('demo').innerHTML = isHello ? 'Hello JavaScript!' : 'JavaScript can change HTML content.';
}
</script>
</body>
</html>



6.B. If Else Ladder
<!DOCTYPE html>
<html>
<head>
<title>If-Else Ladder Example</title>
</head>
<body>
<h2>If-Else Ladder in JavaScript</h2>
<p>Check the console for output.</p>
<script>
let num = Number(prompt("Enter a number:"));
if (isNaN(num)) console.log("Invalid input! Please enter a number.");
else if (num > 100) console.log("The number is greater than 100.");
else if (num > 50) console.log("The number is between 51 and 100.");
else if (num > 0) console.log("The number is between 1 and 50.");
else if (num === 0) console.log("The number is zero.");
else console.log("The number is negative.");
</script>
</body>
</html>



6.C. Std Reg Form
<!DOCTYPE html>
<html>
<head>
<title>Student Form</title>
<style>
body{font-family:Arial;margin:20px;}form{max-width:400px;margin:auto;}.form-group{margin-bottom:15px;}label{display:block;margin-bottom:5px;font-weight:bold;}input,select{width:100%;padding:8px;}.error{color:red;font-size:0.9em;}button{background-color:green;color:white;}
</style>
</head>
<body>
<center><h2>Student Form</h2></center>
<form id="studentForm" onsubmit="return handleSubmit(event)">
<div class="form-group"><label>Name:</label><input type="text" id="name" required><span class="error" id="nameError"></span></div>
<div class="form-group"><label>Age:</label><input type="number" id="age" min="1" max="100" required><span class="error" id="ageError"></span></div>
<div class="form-group"><label>Course:</label><select id="course" required><option value="">Select a course</option><option>Web Programming</option><option>Power BI</option><option>Artificial Intelligence</option></select><span class="error" id="courseError"></span></div>
<button type="submit">Submit</button>
</form>
<div id="output" style="display:none;"><h3>Submitted Details</h3><p>Name: <span id="outputName"></span></p><p>Age: <span id="outputAge"></span></p><p>Course: <span id="outputCourse"></span></p></div>
<script>
function handleSubmit(event){event.preventDefault();document.querySelectorAll('.error').forEach(e=>e.textContent="");let name=document.getElementById('name').value.trim(),age=document.getElementById('age').value,course=document.getElementById('course').value,isValid=true;if(!name){document.getElementById('nameError').textContent="Name is required.";isValid=false;}if(age<1||age>100){document.getElementById('ageError').textContent="Enter valid age.";isValid=false;}if(!course){document.getElementById('courseError').textContent="Select a course.";isValid=false;}if(isValid){document.getElementById('output').style.display="block";document.getElementById('outputName').textContent=name;document.getElementById('outputAge').textContent=age;document.getElementById('outputCourse').textContent=course;}}
</script>
</body>
</html>



7.A. DNA to RNA
<!DOCTYPE html>
<html>
<head>
<title>DNA to RNA Conversion</title>
</head>
<body>
<h1>DNA to RNA Conversion</h1>
<script>
s = prompt("Enter DNA sequence (A, T, C, G):", ""); 
o = s.split(""); 
document.write("The given sequence: " + s + "<br><br>"); 
for (i = 0; i < s.length; i++) {
    o[i] = {'A': 'U', 'T': 'A', 'C': 'G', 'G': 'C', 
            'a': 'u', 't': 'a', 'c': 'g', 'g': 'c'}[s[i]] || s[i];
} 
document.write("DNA to RNA Conversion: " + o.join(""));
</script>
</body>
</html>



7.B. Calculator
<!DOCTYPE html>
<html>
<head>
<title>Calculator</title>
<style>
body { text-align: center; font-family: Arial, sans-serif; background: #f4f4f4; }
.container { background: white; padding: 20px; border-radius: 10px; display: inline-block; }
input, button { margin: 5px; padding: 10px; font-size: 18px; width: 50px; }
button { cursor: pointer; }
#display { width: 210px; padding: 10px; font-size: 18px; }
</style>
</head>
<body>
<h2>Simple Calculator</h2>
<div class="container">
<input type="text" id="display" readonly>
<br>
<button onclick="appendToDisplay('1')">1</button>
<button onclick="appendToDisplay('2')">2</button>
<button onclick="appendToDisplay('3')">3</button>
<button onclick="appendToDisplay('+')">+</button><br>
<button onclick="appendToDisplay('4')">4</button>
<button onclick="appendToDisplay('5')">5</button>
<button onclick="appendToDisplay('6')">6</button>
<button onclick="appendToDisplay('-')">-</button><br>
<button onclick="appendToDisplay('7')">7</button>
<button onclick="appendToDisplay('8')">8</button>
<button onclick="appendToDisplay('9')">9</button>
<button onclick="appendToDisplay('*')">*</button><br>
<button onclick="appendToDisplay('0')">0</button>
<button onclick="appendToDisplay('.')">.</button>
<button onclick="clearDisplay()">C</button>
<button onclick="appendToDisplay('/')">/</button><br>
<button onclick="calculateResult()">=</button>
</div>
<script>
let display = document.getElementById('display');

function appendToDisplay(value) {
    display.value += value;
}

function clearDisplay() {
    display.value = '';
}

function calculateResult() {
    try {
        display.value = eval(display.value);
    } catch (e) {
        display.value = 'Error';
    }
}

document.addEventListener('keydown', function(e) {
    if (e.key >= 0 && e.key <= 9) {
        appendToDisplay(e.key);
    } else if (e.key === '+' || e.key === '-' || e.key === '*' || e.key === '/') {
        appendToDisplay(e.key);
    } else if (e.key === 'Enter') {
        calculateResult();
    } else if (e.key === 'Backspace') {
        display.value = display.value.slice(0, -1);
    } else if (e.key === 'Escape') {
        clearDisplay();
    }
});
</script>
</body>
</html>



8.A. Event Handling
<!DOCTYPE html>
<html>
<head>
<title>Advanced Event Handling</title>
<style>
#dynamicButton {
  padding: 15px;
  font-size: 18px;
  border: 2px solid #000;
  cursor: pointer;
  background-color: #f4f4f4;
  transition: background-color 0.3s;
}
#dynamicButton:hover {
  background-color: #4CAF50;
  color: white;
}
#output {
  font-size: 20px;
  margin-top: 20px;
  padding: 10px;
  border: 1px solid #000;
  max-width: 400px;
}
</style>
</head>
<body>
<h2>Advanced Event Handling Example</h2>
<p>Press any key on the keyboard, hover over the button, or click the button!</p>
<button id="dynamicButton">Click Me!</button>
<div id="output"></div>
<script>
const button = document.getElementById("dynamicButton");
const outputDiv = document.getElementById("output");
button.addEventListener("click", function() {
  outputDiv.innerText = "Button was clicked!";
});
button.addEventListener("mouseover", function() {
  outputDiv.innerText = "Mouse is over the button!";
});
document.addEventListener("keypress", function(event) {
  outputDiv.innerText = `You pressed the key: ${event.key}`;
});
</script>
</body>
</html>




8.B. Positioning Elements
<!DOCTYPE html>
<html>
<head>
<title>Positioning Examples</title>
<style>
body{font-family:Arial,sans-serif;padding:20px}
.static,.relative{width:200px;height:100px;margin-bottom:20px}
.static{background-color:lightblue}
.relative{background-color:lightgreen;position:relative;top:30px;left:50px}
</style>
</head>
<body>
<div class="static">Static Positioning</div>
<div class="relative">Relative Positioning</div>
</body>
</html>



9.A. Boostrap
<html>
<head>
<title>Bootstrap Example</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<table class="table table-bordered">
<thead>
<tr>
<th scope="col">Sno</th>
<th scope="col">Acc.No</th>
<th scope="col">Title</th>
<th scope="col">Author</th>
<th scope="col">Copies</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">1</th>
<td>121</td>
<td>Java the Hand Book</td>
<td>Herbert Schielt</td>
<td>5</td></tr>
<tr>
<th scope="row">2</th>
<td>122</td>
<td>AI</td>
<td>Janaki Raman</td>
<td>7</td></tr>
<tr>
<th scope="row">3</th>
<td>123</td>
<td>Computer Networks</td>
<td>Tanen Baum</td>
<td>12</td></tr>
</tbody>
</table>
</body>
</html>



9.B. Java script objects
<!DOCTYPE html>
<html>
<head>
<title>JavaScript Demonstrations</title>
</head>
<body>
<h1>JavaScript String, Function, and Math Object Demonstrations</h1>
<h2>String Object Demonstration</h2>
<script>
let str = "Hello, World!";
let str2 = " How are you?";
document.write("<p>Original String: " + str + "</p>");
document.write("<p>Lowercase: " + str.toLowerCase() + "</p>");
document.write("<p>Uppercase: " + str.toUpperCase() + "</p>");
document.write("<p>Index of 'World': " + str.indexOf("World") + "</p>");
document.write("<p>Last index of 'o': " + str.lastIndexOf("o") + "</p>");
document.write("<p>Concatenated String: " + str.concat(str2) + "</p>");
document.write("<p>Does the string include 'Hello'? " + str.includes("Hello") + "</p>");
</script>
<h2>Function Demonstration</h2>
<p id="output"></p>
<button onclick="showDate()">Show Date</button>
<button onclick="showTime()">Show Time</button>
<button onclick="add(5, 10)">Add 5 + 10</button>
<button onclick="greet('John')">Greet</button>
<button onclick="randomNumber()">Random Number</button>
<script>
function showDate() {
  document.getElementById("output").innerText = new Date().toDateString();
}
function showTime() {
  document.getElementById("output").innerText = new Date().toLocaleTimeString();
}
function add(a, b) {
  document.getElementById("output").innerText = "Sum: " + (a + b);
}
function greet(name) {
  document.getElementById("output").innerText = "Hello, " + name + "!";
}
function randomNumber() {
  document.getElementById("output").innerText = "Random: " + Math.floor(Math.random() * 100);
}
</script>
<h2>Math Object Demonstration</h2>
<script>
document.write("<p>Math.round(4.7): " + Math.round(4.7) + "</p>");
document.write("<p>Math.ceil(4.1): " + Math.ceil(4.1) + "</p>");
document.write("<p>Math.floor(4.9): " + Math.floor(4.9) + "</p>");
document.write("<p>Math.max(10, 20): " + Math.max(10, 20) + "</p>");
document.write("<p>Math.min(10, 20): " + Math.min(10, 20) + "</p>");
document.write("<p>Math.random(): " + Math.random() + "</p>");
document.write("<p>Random between 1 and 10: " + Math.floor(Math.random() * 10 + 1) + "</p>");
document.write("<p>Math.sin(0): " + Math.sin(0) + "</p>");
document.write("<p>Math.tan(Math.PI / 4): " + Math.tan(Math.PI / 4) + "</p>");
</script>
</body>
</html>
