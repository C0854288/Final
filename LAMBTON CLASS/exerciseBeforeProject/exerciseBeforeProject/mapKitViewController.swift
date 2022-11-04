//
//  mapKitViewController.swift
//  exerciseBeforeProject
//
//  Created by Sunkara Vishnu vardhan on 18/06/22.
//

import UIKit
import MapKit

class mapKitViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
        
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)

        super.viewDidLoad()

       
        mapView.centerToLocation(initialLocation)

    }
   
    
}
private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
