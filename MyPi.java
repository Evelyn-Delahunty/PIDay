class MyPi{
  public static String pi;
  
  MyPi(){
  }
  
  public static void setPi(String inp){
    pi = inp;
  }
  
  public static int findInPi(String inp, int start){
    for(int i = start; i + inp.length() < pi.length(); i++){
      if((pi.substring(i, i + inp.length())).equals(inp)){
        return(i);
      }
    }
    return(-1);
  }
}
