
var rbl = {
  position:0,
  storelocation: function(section) {
    if (section == 'Search the back of the store'){
      this.position = 1;}
    else if (section == "Go up the escalator"){
      this.position = 2;
    }
        //it needs to prompt them for another store location
    else if (section == 'Check the best seller table'){
      this.position = 1;
    }
   //it needs to take them up the escalator oon the next turn and then to the fiction section
    else if (section == 'Ask a clerk'){
      this.position = 3;
    }
    else if (section == 'Go to the fiction section'){
      this.position = 4;
    }
    else {
      this.position = 5;
    }
  },
  };




var acs = {
  position:0,
  storelocation: function(section) {
    if (section == 'Search the back of the store'){
      this.position = 1;}
    else if (section == "Go up the escalator"){
      this.position = 2;
    }
        //it needs to prompt them for another store location
    else if (section == 'Check the best seller table'){
      this.position = 1;
    }
   //it needs to take them up the escalator oon the next turn and then to the fiction section
    else if (section == 'Ask a clerk'){
      this.position = 3;
    }
    else if (section == 'Go to the fiction section'){
      this.position = 4;
    }
    else {
      this.position = 5;
    }
  }
  };


function foundIt(position){
  if (position ==4)
    console.log('The book is right there!');
  else if (this.position==3)
    console.log("I found it. I will take you there");
  else if (this.position==2)
    console.log('The book is not here. Look somewhere else');
  else if (this.position==1)
    console.log("Where to now");
  else if (this.position==0)
    console.log('The book is not here look somewhere else');
  else
    console.log('This is not a location in this book store')
};

rbl.storelocation('Go to the fiction section');
console.log(foundIt(rbl.position));

acs.storelocation('Go to the fiction section');
console.log(foundIt(acs.position));
