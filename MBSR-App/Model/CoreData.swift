//
//  CoreData.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 12/16/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let shared = CoreDataStack()
    private init() {}
    
    
    
    lazy var container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "MBSR-Model")
        container.loadPersistentStores{ (_, error) in
            if let error = error {
                fatalError("error loading Core Data stores: \(error)")
            }
        }
        return container
    }()
    
    var mainContext: NSManagedObjectContext{ return container.viewContext }
    
    
    
}
