import SwiftUI

struct SearchHorizontalStack: View {
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Настроение - осень")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.leading)
                
                Spacer()
                
                Button(action: {}) {
                    Text("См.все")
                        .foregroundColor(.red)
                        .padding(.trailing)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(searchStack) { data in
                        data.image
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(20)
                    }
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
