import SwiftUI

struct RadioView: View {
    
    let rows = [GridItem(.fixed(200))]
    
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
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
                LazyVGrid(columns: columns,alignment: .leading, spacing: 20) {
                    Text("Cтанции")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                    ForEach(modelRadioStation) { data in
                        HStack {
                            data.image
                                .resizable()
                                .frame(width: 80, height: 80)
                            VStack(alignment: .leading) {
                                Text(data.nameRadio)
                                Text(data.typeRadioStation)
                                    .foregroundColor(.secondary)
                                Divider()
                                    .frame(width: 300)
                            }
                        }
                    }
                    .padding(.leading)
                }
            }
            .navigationTitle("Радио")
        }
    }
    
    struct RadioView_Previews: PreviewProvider {
        static var previews: some View {
            RadioView()
        }
    }
}
