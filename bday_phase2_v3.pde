String [] pilines;
String pidigits;
long numdigits;
String bday = "65326553";
String us [];
String uk [];
MyPI mypi;
ArrayList<String> outStr;

void setup() {
  size(400, 400);
  noLoop();
  println("......START .....");
  outStr = new ArrayList<String> ();

  pilines = loadStrings("pi-tenmillion.txt");
  pidigits = pilines[0];

  MyPI.setPI(pidigits);
  println("number of digits in pi: " + MyPI.getNUMPI());
  println("first 100 digits of pi: " + MyPI.getPI().substring(0, 50));
  println("last 100 digits of pi: " + MyPI.getPI().substring((int)MyPI.getNUMPI()-50));

}


void draw() {
  String ouStr = "";

  us = MyPI.getSubs(bday);
  String bday_uk = bday.substring(3, 5) + "/" + bday.substring(0, 3)
    + "/" + bday.substring(6);
  uk = MyPI.getSubs(bday_uk);

  for (int i = 0; i < us.length; i++) {
    outStr.add(MyPI.findinPI(us[i]));
  }

  for (int i = 0; i < uk.length; i++) {
    outStr.add(MyPI.findinPI(uk[i]));
  }

  //println(outStr);
  String out = "";
  for (int i = 0; i < outStr.size(); i++) {
    println(outStr.get(i));
    out += outStr.get(i);
  }
  //println(out);

  println(".......END .....");
}
