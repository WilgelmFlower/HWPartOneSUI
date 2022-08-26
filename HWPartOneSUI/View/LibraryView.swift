import SwiftUI

struct LibraryView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray5
    }
    var body: some View {
        ZStack {
            NavigationView {
                TabView {
                    MainScreenText()
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
                .navigationTitle("Медиатека")
            }
            NavigationLink("Править", destination: RadioView())
                .offset(x: 150, y: -400)
                .foregroundColor(.red)
                .font(.title2)
            MiniPlayer()
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
