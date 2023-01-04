

import SwiftUI

struct MovieDetailsView: View {
    
    @EnvironmentObject var store: Store<AppState>
    
    let movie: Movie
    
    struct Props {
        let details: MovieDetail?
        let onLoadMovieDetails: (String) -> Void
    }
    
    private func map(state: MoviesState) -> Props {
        Props(details: state.selectedMovieDetail, onLoadMovieDetails: { imdbId in
            store.dispatch(action: FetchMovieDetails(imdbId: imdbId))
        })
    }
    
    var body: some View {
        VStack {
            let props = map(state: store.state.movies)
            
            Group {
                if let details = props.details {
                    VStack(alignment: .leading) {
                        HStack {
                            Spacer()
                            URLImage(url: details.poster)
                            Spacer()
                        }
                        
                        Text(details.title).padding(5)
                            .font(.title)
                        Text(details.plot).padding(5)
                        
                        HStack {
                            Text("Rating")
                            RatingView(rating: .constant(details.imdbRating.toInt()))
                        }.padding()
                        
                        Spacer()
                    }
                } else {
                    Text("Loading...")
                }
            }
            
            .onAppear(perform: {
                props.onLoadMovieDetails(movie.imdbId)
            })
            
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        
        let store = Store(reducer: appReducer, state: AppState(), middlewares: [moviesMiddleware()])
        
        return MovieDetailsView(movie: Movie(title: "Batman", poster: "https://m.media-amazon.com/images/M/MV5BMTdjZTliODYtNWExMi00NjQ1LWIzN2MtN2Q5NTg5NTk3NzliL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg", imdbId: "tt4853102"))
            .environmentObject(store)
    }
}
