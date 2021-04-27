//
//  Singer+CoreDataProperties.swift
//  CoreDataProject (iOS)
//
//  Created by Erik Mikac on 4/27/21.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?

    var wrappedFirstName(name: String) {
        firstName ?? "Unknown First Name"
    }
    
    var wrappedLastName(name: String) {
        lastName ?? "Unknown Last Name"
    }
}

extension Singer : Identifiable {

}
