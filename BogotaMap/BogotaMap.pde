import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.Google;

UnfoldingMap map;

void setup() {
    size(800, 600);
    map = new UnfoldingMap(this, new Google.GoogleTerrainProvider());
    MapUtils.createDefaultEventDispatcher(this, map);
    Location bogotaLocation = new Location(4.6f, -74.08f);
    map.zoomAndPanTo(bogotaLocation, 13);
    float maxPanningDistance = 9; // in km
    map.setPanningRestriction(bogotaLocation, maxPanningDistance);
    map.setZoomRange(12, 15);
}

void draw (){
  map.draw();
}