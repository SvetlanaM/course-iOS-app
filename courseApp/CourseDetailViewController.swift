//
//  CourseDetailViewController.swift
//  courseApp
//
//  Created by Svetlana Margetová on 06.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit
import MapKit

class CourseDetailViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapLocation: MKMapView!
    var address = "Kloboukova 24, Prague, 14800 Czech Republic"

    @IBOutlet weak var courseName: UILabel!
    
    @IBOutlet weak var courseOrganiser: UILabel!
    
    @IBOutlet weak var courseDescription: UITextView!
    
    @IBOutlet weak var coursePrice: UILabel!
    
    var courseNameText : String = ""
    var courseOrganiserText : String = ""
    var courseDescriptionText : String = ""
    var coursePriceText : Float = 0.00
    
    
    @IBAction func courseButton(sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapLocation.delegate = self
        
        let point = MKPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 50.0382124, longitude: 14.4807136)
        point.title = "Test"
        point.subtitle = "Test2"
        self.mapLocation.addAnnotation(point)
        
        var region = self.mapLocation.region as MKCoordinateRegion
        region.center = point.coordinate
        region.span.latitudeDelta = 0.002
        region.span.longitudeDelta = 0.002
        
        self.mapLocation.selectAnnotation(point, animated: false)
        self.mapLocation.setRegion(region, animated: false)
        
        
        
        self.courseName.text = courseNameText
        self.courseOrganiser.text = courseOrganiserText
        self.courseDescription.text = courseDescriptionText
        self.coursePrice.text = String(coursePriceText)
                
    }

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
