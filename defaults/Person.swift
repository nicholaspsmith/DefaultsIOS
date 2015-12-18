//
//  Person.swift
//  defaults
//
//  Created by Nick on 12/17/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import Foundation

class Person: NSObject, NSCoding {
    var firstName: String!
    var lastName: String!
    
    init(first: String, last: String) {
        firstName = first
        lastName = last
    }
    
    override init() {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
    }
}