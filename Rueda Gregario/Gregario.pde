class Gregario extends Usuario{
String nombre;
int id;
float telefono;

  Gregario(){
  nombre = "";
  id = 0;
  telefono = 0;
  }
  
  void setNombre (String n){
  this.nombre=n;
  }
  
  void setId (int i){
  this.id=i;
  }
  
  void setTelefono (float t){
  this.telefono=t;
  }
  
  String getNombre (){
  return nombre;
  }
  
  int getId (){
  return id;
  }
  
  float getTelefono (){
  return telefono;
  }



}
