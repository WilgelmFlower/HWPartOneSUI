import SwiftUI

struct SearchViewSecondScreen: View {
    
    let rows = [GridItem(.fixed(200))]
    
    var body: some View {
        ScrollView {
            
            Divider()
                .frame(width: 380)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 10) {
                    ForEach(modelRadio) { data in
                        
                        VStack(alignment: .leading) {
                            Text(data.typeRadio)
                                .foregroundColor(.secondary)
                                .font(.system(size: 20))
                            Text(data.genreRadio)
                                .bold()
                                .font(.system(size: 20))
                            Text(data.infoRadio)
                                .foregroundColor(.secondary)
                                .font(.system(size: 20))
                            data.image
                                .resizable()
                                .frame(width: 400, height: 250, alignment: .bottom)
                        }
                        .padding(.bottom)
                        .padding(.leading)
                    }
                }
            }
            
            Divider()
                .frame(width: 400)
            
            SearchHorizontalStack()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {}) {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
        .navigationTitle("Альбомы")
        .padding(.horizontal)
    }
}

struct SearchViewSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewSecondScreen()
    }
}
