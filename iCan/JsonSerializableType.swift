//
//  JsonSerializableType.swift
//  iCan
//
//  Created by Popov Valery on 21/02/16.
//  Copyright © 2016 complexityclass. All rights reserved.
//

import Foundation

protocol JsonSerializableType {
    
    /**
     Method returns model from json representation
     */
    static func fromJson(_ : [String : AnyObject]) -> Self
}