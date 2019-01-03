//
//  InformalTableWeek7+Convenience.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension InformalTableWeek7{
    
    convenience init(after: String, awareness: String, during: String, learnings: String, logDate: Date = Date(), situation: String, practiceDate: Date = Date(), weekNumber: Int16, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        self.init(context: context)
        self.after = after
        self.awareness = awareness
        self.during = during
        self.learnings = learnings
        self.logDate = logDate
        self.situation = situation
        self.practiceDate = practiceDate
        self.weekNumber = weekNumber
    }
}
