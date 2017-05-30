
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import java.util.List;



UnfoldingMap map;// objeto mapa
Usuario usuario;
Puntos_determinacion  puntos; 
String nom;
float puntoi;
float cx,cy;
int current = 1, graficar = 2,count=0,a=0;
List marcadoreslocalidad = new ArrayList(); //arreglo que recibe los datos del archivo local.geojson

void setup() {
  size(800, 600, P2D);
          map = new UnfoldingMap(this,new Microsoft.RoadProvider());//carga mapa del proveedor.
          MapUtils.createDefaultEventDispatcher(this, map);
          Location bogotaLocation = new Location(4.6f, -74.08f); //localizadion central de la ciudad
          map.zoomAndPanTo(bogotaLocation, 10); 
          float maxPanningDistance = 31; // área de muestra o vision  en km
          map.setPanningRestriction(bogotaLocation, maxPanningDistance);
          map.setZoomRange(10, 15); //zoom inicial
  
          List localidad = GeoJSONReader.loadData(this, "data/local.geojson");// se carga el archivo de las localidades: local.geojson
         List marcadoreslocalidad = MapUtils.createSimpleMarkers(localidad);//listado de marcadores. localidades
         map.addMarkers(marcadoreslocalidad);//(unfolding método)____adiciona toda la lista de marcadores 
       // usuario= new Gregario();


   puntos= new Puntos_determinacion ();
                  
}


void draw() {


    map.draw();
/*
      if (key == 'c') { //carga el mapa nuevamente para retirar los marcadores de las localidades.
      
       map = new UnfoldingMap(this,new Microsoft.RoadProvider());
       Location bogotaLocation = new Location(4.6f, -74.08f); //localizadion central de la ciudad
       map.zoomAndPanTo(bogotaLocation, 10); 
       MapUtils.createDefaultEventDispatcher(this, map);

    }*/

       Location universidad = new Location(4.6328144, -74.08508);   ///marcador punto final siempre fijo en la universidad nacional
       SimplePointMarker universidadMarker = new SimplePointMarker(universidad);
       strokeWeight(16);
       stroke(67, 211, 227, 100);
       noFill();
       ScreenPosition unPos = universidadMarker.getScreenPosition(map);
       ellipse(unPos.x, unPos.y, 36, 36);
       map.addMarker(universidadMarker);
       text("punto final", unPos.x , unPos.y + 4);
       
       
       if (mouseButton == RIGHT){
          a=1;
          if(a==1);
  
  puntos.punto_encuentro();//llama a  punto encuentro para crear el marcador punto de encuentro sobre el marcador de la localidad seleccionada
     
    
       float result[] = puntos.Funcion_pini();// llama a la funcion  result para obtener coordenadas X y Y del punto inicialx    
       Location inicial = new Location(result[0],result[1]); 
       SimplePointMarker inicialMarker = new SimplePointMarker(inicial);
       strokeWeight(16);
       stroke(67, 211, 227, 100);
       noFill();
       ScreenPosition pinicio = inicialMarker.getScreenPosition(map);
       ellipse(pinicio.x, pinicio.y, 36, 36);
       map.addMarker(inicialMarker);
       text("punto de inicio", pinicio.x , pinicio.y + 4);
       }
       
      

}

void keyPressed() {
  if (key == ' ' ){

 current = current <graficar ? current+1 : 1;

  }
   switch(current) {
    case 1:
    background  (255,180,89);
   usuario = new Gregario ();
    break;
   case 2:
   background  (random(100));
  usuario =new Lider();
    break;

     }
  println("ID USUARIO: "+usuario.identificacion()+"NOMBRE USUARIO: "+usuario.nombre());
    }





