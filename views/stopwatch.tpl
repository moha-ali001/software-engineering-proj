% include("header.tpl")
% include("banner.tpl")
<!DOCTYPE html>
<html>
<head>
<style>
.container{
    height: 300px;
    width: 100%;
}
#display{
    width: 100%;
    font-size: 72px;
    text-align: center;
    margin: 0px auto;
}
.buttons{
    text-align: center;
}
</style>
<title>Stopwatch</title>
<script>
let sec = 0;
let min = 0;
let hour = 0;
let msec = 0;

let displayMsec;
let displaySec = 0;
let displayMin = 0;
let displayHour = 0;
let interval = null;
let status = "stopped";
function stopwatch(){
    
    msec++;
if(msec >=100){
    msec = 0;
    sec++;
    if (sec >= 60){
        sec = 0;
        min++;
        if (min >=60){
            min = 0;
            hour++;
        }
    }
}
    if(msec < 10){
        displayMsec = "0" + msec.toString();
    }
    else {
        displayMsec = msec;
    }
    if (sec < 10){
        displaySec = "0" + sec.toString();
    }
    else{
        displaySec = sec;
    }
    if (min < 10){
        displayMin = "0" + min.toString();
    }
    else{
        displayMin = min;
    }
    if (hour < 10){
        displayHour = "0" + hour.toString();
    }
    else{
        displayHour = hour;
    }
    document.getElementById("display").innerHTML = displayHour + ":" + displayMin + ":" + displaySec + "." + displayMsec;
}
function pause(){
    if(status === "paused"){
        interval = window.setInterval(stopwatch, 10);
        document.getElementById("pause").innerHTML = "Pause";
        status = "started";
    }
    else{
        window.clearInterval(interval);
        document.getElementById("pause").innerHTML = "Start";
        status = "paused";
    }
}
function reset(){
    window.clearInterval(interval);
    msec = 0;
    sec = 0;
    min = 0;
    hour = 0;
    document.getElementById("display").innerHTML = "00:00:00.00";
    document.getElementById("top").innerHTML = "Start";
}
</script>
</head>
<body>

<div class="w3-row w3-xxlarge w3-bottombar w3-border-theme-dark-blue w3-margin-bottom"></div>
<div class="w3-row">
  <div class="w3-panel w3-card-4 w3-round-xlarge" style="background-color:#1b1b2a; color:#b1b7ba; margin: auto; width:800px;">
    <div class="w3-row w3-xxlarge w3-bottombar w3-border-theme-dark-blue w3-margin-bottom">
      <h1><i>Stopwatch</i></h1>
    </div>
    <div class="container" style="height: 145px;">
        <div id="display">
            00:00:00.00
        </div>
        <div class="buttons">
            <button id="pause" onclick="pause()">Start</button> <button id="reset" onclick="reset()">Reset</button>
        </div>
    </div>
    <div class="w3-row w3-bottombar w3-border-theme-dark-blue w3-margin-bottom w3-margin-top"></div>
  </div>
</div>
</body>
</html>
% include("footer.tpl")
