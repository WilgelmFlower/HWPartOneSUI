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
                    .padding(.horizontal)
                    

                ZStack {
                    VStack(alignment: .leading) {
                        Text("Nothing Will Be Bigger")
                            .font(.system(size: 20, design: .rounded))
                            .frame(width: 200)
                            
                        Text("Hurts")
                        
                        Slider(value: $value, in: 0...4.12, step: 0.01)
                            .frame(width: 350)
                            .padding(.trailing, 50)
                    }
                    .padding(.leading, 50)
                    
        
                    HStack {
                        Text(String(format: "%.2f", value))
                            Spacer()
                        Text(String(format: "%.2f", (value) - 4.12))
                    }
                    .padding(.top, 110)
                    .padding(.horizontal, 50)
                    
                    
                    Spacer()
                        .frame(width: 150)
                        
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .frame(width: 35, height: 35)
                            .font(.title)
                            .foregroundColor(.primary)
                            .padding(.leading, 290)
                    }
                }
                .padding(.bottom, 300)
            }
            .padding(.top, 150)
            
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
            
            VStack(alignment: .center, spacing: 60) {
                
            HStack(alignment: .center) {
                Image(systemName: "speaker.fill")
        
                Slider(value: $valueSecond, in: 0...100)
                    .frame(width: 280)
                
                Image(systemName: "speaker.wave.3.fill")
            }
            .padding(.vertical)
            .padding(.top, 650)
            
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
            .padding(.horizontal)
            
            }
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
