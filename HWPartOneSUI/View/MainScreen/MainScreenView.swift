import SwiftUI

struct MainScreenView: View {
    @State private var isButtonToggle = true
    
    var body: some View {
        NavigationView{
            ZStack{
                if isButtonToggle {
                    MainScreenText()
                } else {
                    EditCell()
                }
            }
            .navigationBarItems(trailing: Button {
                self.isButtonToggle.toggle()
            } label: {
                if isButtonToggle {
                    Text("Править")
                } else {
                    Text("Готово")
                }
            })
            .navigationTitle("Медиатека")
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
