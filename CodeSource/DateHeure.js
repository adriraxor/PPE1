function whatColourIsIt(){
  var date = new Date(),
    hour = date.getHours(),
    minute = date.getMinutes(),
    second = date.getSeconds();
  
  minute = minute <= 9 ? '0' + minute : minute;
  second = second <= 9 ? '0' + second : second;

  document.body.style.backgroundColor = '#' + hour + String(minute) + second;
  
  document.getElementById('time').innerHTML = hour + ':' + minute + ':' + second;
  
}

whatColourIsIt();
setInterval(whatColourIsIt, 1000);