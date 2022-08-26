import SwiftUI

struct MainScreenText: View {
    var body: some View {
        VStack {
            Text("Ищете свою музыку?")
                .font(.title)
                .bold()

            Text("Здесь появится купленная Вами в Itunes Store музыка.")
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .font(.system(size: 20))
        }
    }
}

struct MainScreenText_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenText()
    }
}
