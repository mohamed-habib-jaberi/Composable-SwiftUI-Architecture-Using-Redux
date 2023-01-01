

import Foundation

protocol Action { }

struct IncrementAction: Action { }
struct DecrementAction: Action { }
struct AddTaskAction: Action {
    let task: Task
}

struct IncrementActionAsync: Action { }

struct AddAction: Action {
    let value: Int
}
