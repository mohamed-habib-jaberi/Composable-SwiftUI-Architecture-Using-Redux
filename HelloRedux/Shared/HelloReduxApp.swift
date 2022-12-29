

import SwiftUI

@main
struct HelloReduxApp: App {
    var body: some Scene {
       
        let store = Store(reducer: reducer)
        
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
