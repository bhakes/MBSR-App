//
//  InformalTableWeek2.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension InformalTableWeek2 {
    
    convenience init(after: String, awareness: String, during: String, experience: String, logDate: Date = Date(), moods: String, practiceDate: Date = Date(), weekNumber: Int16, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        self.init(context: context)
        self.after = after
        self.awareness = awareness
        self.during = during
        self.experience = experience
        self.logDate = logDate
        self.moods = moods
        self.practiceDate = practiceDate
        self.weekNumber = weekNumber
    }
}
