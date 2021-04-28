% include("header.tpl")
% include("banner.tpl")
 <!DOCTYPE html>
<html>
<head>
</head>
<body>

<div class="w3-row w3-xxlarge w3-bottombar w3-border-theme-dark-blue w3-margin-bottom"></div>
<div class="w3-row">
  <div class="w3-panel w3-card-4 w3-round-xlarge" style="background-color:#1b1b2a; color:#b1b7ba; margin: auto; width:800px;">
    <div class="w3-row w3-xxlarge w3-bottombar w3-border-theme-dark-blue w3-margin-bottom">
      <h1><i>Timer</i></h1>
    </div>
    <div class="container2">
    <div id="display2">
		<div id="counter">00:00</div>
     </div>
    <div class="buttons">
<button id="reset" onclick="window.location.reload()">Reset</button>
	</div>
        <style>
.container2{
    height: 300px;
    width: 100%;
}
#display2{
    width: 100%;
    font-size: 150px;
    text-align: center;
    margin: 0px auto;
}
        <div class="buttons">
            <<button id="reset" onclick="reset()">Reset</button>
        </div>
    </div>
    <div class="w3-row w3-bottombar w3-border-theme-dark-blue w3-margin-bottom w3-margin-top"></div>
  </div>
</div>



    

 .buttons{
 text-align: center;
 }
        </style>
    <script>
        var valid = false;
        while (!valid) {
        while (!valid) {
        var minute 	= prompt("Minutes", "0");
        valid = minute >= 0 && minute <= 59;
        }
        valid = false;
        while (!valid) {
		var second	= prompt("Seconds", "1");
        valid = second > 0 && second <= 59;
        }
        }

		setInterval( function(){
			if( minute == 0 && second == 1){
				document.getElementById("counter").innerHTML = "00:00";
			}else{
				second--;
				if( second == 0 ){
					minute --;
					second = 60;

					if( minute == 0 ){
						minute = minute;  
					}
				}
                
				if( minute.toString().length == 1 ){
					minute = "0"+minute;
				}

				if( second.toString().length == 1 ){
					second = "0"+second;
				}
                
                if (second == 60){
				document.getElementById("counter").innerHTML = "0" + (+minute + +1) + ":" + "0" + (second % 60);
                }else{
                document.getElementById("counter").innerHTML = minute + ":" + second;
                }
			}
		}, 1000)
    </script>
</body>
</html>
% include("footer.tpl")
