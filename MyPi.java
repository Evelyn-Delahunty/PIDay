class MyPi{
  public static String pi;
  
  MyPi(){
  }
  
  public static void setPi(String inp){
    pi = inp;
  }
  
  public static int findString(String inp, String comp, int start){
    for(int i = start; i + inp.length() < comp.length(); i++){
      if((comp.substring(i, i + inp.length())).equals(inp)){
        return(i);
      }
    }
    return(-1);
  }
}
