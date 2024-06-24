import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack {
            Color(.splashscreencolor)
                .ignoresSafeArea(.all)
            
            VStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 443, height: 443)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.isActive = true
            }
        }
        .fullScreenCover(isPresented: $isActive) {
            StartInfoPage1()
        }
    }
}

#Preview {
    SplashScreenView()
}
