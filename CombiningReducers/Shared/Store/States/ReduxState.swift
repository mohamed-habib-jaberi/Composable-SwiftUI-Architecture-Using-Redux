//
//  ReduxState.swift
//  CombiningReducers
//
//  Created by mohamed  habib on 01/01/2023.
//

import Foundation

protocol ReduxState { }

struct AppState: ReduxState {
    var counterState = CounterState()
    var taskState = TaskState()
}

struct TaskState: ReduxState {
    var tasks: [Task] = [Task]()
}

struct CounterState: ReduxState {
    var counter = 0
}
