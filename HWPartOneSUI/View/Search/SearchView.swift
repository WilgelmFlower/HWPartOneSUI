import SwiftUI

struct SearchView: View {
    
    @ObservedObject var user = UserModel()
    @State private var searchText = ""
    
    let columns: [GridItem] = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200))
    ]
    
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                Text("Поиск по категориям")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .padding(.horizontal)
                
                LazyVGrid(columns: columns) {
                    ForEach(user.userModel) {data in
                        NavigationLink(destination: SearchViewSecondScreen()) {
                            
                            VStack(alignment: .leading, spacing: -20) {
                                data.image
                                    .resizable()
                                    .frame(width: 200, height: 150)
                                    .cornerRadius(15)
                                
                                Text(data.description)
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                                    .offset(x: 10,y: -15)
                            }
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "Поиск музыки") {
                    ForEach(user.userModel.filter { music in
                        searchText == "" ? true : music.description.lowercased().contains(searchText.lowercased())
                    }) { music in
                        Text(music.description)
                            .searchCompletion(music.description)
                    }
                }
            }
            .padding(.bottom, 80)
            .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
