//
//  InformalTableWeek5+Convenience.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension InformalTableWeek5{
    
    convenience init(after: String, emotion: String, logDate: Date = Date(), physicality: String, pleasantMemory:String, practiceDate: Date = Date(), situation: String, weekNumber: Int16, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        self.init(context: context)
        self.after = after
        self.emotion = emotion
        self.physicality = physicality
        self.pleasantMemory = pleasantMemory
        self.logDate = logDate
        self.situation = situation
        self.practiceDate = practiceDate
        self.weekNumber = weekNumber
    }
}
