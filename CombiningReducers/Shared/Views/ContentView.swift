
import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    @EnvironmentObject var store: Store<AppState>
    
    struct Props {
        let counter: Int
        let onIncrement: () -> Void
        let onDecrement: () -> Void
        let onAdd: (Int) -> Void
    }
    
    private func map(state: CounterState) -> Props {
        Props(counter: state.counter, onIncrement: {
            store.dispatch(action: IncrementAction())
        }, onDecrement: {
            store.dispatch(action: DecrementAction())
        }, onAdd: {
            store.dispatch(action: AddAction(value: $0))
        })
    }
    
    var body: some View {
        
        let props = map(state: store.state.counterState)
        
        VStack {
            Spacer()
            
            Text("\(props.counter)")
                .padding()
            Button("Increment") {
                props.onIncrement()
            }
            Button("Decrement") {
                props.onDecrement()
            }
            Button("Add") {
                props.onAdd(100)
            }
            
            Spacer()
            
            Button("Add Task") {
                isPresented = true
            }
            
            Spacer()
        }.sheet(isPresented: $isPresented, content: {
            Text("Add Task View")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let store = Store(reducer: appReducer, state: AppState())
        return ContentView().environmentObject(store)
    }
}
