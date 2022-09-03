import SwiftUI

struct RadioViewVerticalStack: View {
    
    let columns = [GridItem(.flexible())]
    
    var body: some View {
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
                            .offset(y: 23)
                    }
                }
            }
            .padding(.leading)
        }
        .padding(.bottom, 80)
    }
}

struct RadioViewVerticalStack_Previews: PreviewProvider {
    static var previews: some View {
        RadioViewVerticalStack()
    }
}
