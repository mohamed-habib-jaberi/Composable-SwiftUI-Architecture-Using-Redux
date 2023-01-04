

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store<AppState>
    @State private var search: String = ""
    
    struct Props {
        let movies: [Movie]
        let onSearch: (String) -> Void
    }
    
    private func map(state: MoviesState) -> Props {
        Props(movies: state.movies, onSearch: { keyword in
            store.dispatch(action: FetchMovies(search: keyword))
        })
    }
    
    var body: some View {
        
        let props = map(state: store.state.movies)
        
        VStack {
            
            TextField("Search", text: $search, onEditingChanged: { _ in }, onCommit: {
                    props.onSearch(search)
            }).textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            List(props.movies, id: \.imdbId) { movie in
                NavigationLink(
                    destination: MovieDetailsView(movie: movie),
                    label: {
                        MovieCell(movie: movie)
                    })
            }.listStyle(PlainListStyle())
        }
        .navigationTitle("Movies")
        .embedInNavigationView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let store = Store(reducer: appReducer, state: AppState(), middlewares: [moviesMiddleware()])
        return ContentView().environmentObject(store)
    }
}

struct MovieCell: View {
    
    let movie: Movie
        
    var body: some View {
        HStack(alignment: .top) {
            URLImage(url: movie.poster)
                .frame(width: 100, height: 125)
                .cornerRadius(10)
            Text(movie.title)
        }
    }
}
