class Lider extends Usuario{
String nombre;
int id;
float telefono;

  Lider(){
  nombre = "a";
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
  
  public String getNombre(){
  return nombre;
  }
  
  public int getId (){
  return id;
  }
  
  public float getTelefono (){
  return telefono;
  }


}
