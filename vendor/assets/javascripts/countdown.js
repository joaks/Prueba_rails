

var counter = 300;


setInterval(function(){
  console.log(counter);
  counter--
  if (counter === 0) {
    console.log("termino la cuenta");
  }
}, 1000);