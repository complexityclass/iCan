//
//  MappersTests.swift
//  iCan
//
//  Created by Popov Valery on 21/02/16.
//  Copyright © 2016 complexityclass. All rights reserved.
//

import XCTest
import Nimble

class MappersTests: XCTestCase {
    
    func testThatTaskEntityMapsProperly() {
        
        //given
        let taskJson = jsonForResourceName("task", ofType: "json")
        
        //when
        let task = Task.fromJson(taskJson)
        
        //then
        expect(task.title).to(equal("task1"))
        expect(task.priority).to(equal(TaskPriority.Low))
        expect(task.dueDate).notTo(beNil())
    }
    
}

extension MappersTests {
    
    func jsonForResourceName(name: String, ofType type: String) -> [String : AnyObject] {
        
        let testBundle = NSBundle(forClass: MappersTests.self)
        let jsonPath = testBundle.pathForResource(name, ofType: type)
        let jsonData = NSData(contentsOfFile: jsonPath!)
        return try! NSJSONSerialization.JSONObjectWithData(jsonData!, options: .AllowFragments) as! [String : AnyObject]
    }
}
