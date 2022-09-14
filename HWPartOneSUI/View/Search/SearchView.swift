//import SwiftUI
//
//struct SearchView: View {
//
//    @ObservedObject var user = UserModel()
//
//    let columns: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//
//    var body: some View {
//        NavigationView {
//
//            ScrollView(.vertical, showsIndicators: false) {
//                HStack {
//                Text("Поиск по категориям")
//                    .font(.system(size: 20, weight: .bold, design: .rounded))
//                    Spacer()
//                }
//
//                LazyVGrid(columns: columns, spacing: 10) {
//                    ForEach(user.userModel) {data in
//                        NavigationLink(destination: SearchViewSecondScreen()) {
//
//                            ZStack(alignment: .bottomLeading) {
//                                data.image
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: (UIScreen.main.bounds.width - 50) / 2,
//                                           height: 150)
//                                    .cornerRadius(15)
//
//                                Text(data.description)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 18, weight: .bold, design: .rounded))
//                                    .padding(.leading)
//                                    .padding(.bottom, 5)
//                            }
//                        }
//                    }
//                }
//                .searchable(text: $user.searchText, prompt: "Поиск музыки") {
//                    user.searchingMusic()
//                }
//            }
//            .padding(.horizontal, 20)
//            .padding(.bottom, 80)
//            .navigationTitle("Поиск")
//        }
//    }
//}
//
//struct SearchView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchView()
//    }
//}
