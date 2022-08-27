import SwiftUI

struct LibraryView: View {
    
    @State private var isButtonToggle = true
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray5
    }
    
    var body: some View {
        ZStack {
            TabView {
                MainScreenView()
                    .tabItem {
                        Image(systemName: "music.note.house.fill")
                        Text("Медиатека")
                    }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(Color.red)
            MiniPlayer()
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
