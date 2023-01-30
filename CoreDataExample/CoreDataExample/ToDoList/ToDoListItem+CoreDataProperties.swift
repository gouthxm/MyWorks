//
//  TodoListItem+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Goutham Raj N on 24/09/22.
//
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem")
    }

    @NSManaged public var name: String?
    @NSManaged public var createdDate: Date?

}

extension ToDoListItem : Identifiable {

}
