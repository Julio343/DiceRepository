<html ng-app="demo">
	<head>
		<title>Make Dice</title>
	</head>

	<body>

	<button type = "button"  onclick = "getNumber()">Roll</button>
	<input type="text" name="makeButton" id="num" value="">
		
		<script>
        function getNumber() {
            var xhr = new XMLHttpRequest();
            var url = "http://localhost:8081/randomNumber";
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var resultJSON = JSON.parse(xhr.responseText)
                    var htmlDisplay = "";
                        htmlDisplay += resultJSON.dice1 + ", "+resultJSON.dice2 + ", " + resultJSON.dice3;
                    
                
                    document.getElementById("num").value = htmlDisplay;
                    
                    console.log(resultJSON);
                }
            };
            xhr.open("GET", url, true);
            xhr.send();
        }
    </script>
		
	</body>
</html>