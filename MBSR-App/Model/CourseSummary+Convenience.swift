//
//  CourseSummary.swift
//  MBSR-App
//
//  Created by Iyin Raphael on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

extension CourseSummary {
    
    convenience init(learnings: String, context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        self.init(context: context)
        self.learnings = learnings
    }
    
}
