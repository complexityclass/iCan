//
//  TaskListPresenter.swift
//  iCan
//
//  Created by Popov Valery on 21/02/2016.
//  Copyright © 2016 Complexityclass Inc.. All rights reserved.
//

class TaskListPresenter: TaskListModuleInput, TaskListViewOutput, TaskListInteractorOutput{

    weak var view: TaskListViewInput!
    var interactor: TaskListInteractorInput!
    var router: TaskListRouterInput!

    func viewIsReady() {
        print("view is ready")
    }
}
