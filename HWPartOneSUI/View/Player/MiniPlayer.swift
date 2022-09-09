import SwiftUI

struct MiniPlayer: View {
    
    @State private var showingSheet: Bool = false
    
    var body: some View {
        VStack {
            
            Button {
                showingSheet.toggle()
            } label: {
                HStack(spacing: 15) {
                    Image("hurts")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 55, height: 55)
                        .cornerRadius(15)
                    Text("Hurts")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}, label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    })
                }
                .padding(.horizontal)
            }
        }
        .popover(isPresented: $showingSheet, content: {
            PlayerFullScreen()
            
        })
        .frame(height: 80)
        .foregroundColor(.black)
        .background(BlurViewPlayer())
    }
}
