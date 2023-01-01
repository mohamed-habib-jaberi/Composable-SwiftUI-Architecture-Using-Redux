//
//  IncrementMiddleware.swift
//  HelloMiddleware (iOS)
//
//  Created by mohamed  habib on 01/01/2023.
//  Copyright © 2023 JABERI Mohamed. All rights reserved.
//

import Foundation

func incrementMiddleware() -> Middleware<AppState> {
    
    return { state, action, dispatch in
        print("[LOG MIDDLEWARE]")
    
        switch action {
        case _ as IncrementActionAsync:
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                dispatch(IncrementAction())
            }
        default:
            break
        }
    }
    
}
