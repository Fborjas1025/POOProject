
 class Puntos_determinacion  {
 int pi,pf;
 String localidad;
  float x,y,x1,y1; 
   Puntos_determinacion(){
     pi=0;
     pf=0;

 }
Table table;

void punto_encuentro(){
  


//////////////////////////////////////////////////////////////////////////////////////////
// determinacion del punto de inicio
         Location location = map.getLocation(mouseX, mouseY);//punto de inicio
         Location berlinLocation = new Location(location.getLat(),location.getLon());//
         x=(location.getLat());
         y=(location.getLon());
        SimplePointMarker berlinMarker = new SimplePointMarker(berlinLocation);
        map.addMarker(berlinMarker);
////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
 


      for (Marker marker : map.getMarkers()) {   // elemento del arreglo : nombre elemento para obtener marcadores del mapa.
         marker.setSelected(false);//borra el marcador seleccionado
         }


  Marker marker = map.getFirstHitMarker(mouseX, mouseY);//método unfolding getfirsthitmarker: Comprueba si un marcador ha sido alcanzado con las coordenadas dadas por el mouse.
  if ((marker != null)) {//

    marker.setSelected(true);//se selecciona el marcador...se colorea de rojo

    String ads=marker.getStringProperty("NOMBRE");//del archivo local.geojson se identifica el nombre del marcador seleccionado (localidad)
    
    localidad=ads;
//    println(ads);

if(ads.equals("BOSA")){
  println(ads);
  Location bomba = new Location(4.603875,-74.187035);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
 point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
 ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: bomba de la 86 sur", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("KENNEDY")){
 println(ads);  
  Location bomba = new Location(4.630356,-74.138145);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
  ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: av.boyacá \n con 1ra de mayo", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("CIUDAD BOLIVAR")){
  println(ads);
    x1=4.5971;
  y1=-74.177414;
  Location bomba = new Location(x1,y1);
 
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  noFill();
  point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
  text("punto de encuentro: el apogeo", berlinPos.x , berlinPos.y + 4);

}

if(ads.equals("FONTIBON")){
  println(ads);
  Location bomba = new Location(4.666221,-74.111626);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro:Puente AV.Boyacá \n con calle 26", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("PUENTE ARANDA")){
  println(ads);
  Location bomba = new Location(4.6285048,-74.10617);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: Batallon caldas", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("ANTONIO NARIÑO")){
  println(ads);
  Location bomba = new Location(4.6285048,-74.10617);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: Batallon caldas", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("SUBA")){
  println(ads);
  Location bomba = new Location(4.6905913,-74.06541);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: AV SUBA\n CON CALLE 100", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("ENGATIVA")){
  println(ads);
  Location bomba = new Location(4.6905913,-74.06541);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: AV SUBA\n CON CALLE 100", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("TUNJUELITO")){
  println(ads);
  Location bomba = new Location(4.5933433,-74.14561);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: VENECIA", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("RAFAEL URIBE URIBE")){
  println(ads);
  Location bomba = new Location(4.5933433,-74.14561);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: VENECIA", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("LOS MARTIRES")){
  println(ads);
  Location bomba = new Location(4.6134987,-74.09135);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: CARRERA 30 \n CON AV COLON", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("BARRIOS UNIDOS")){
  println(ads);
  Location bomba = new Location(4.6642337,-74.075485);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: AV CALLE 68 \n CON AV CARRERA 30 \n LA MERECED NORTE", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("CHAPINERO")){
  println(ads);
  Location bomba = new Location(4.6347613,-74.06593);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: HOSPITAL MILITAR \n CENTRAL", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("SANTA FE")){
  println(ads);
  Location bomba = new Location(4.615432,-74.0728);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: CALLE 26 \n CON  CARACAS", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("SAN CRISTOBAL")){
  println(ads);
  Location bomba = new Location(4.573009,-74.09443);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: 20 DE JULIO", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("USME")){
  println(ads);
  Location bomba = new Location(4.5726748,-74.13924);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: PARQUE EL TUNAL", berlinPos.x , berlinPos.y + 4);
}
if(ads.equals("USAQUEN")){
  println(ads);
  Location bomba = new Location(4.687374,-74.05695);
  SimplePointMarker bombaMarker = new SimplePointMarker(bomba);
       
point_draw(); //metodo para formar caracteristicas de dibujo del marcador punto
ScreenPosition berlinPos = bombaMarker.getScreenPosition(map);
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  map.addMarker(bombaMarker);
   text("punto de encuentro: AUTONORTE\n CON CALLE 100", berlinPos.x , berlinPos.y + 4);
}
  }

}

       void point_draw(){

    strokeWeight(16);
    stroke(67, 211, 227, 100);
    noFill();
  }

  

float[] Funcion_pini(){
    float coordenada1 = x;
    float coordenada2 =y;
     return new float[] {coordenada1, coordenada2};
}   
float[] Funcionp_encuentro(){
    float penx = x1;
    float peny =y1;
     return new float[] {penx,peny};
} 

  

}
