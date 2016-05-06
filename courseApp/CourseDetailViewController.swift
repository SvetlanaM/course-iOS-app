//
//  CourseDetailViewController.swift
//  courseApp
//
//  Created by Svetlana Margetová on 06.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {

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
