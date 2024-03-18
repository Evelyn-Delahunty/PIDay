String[] piArray;
String objective = "";
int targetDigits = 8;
boolean found = false;

void setup(){
  noLoop();
  piArray = loadStrings("pi-tenmillion.txt");
  MyPi.setPi(piArray[0]);
  for(long i = 0; i < (long)pow(10, targetDigits + 1); i++){
    objective = Long.toString(i + (long)pow(10, targetDigits + 1));
    int index = MyPi.findString(objective.substring(1), MyPi.pi, 0);
    if(index != -1){
      System.out.println("String " + objective.substring(1) + " found at: " + index);
      found = true;
      break;
    }
  }
  if(!found){
    System.out.println("Nothing found");
  }
}
