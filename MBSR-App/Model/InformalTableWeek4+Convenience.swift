//
//  InformalTableWeek4+Convenience.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension InformalTableWeek4{
    
    convenience init(after: String, awareness: String, during: String, learnings: String, logDate: Date = Date(), practiceDate: Date = Date(), situation: String,  weekNumber: Int16, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        self.init(context: context)
        self.after = after
        self.awareness = awareness
        self.learnings = learnings
        self.during = during
        self.logDate = logDate
        self.practiceDate = practiceDate
        self.situation = situation
        self.weekNumber = weekNumber
    }
}
