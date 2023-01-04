//
//  RestroomsReducer.swift
//  RestRoomFinder
//
//  Created by Mohammad Azam on 10/15/20.
//

import Foundation

func restroomsReducer(_ state: RestroomState, _ action: Action) -> RestroomState {
    var state = state
    
    switch action {
        case let action as SetRestroomsAction:
            state.restrooms = action.restrooms
        default:
            break
    }
    
    return state
}
