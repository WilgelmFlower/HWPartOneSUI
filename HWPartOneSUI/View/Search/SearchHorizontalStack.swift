import SwiftUI

struct SearchHorizontalStack: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Настроение - осень")
                    .fontWeight(.bold)
                    .font(.title2)
                    .offset(x: -60)
                Button(action: {}) {
                    Text("См.все")
                        .foregroundColor(.red)
                        .offset(x: 60)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Image("hs1")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    Image("hs2")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    Image("hs3")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    Image("hs4")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    Image("hs5")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    Image("hs6")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    Image("hs7")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    Image("hs8")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SearchHorizontalStack_Previews: PreviewProvider {
    static var previews: some View {
        SearchHorizontalStack()
    }
}
