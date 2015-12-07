/*
Book Wars
Overall mission: grab the last copy of the Deathly Hallows first(imagine this is right when the book came out)
Objective: Book lover has to beat the christmas shopper to the book
Goals: Avoid discount rack( AKA the time sucker), get to the cash register
Players: Annoying Christmas Shopper(ACS), Real Book Lover(RBL)
Objects:
  RBL (position)(later add:book store layout knowledge:advanced, speed:medium, weapons:elbows)
  ACS(position)(later add:tenacity level:mom, rudeness:high, weapon:christmas bags )
Functions: go up the escalator, search the back or the store, check the best seller table, ask a clerk, go to the fiction section.

Obstacles to add later: avoid store clerks, weave past other customers, avoid coffee shop bookclub

Pseudocode
  Set up a variable for RBL and ACS their properties need to be the position in the store and added extras(extras can be expanded upon later)
  This is a two player game both RBL and ACS need to be prompted to enter the store location they want to go to. (for one player make the computer select the ACS store location)
  each location needs to have a number
  when play reaches the number for the correct location they win
  player can only move once during their turn
*/
//look up how to



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
