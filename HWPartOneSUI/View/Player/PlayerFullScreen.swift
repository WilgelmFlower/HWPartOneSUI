import SwiftUI

struct PlayerFullScreen: View {
    @State private var value: Double = 0.0
    @State private var valueSecond: Double = 0.0
    
    var body: some View {
        ZStack {
            
            VStack {
                Image("hurts")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
                    .offset(y: -160)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Nothing Will Be Bigger")
                            .font(.system(size: 20, design: .rounded))
                            .frame(width: 200)
                            .offset(x: 100)
                        Text("Hurts")
                            .offset(x: 100)
                        
                        Slider(value: $value, in: 0...60)
                            .offset(x: 90)
                            .frame(width: 400)
                        Text("0:00")
                            .offset(x: 100, y: -10)
                        Text("-4:12")
                            .offset(x: 450, y: -30)
                    }
                    
                    Spacer()
                        .frame(width: 150)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .frame(width: 35, height: 35)
                            .font(.title)
                            .foregroundColor(.primary)
                            .offset(x: -100, y: -40)
                    }
                }
                .offset(y: -100)
            }
            
            HStack(spacing: 50) {
                Button(action: {}) {
                    Image(systemName: "backward.fill")
                        .foregroundColor(.black)
                }
                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                }
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                }
            }
            .font(.system(size: 50))
            .offset(y: 185)
            
            HStack {
                Image(systemName: "speaker.fill")
                    .offset(y: 300)
                Slider(value: $valueSecond, in: 0...100)
                    .offset(y: 300)
                    .frame(width: 350)
                Image(systemName: "speaker.wave.3.fill")
                    .offset(y: 300)
            }
            
            HStack(spacing: 70) {
                Button(action: {}) {
                    Image(systemName: "quote.bubble")
                        .foregroundColor(.black)
                }
                Button(action: {}) {
                    Image(systemName: "airplayaudio")
                        .foregroundColor(.black)
                }
                Button(action: {}) {
                    Image(systemName: "list.bullet")
                        .foregroundColor(.black)
                }
            }
            .font(.system(size: 30))
            .offset(y: 380)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red.opacity(0.4))
    }
}

struct PlayerFullScreen_Previews: PreviewProvider {
    static var previews: some View {
        PlayerFullScreen()
    }
}
