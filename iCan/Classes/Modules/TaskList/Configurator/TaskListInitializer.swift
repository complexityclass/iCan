//
//  TaskListInitializer.swift
//  iCan
//
//  Created by Popov Valery on 21/02/2016.
//  Copyright © 2016 Complexityclass Inc.. All rights reserved.
//

import UIKit

class TaskListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var viewController: TaskListViewController!

    override func awakeFromNib() {

        let configurator = TaskListModuleConfigurator()
        configurator.configureModuleForViewInput(viewController)
    }

}
