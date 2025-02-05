import ComposableArchitecture
import SwiftUI

struct RootView: View {
  let store: StoreOf<Root>

  var body: some View {
    NavigationView {
      Form {
        Section {
          FocusView(
            store: store.scope(state: \.focus, action: \.focus)
          )
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      RootView(
        store: Store(initialState: Root.State()) {
          Root()
        }
      )
    }
  }
}
