//
//  TaskListPresenterTests.swift
//  iCan
//
//  Created by Popov Valery on 21/02/2016.
//  Copyright © 2016 Complexityclass Inc.. All rights reserved.
//

import XCTest

class TaskListPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: TaskListInteractorInput {

    }

    class MockRouter: TaskListRouterInput {

    }

    class MockViewController: TaskListViewInput {

        func setupInitialState() {

        }
    }
}
