//
//  MapViewController.swift
//  CookApp
//
//  Created by JOAQUIN DIAZ RAMIREZ on 30/11/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    @IBOutlet weak var mapView : MKMapView!
    internal var location : CLLocation!
    internal var recepies:Recepies!
    
    convenience init(recepies: Recepies)
    {
        self.init()
        self.recepies = recepies
        location = CLLocation(latitude: recepies.latitude, longitude: recepies.latitude)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Map"
        let pin:MKPointAnnotation = MKPointAnnotation()
        pin.title = recepies.title
        pin.coordinate = (location?.coordinate)!
        mapView.addAnnotation(pin)
        let regionToShow = MKCoordinateRegionMakeWithDistance((location?.coordinate)!, 2000, 2000)
        mapView.setRegion(regionToShow, animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MKPointAnnotation else { return nil }
        
        let identifier = "Annotation"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
        } else {
            annotationView!.annotation = annotation
        }
        
        return annotationView
    }
}
