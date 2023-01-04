//
//  Actions.swift
//  RestRoomFinder
//
//  Created by Mohammad Azam on 10/15/20.
//

import Foundation

protocol Action { }

struct FetchRestroomsAction: Action {
    let latitude: Double
    let longitude: Double
}

struct SetRestroomsAction: Action {
    let restrooms: [Restroom]
}
