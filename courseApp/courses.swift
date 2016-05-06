//
//  courses.swift
//  courseApp
//
//  Created by Svetlana Margetová on 06.05.16.
//  Copyright © 2016 Svetlana Margetová. All rights reserved.
//

import Foundation

class Course {
    var courseName : String
    var courseLocation : String
    var courseStartDate : NSDate
    var courseDuration : Int
    var courseDescription : String
    var isOpen : Bool = false
    var coursePrice : Float
    var courseOrganiser : String
    var courseInfo : String
    
    init(courseName : String, courseLocation : String, courseDuration : Int, courseDescription : String, coursePrice : Float, courseOrganiser : String, courseInfo : String) {
        self.courseName = courseName
        self.courseLocation = courseLocation
        self.courseStartDate = NSDate()
        self.courseDuration = courseDuration
        self.courseDescription = courseDescription
        self.coursePrice = coursePrice
        self.courseOrganiser = courseOrganiser
        self.courseInfo = courseInfo
    }
    
    
}