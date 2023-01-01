

import SwiftUI

@main
struct HelloReduxApp: App {
    var body: some Scene {
       
        let store = Store(reducer: appReducer, state: AppState())
        
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
