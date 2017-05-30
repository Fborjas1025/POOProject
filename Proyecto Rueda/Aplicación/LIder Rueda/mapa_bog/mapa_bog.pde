
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
SimplePointMarker berlinMarker;


 
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
//  SimplePointMarker paradaMarker = new SimplePointMarker(PointFeature.getLocations());
 //map.addMarkers(countryMarkers);

 }


     //       berlinMarker = new SimplePointMarker(berlinLocation);



 
void draw() {
  
    map.draw();
   Location berlinLocation = new Location(4.6328144, -74.08508);
Location dublinLocation = new Location(4.6428144, -74.09508);
 
SimplePointMarker berlinMarker = new SimplePointMarker(berlinLocation);
SimplePointMarker dublinMarker = new SimplePointMarker(dublinLocation);
 /*    berlinMarker.setColor(color(255, 0, 0, 100)); 
     berlinMarker.setStrokeColor(color(255, 0, 0));
     berlinMarker.setStrokeWeight(4);
     */
     ScreenPosition berlinPos = berlinMarker.getScreenPosition(map);
  strokeWeight(16);
  stroke(67, 211, 227, 100);
  noFill();
  ellipse(berlinPos.x, berlinPos.y, 36, 36);
  //
  //
  ScreenPosition posLondon = dublinMarker.getScreenPosition(map);
strokeWeight(12);
stroke(200, 0, 0, 200);
strokeCap(SQUARE);
noFill();
float s = 44;
arc(posLondon.x, posLondon.y, s, s, -PI * 0.9, -PI * 0.1);
arc(posLondon.x, posLondon.y, s, s, PI * 0.1, PI * 0.9);
fill(0);
text("punto inicio", posLondon.x - textWidth("London") / 2, posLondon.y + 4);

map.addMarkers(berlinMarker, dublinMarker);
 Location startLocation = new Location(4.6328144, -74.08508);
Location endLocation = new Location(4.6428144, -74.09508);
SimpleLinesMarker connectionMarker = new SimpleLinesMarker(startLocation, endLocation);   
  map.addMarkers(connectionMarker);
 connectionMarker.setColor(color(255, 0, 0, 100));
      Location location = map.getLocation(mouseX, mouseY);
    fill(0);
   text(location.getLat() + ", " + location.getLon(), mouseX, mouseY);
  //     println(location.getLat() + ", " + location.getLon(), mouseX, mouseY);
    if(key== 'v'){

    }
    
 

}
