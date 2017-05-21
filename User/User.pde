class user{

  String name;
  int userID;
  long phoneNumber;
  
  User (){
   name="0";
   userID=0;
   phoneNumber=0;
  }
  
  String setName(String n){
  this.name= n;
  }
  
  int setUserID(int u){
  this.userID=u;
  }
  
  long setPhoneNumber(long a){
  this.phoneNumber=a;
  }
}