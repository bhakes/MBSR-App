//
//  GettingSatrtedQuestions.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension GettingStartedQuestions{
    
    convenience init(endOfCourse: String, practiceLocation: String, strengths: String, prepDay: String, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        
        self.init(context: context)
        self.endOfCourse = endOfCourse
        self.practiceLocation = practiceLocation
        self.strengths = strengths
        self.prepDay = prepDay
    }
}
