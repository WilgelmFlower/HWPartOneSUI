import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        VStack {
            
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
        .frame(height: 80)
        .background(BlurView())
        .offset(y: 333)
}
}
