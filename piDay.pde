String[] piArray;
String objective = "";
boolean inputDone = false;
boolean found = false;

void setup(){
  piArray = loadStrings("pi-tenmillion.txt");
  MyPi.setPi(piArray[0]);
}

void draw(){
  if(inputDone){
      int index = MyPi.findInPi(objective, 0);
    if(index == -1){
      System.out.println("not found");
    }
    else{
      System.out.println("String " + objective + " found at position " + index + ".");
    }
    noLoop();
  }
}

void keyPressed(){
  if(!inputDone){
    if(key == ENTER){
      inputDone = true;
      System.out.println("Searching...");
    }
    else if(key == BACKSPACE && objective.length() > 0){
      objective = objective.substring(0, objective.length() - 1);
    }
    else{
      objective += key;
      System.out.println("Current String: " + objective);
    }
  }
}
