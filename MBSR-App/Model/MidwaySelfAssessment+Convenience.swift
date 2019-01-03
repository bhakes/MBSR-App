//
//  MidwaySelfAssessment+Convenience.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension MidwaySelfAssessment{
    
    convenience init(logDate: Date = Date(), practiceDate: Date = Date(), recall: String, whatIsHappening: String, whatIsNotHappening: String, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        
        self.init(context: context)
        self.logDate = logDate
        self.practiceDate = practiceDate
        self.recall = recall
        self.whatIsHappening = whatIsHappening
        self.whatIsNotHappening = whatIsNotHappening
    }

}
