

import Foundation

// it's the global reducer or the root ruducer for the app
func appReducer(_ state: AppState, _ action: Action) -> AppState {
    
    var state = state
    state.counterState = counterReducer(state.counterState, action)
    state.taskState = taskReducer(state.taskState, action)
    return state
}
