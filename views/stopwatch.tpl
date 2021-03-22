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

let displaySec = 0;
let displayMin = 0;
let displayHour = 0;

let interval = null;

let status = "stopped";

function stopwatch(){
    sec++;
    if (sec / 60 === 1){
        sec = 0;
        min++;

        if (min / 60 === 1){
            min = 0;
            hour++;
        }

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
    document.getElementById("display").innerHTML = displayHour + ":" + displayMin + ":" + displaySec;
}

function stop(){
    if(status === "stopped"){
        interval = window.setInterval(stopwatch, 1000);
        document.getElementById("stop").innerHTML = "Stop";
        status = "started";
    }
    else{
        window.clearInterval(interval);
        document.getElementById("stop").innerHTML = "Start";
        status = "stopped";
    }
}

function reset(){
    window.clearInterval(interval);
    sec = 0;
    min = 0;
    hour = 0;
    document.getElementById("display").innerHTML = "00:00:00";
    document.getElementById("top").innerHTML = "Start";
}
</script>
</head>
<body>
    <div class="container">
        <div id="display">
            00:00:00
        </div>
        <div class="buttons">
            <button id="stop" onclick="stop()">Start</button> <button id="reset" onclick="reset()">Reset</button>
        </div>
    </div>
</body>
</html>
