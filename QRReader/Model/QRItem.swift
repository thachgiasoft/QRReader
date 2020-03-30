//
//  QRItem.swift
//  QRReader
//
//  Created by Hansub Yoo on 2020/03/28.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import Foundation
import CoreData

public class QRCodes: NSManagedObject, Identifiable {
    @NSManaged public var date: Date?
    @NSManaged public var content: String?
}

extension QRCodes {
    static func getAllQRCodes() -> NSFetchRequest<QRCodes> {
        let request: NSFetchRequest<QRCodes> = NSFetchRequest<QRCodes>(entityName: "QRCodes") // QRCodes.fetchRequest() as! NSFetchRequest<QRCodes>
        
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}