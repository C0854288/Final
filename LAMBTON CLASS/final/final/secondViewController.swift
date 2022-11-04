//
//  secondViewController.swift
//  final
//
//  Created by Sunkara Vishnu vardhan on 2022-07-06.
//
import CoreLocation
import MapKit
import UIKit

class secondViewController: UIViewController  , MKMapViewDelegate  {
    let map = MKMapView()
    let  coordinate =  CLLocationCoordinate2D(latitude: 40.7648, longitude: -73.9808)
    
    
    
    @IBOutlet var mapView : MKMapView!
   
    let manager = CLLocationManager()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           view.addSubview(map)
         //map.frame = view.bounds
          map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: false)
           map.delegate = self
           addCustomPin()
       }
           
  private  func addCustomPin(){
     let pin = MKPointAnnotation()
        pin.coordinate = coordinate
        pin.title = "864 Seventh Ave, New York"
        pin.subtitle = "NY  10019, United States"
        map.addAnnotation(pin)
    }
        
        
     
      
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else {
            return nil
        }
        var annotationView = map.dequeueReusableAnnotationView(withIdentifier: "abc")
        if annotationView == nil {
         annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "abc")
            annotationView?.canShowCallout = true
        }else{
            annotationView?.annotation = annotation
            
            
            
        }
        annotationView?.image = UIImage(named: "1")
        
        
        
        return annotationView
    }
}
   
    
    
    
    
    
    
    
    
           
           
           
           
           
           
     
