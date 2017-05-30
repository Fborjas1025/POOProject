
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.marker.*;
import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.data.*;
import de.fhpotsdam.unfolding.geo.*;
import java.util.List;

UnfoldingMap map;
SimplePointMarker finMarker;
Usuario lidA;
Usuario lidB;
Usuario greg1;
int a,d,g;
String b,e,h;
float c,f,i;
 
void setup() {
    
  size(800, 600);
        
          map = new UnfoldingMap(this,new Microsoft.RoadProvider());
          MapUtils.createDefaultEventDispatcher(this, map);
          Location bogotaLocation = new Location(4.6f, -74.08f);
          map.zoomAndPanTo(bogotaLocation, 13);
         float maxPanningDistance = 31; // in km
         map.setPanningRestriction(bogotaLocation, maxPanningDistance);
         map.setZoomRange(10, 15);
         
           List<Feature> transitLines = GeoJSONReader.loadData(this,"data/local.geojson");
           List<Marker> transitMarkers = new ArrayList<Marker>();
           
           
     for (Feature feature : transitLines) {
    ShapeFeature lineFeature = (ShapeFeature) feature;

    SimpleLinesMarker m = new SimpleLinesMarker(lineFeature.getLocations());
    String lineColor = lineFeature.getStringProperty("NOMBRE");
    color col = 0;
    // Original MBTA colors
if (lineColor.equals("SUBA")) {
        col = color(233, 57, 35);
    }
    if (lineColor.equals("USAQUEN")) {
        col = color(59, 130, 79);
    }
    if (lineColor.equals("BOSA")) {
        col = color(154, 156, 157);
    }
    if (lineColor.equals("CHAPINERO")) {
        col = color(238, 137, 40);
    }
    m.setColor(col);
    m.setStrokeWeight(5);
     transitMarkers.add(m);
  }
  map.addMarkers(transitMarkers);
          List<Feature> countries = GeoJSONReader.loadData(this, "421.geojson");
  List<Marker> countryMarkers = MapUtils.createSimpleMarkers(countries);
 
    Lider lidA = new Lider();
    lidA.setNombre("Federico Borja");
    lidA.setId(00001);
    lidA.setTelefono(7457110);
    
    Lider lidB = new Lider();
    lidB.setNombre("Juan Perez");
    lidB.setId(00002);
    lidB.setTelefono(7869127); 
 
     Gregario greg1 = new Gregario();
     greg1.setNombre("Andres Diaz");
     greg1.setId(10004);
     greg1.setTelefono(7834562); 
     
     a = lidA.getId();
     b = lidA.getNombre();
     c = lidA.getTelefono();
     d = lidB.getId();
     e = lidB.getNombre();
     f = lidB.getTelefono();
     g = greg1.getId();
     h = greg1.getNombre();
     i = greg1.getTelefono();
     
 }
 
void draw() {
  
    map.draw();
Location finLocation = new Location(4.600986, -74.0671);
Location inicioLocation = new Location(4.6357517, -74.09105);
Location inicio1Location = new Location(4.6438117, -74.06113);

SimplePointMarker finMarker = new SimplePointMarker(finLocation);
SimplePointMarker inicioMarker = new SimplePointMarker(inicioLocation);
SimplePointMarker inicio1Marker = new SimplePointMarker(inicio1Location);
 /*    finMarker.setColor(color(255, 0, 0, 100)); 
     finMarker.setStrokeColor(color(255, 0, 0));
     finMarker.setStrokeWeight(4);
     */
     ScreenPosition finPos = finMarker.getScreenPosition(map);
  strokeWeight(16);
  stroke(67, 211, 227, 100);
  noFill();
  ellipse(finPos.x, finPos.y, 36, 36);
  text("Ruta A", finPos.x - textWidth("Ruta A") / 2, finPos.y + 4);
  //
  //
  ScreenPosition posInicio = inicioMarker.getScreenPosition(map);
strokeWeight(12);
stroke(200, 0, 0, 200);
strokeCap(SQUARE);
noFill();
float s = 44;
arc(posInicio.x, posInicio.y, s, s, -PI * 0.9, -PI * 0.1);
arc(posInicio.x, posInicio.y, s, s, PI * 0.1, PI * 0.9);
fill(0);
text("punto Inicio", posInicio.x - textWidth("Inicio") / 2, posInicio.y + 4);

ScreenPosition posInicio1 = inicio1Marker.getScreenPosition(map);
strokeWeight(13);
stroke(211, 14, 44, 200);
strokeCap(SQUARE);
noFill();
float a = 44;
arc(posInicio1.x, posInicio1.y, s, s, -PI * 0.9, -PI * 0.1);
arc(posInicio1.x, posInicio1.y, s, s, PI * 0.1, PI * 0.9);
fill(0);
text("RUTA B", posInicio1.x - textWidth("RUTA B") / 2, posInicio1.y + 4);

map.addMarkers(finMarker, inicioMarker);
 Location startLocation = new Location(4.600986, -74.0671);
Location endLocation = new Location(4.6357517 , -74.09105);
SimpleLinesMarker connectionMarker = new SimpleLinesMarker(startLocation, endLocation);   
  map.addMarkers(connectionMarker);
 connectionMarker.setColor(color(255, 0, 0, 100));
 
 map.addMarkers(finMarker, inicioMarker);
 Location start1Location = new Location(4.6438117 , -74.06113);
Location end1Location = new Location(4.6357517 , -74.09105);
SimpleLinesMarker connectionMarker1 = new SimpleLinesMarker(start1Location, end1Location);   
  map.addMarkers(connectionMarker1);
 connectionMarker.setColor(color(0, 255, 0, 100));
 
      Location location = map.getLocation(mouseX, mouseY);
    fill(0);
   text(location.getLat() + ", " + location.getLon(), mouseX, mouseY);
  //     println(location.getLat() + ", " + location.getLon(), mouseX, mouseY);
    
    if (key == 'a')
    println("Lider de Ruta A",b);
    println("Telefono lider",c);
    
    if (key == 'b')
    println("Lider de Ruta A",e);
    println("Telefono lider",f);

}
