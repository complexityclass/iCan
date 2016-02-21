//
//  TaskListConfigurator.swift
//  iCan
//
//  Created by Popov Valery on 21/02/2016.
//  Copyright © 2016 Complexityclass Inc.. All rights reserved.
//

import UIKit

class TaskListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? TaskListViewController {
            configure(viewController)
        }
    }

    private func configure(viewController: TaskListViewController) {

        let router = TaskListRouter()

        let presenter = TaskListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TaskListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
