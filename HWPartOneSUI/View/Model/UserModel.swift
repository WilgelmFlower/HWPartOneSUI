import SwiftUI

class UserModel: ObservableObject {
    @Published var userModel = modelSearch
    @Published var searchText = ""
    
    func searchingMusic() -> some View {
       ForEach(userModel.filter { music in
            searchText == "" ? true : music.description.lowercased().contains(searchText.lowercased())
       }) { music in
           Text(music.description)
               .searchCompletion(music.description)
       }
    }
}
