class Localidad {

 int LocID;
 int yPosStart;
 int yPosEnd;
 int xPosStart;
 int xPosEnd;
 String Name;

  Localidad(){
  LocID=0;
  yPosStart=yPosEnd=0;
  xPosStart=xPosEnd=0;
  }
  
  int ID(int n){
    LocID=n;
    return LocID;
  }
  
  int Position (int a,int b,int c,int d){
   
   xPosStart= a;
   xPosEnd= b;
   yPosStart=c;
   yPosEnd=d;   
   return xPosStart;
   return xPosEnd;
   return yPosStart;
   return yPosEnd;
  } 
  
   String LocName (String Loc){
   return Loc;
   }
   
}