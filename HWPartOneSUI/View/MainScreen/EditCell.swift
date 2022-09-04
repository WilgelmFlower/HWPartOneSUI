import SwiftUI

struct EditCell: View {
    
    @Environment(\.presentationMode) var prepresentationMode
    @State private var selectedRow: String?
    
    var body: some View {
        ZStack{
            List(selection: $selectedRow){
                ForEach(modelData) { data in
                    HStack{
                        Text(data.image)
                            .foregroundColor(.red)
                        Text(data.text)
                    }
                }
                .onMove(perform: move)
                .listRowBackground(Color.white)
            }
            .environment(\.editMode, .constant(.active))
            .navigationBarBackButtonHidden(true)
        }
    }
}
func move(from sourse: IndexSet, to distancion: Int){
    modelData.move(fromOffsets: sourse, toOffset: distancion)
}

struct EditCell_Previews: PreviewProvider {
    static var previews: some View {
        EditCell()
    }
}
