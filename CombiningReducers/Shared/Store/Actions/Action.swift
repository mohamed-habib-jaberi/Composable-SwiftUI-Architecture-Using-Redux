//
//  Action.swift
//  CombiningReducers
//
//  Created by mohamed  habib on 01/01/2023.
//

import Foundation

protocol Action { }

struct IncrementAction: Action { }

struct DecrementAction: Action { }

struct AddTaskAction: Action {
    let task: Task
}

struct AddAction: Action {
    let value: Int
}
