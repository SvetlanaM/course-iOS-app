//
//  CourseTableViewController.swift
//  courseApp
//
//  Created by Svetlana Margetová on 06.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import UIKit

class CourseTableViewController: UITableViewController {
    
    var courses = [Course]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let course1 = Course(courseName: "Programovanie v iOS", courseLocation: "Impact Hub", courseDuration: 5, courseDescription: "Bla bla bla", coursePrice: 123.05, courseOrganiser: "Iveta Tumova", courseInfo: "Nic so sebou")
        
        courses.append(course1)
        
        
        let navBar = self.navigationController!.navigationBar
        navBar.tintColor = UIColor.whiteColor()
        navBar.barTintColor = UIColor(red: 197/255.0, green: 48/255.0, blue: 138/255.0, alpha: 1.0)
        navBar.backgroundColor = UIColor.blueColor()
        navBar.translucent = false
        
        self.navigationItem.title = "All courses"
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return courses.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("courseCell", forIndexPath: indexPath) as! CourseTableViewCell
        
        cell.courseName.text = courses[indexPath.row].courseName
        cell.courseLocation.text = courses[indexPath.row].courseLocation
        cell.courseStartDate.text = String(courses[indexPath.row].courseStartDate)

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailCourseController = segue.destinationViewController as! CourseDetailViewController
        if segue.identifier == "courseSegueDetail" {
            let rowPath = self.tableView.indexPathForSelectedRow
            detailCourseController.courseNameText = courses[rowPath!.row].courseName
            detailCourseController.courseOrganiserText = courses[rowPath!.row].courseOrganiser
            detailCourseController.courseDescriptionText = courses[rowPath!.row].courseDescription
            detailCourseController.coursePriceText = courses[rowPath!.row].coursePrice
            
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
