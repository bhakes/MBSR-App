//
//  InformalTableWeek6+Convenience.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension InformalTableWeek6{
    
    convenience init(actualOutcome: String, describeCommunication: String, duringAndAfter: String, desire: String, logDate: Date = Date(), now: String, othersDesire: String, practiceDate: Date = Date(), weekNumber: Int16, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        
        self.init(context: context)
        self.actualOutcome = actualOutcome
        self.describeCommunication = describeCommunication
        self.desire = desire
        self.duringAndAfter = duringAndAfter
        self.logDate = logDate
        self.now = now
        self.othersDesire = othersDesire
        self.practiceDate = practiceDate
        self.weekNumber = weekNumber
    }
}
