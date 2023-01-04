//
//  RestroomsMiddleware.swift
//  RestRoomFinder
//
//  Created by Mohammad Azam on 10/15/20.
//

import Foundation

func restroomMiddleware() -> Middleware<AppState> {
    
    return { state, action, dispatch in
        
        switch action {
            case let action as FetchRestroomsAction:
                getRestroomsByLatAndLng(action: action, dispatch: dispatch)
            default:
                break
        }
        
    }
    
}

private func getRestroomsByLatAndLng(action: FetchRestroomsAction, dispatch: @escaping Dispatcher) {
    
    Webservice().getRestroomsByLatAndLng(lat: action.latitude, lng: action.longitude) { result in
        switch result {
            case .success(let restrooms):
                if let restrooms = restrooms {
                    dispatch(SetRestroomsAction(restrooms: restrooms))
                }
            case .failure(let error):
                print(error.localizedDescription)
        }
    }
    
}
