

import UIKit
import MapKit

class ForthViewController: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
    var coordinates = [0.0,0.0]
    override func viewDidLoad() {
        super.viewDidLoad()

       demoMap()
    }
        func demoMap() {
            // add annotation
               var c = CLLocationCoordinate2D()
               c.latitude = coordinates[0]
               c.longitude = coordinates[1]
    
               let a = MKPointAnnotation()
               a.coordinate = c
               a.title = "Hi"
               mapview.addAnnotation(a)
            // zoom level
            let location = c
            let region = MKCoordinateRegion( center: location, latitudinalMeters: CLLocationDistance(exactly:300)!, longitudinalMeters: CLLocationDistance(exactly: 300)!)
            mapview.setRegion(mapview.regionThatFits(region), animated: true)
    
        }
    

  
}
