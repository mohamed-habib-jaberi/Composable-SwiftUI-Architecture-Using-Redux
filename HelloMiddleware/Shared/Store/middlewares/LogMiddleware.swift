
import Foundation

func logMiddleware() -> Middleware<AppState> {
    
    return { state, action, dispatch in
        print("[LOG MIDDLEWARE]")
    }
    
}

