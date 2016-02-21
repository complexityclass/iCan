//
//  TaskListViewController.swift
//  iCan
//
//  Created by Popov Valery on 21/02/2016.
//  Copyright © 2016 Complexityclass Inc.. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController, TaskListViewInput {

    var output: TaskListViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: TaskListViewInput
    func setupInitialState() {
    }
}
