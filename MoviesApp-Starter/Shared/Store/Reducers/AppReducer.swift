

import Foundation

func appReducer(_ state: AppState, _ action: Action) -> AppState {
    
    var state = state
    state.movies = moviesReducer(state.movies, action)
    return state
}
