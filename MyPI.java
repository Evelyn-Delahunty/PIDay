public class MyPI {
  private static String PI;  // millions of digits of PI
  private static long NUMPI; // number of digits of PI

  public static String getPI() {
    return PI;
  }

  public static void setPI(String in_) {
    PI = new String(in_);
    NUMPI = PI.length();
  }
 
  public static long getNUMPI() {
    return NUMPI;
  } 
  
  public static String [] getSubs(String s_) {
    s_ = s_.replace("/", "");
    String [] us = new String [s_.length()+1];
    for (int i = 0; i < s_.length(); i++) {
      us[i] = s_.substring(0, i+1);
    }
    us[us.length-1] = s_.substring(0, 4)+s_.substring(6);
    return us;
  }
  
  public static String findinPI(String in_) {
    boolean found = false;
    long position = 0;
    long maxlen = NUMPI - in_.length();
    String valStr = "";
    String out;
    
    while (!found) {
      String tempStr = "";
      
      for (long i = position; i < position + in_.length(); i++) {
        tempStr = tempStr + PI.charAt((int)i);
      }

      if (position >= maxlen) {
        found = false;
        valStr = in_;
        break;
      } else if (tempStr.equals(in_)) {
        found = true;
        valStr = tempStr;
        break;
      } else position++;
    }

    if (!found) {
      out = "Birthday " + valStr + " NOT FOUND in " + NUMPI + " digits of PI!!\n";
    } else {
      out = "Birthday " + valStr + " FOUND at position " + position + "\n" +
            "validating ... " + PI.substring((int)position, (int)(position+in_.length())) + "\n";
    }
   
    return out;
  }
}
