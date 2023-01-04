

import Foundation

func moviesMiddleware() -> Middleware<AppState> {
    
    return { state, action, dispatch in
        
        switch action {
            case let action as FetchMovies:
                Webservice().getMoviesBy(search: action.search.urlEncode()) { result in
                    switch result {
                        case .success(let movies):
                            if let movies = movies {
                                // set movies to the state
                                dispatch(SetMovies(movies: movies))
                            }
                        case .failure(let error):
                            print(error.localizedDescription)
                    }
                }
                
            case let action as FetchMovieDetails:
                Webservice().getMovieDetailsBy(imdbId: action.imdbId) { result in
                    switch result {
                        case .success(let details):
                            if let details = details {
                                dispatch(SetMovieDetails(details: details))
                            }
                        case .failure(let error):
                            print(error.localizedDescription)
                    }
                }
            default:
                break
            }
        
    }
    
}
