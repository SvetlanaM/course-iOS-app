//
//  CustomNavigationViewController.swift
//  courseApp
//
//  Created by Svetlana Margetová on 06.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit

class CustomNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navBar = self.navigationController!.navigationBar
        navBar.tintColor = UIColor.blackColor()
        navBar.barTintColor = UIColor.redColor()
        navBar.backgroundColor = UIColor.blueColor()
        
        self.navigationItem.title = "Title"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
