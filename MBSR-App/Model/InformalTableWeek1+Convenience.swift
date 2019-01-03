//
//  InformalTableWeek1.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension InformalTableWeek1{
    
    convenience init(before:String, after: String, during:String, learnings:String, logDate: Date = Date(), practiceDate: Date = Date(), situation: String, weekNumber: Int16, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        
        self.init(context: context)
        self.before = before
        self.after = after
        self.during = during
        self.learnings = learnings
        self.logDate = logDate
        self.practiceDate = practiceDate
        self.situation = situation
        self.weekNumber = weekNumber
    }
}
