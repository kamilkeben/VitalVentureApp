import SwiftUI

struct StartInfoPage1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image("yerkopru")
                        .resizable()
                        .frame(width: 443, height: 443)
                        .edgesIgnoringSafeArea(.all)
                        
                    VStack {
                        Text("Hayat kısa ve dünya geniş")
                            .font(.system(size: 28))
                            .frame(width: 309)
                            .bold()
                            .multilineTextAlignment(.center)
                                    
                        
                        Text("VitalVenture olarak size yakın\n konumdaki en güzel yerleri\n gösteriyoruz")
                            .font(.system(size: 16))
                            .frame(height: 72)
                            .padding()
                            .lineLimit(4)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        NavigationLink {
                            StartInfoPage2()
                        } label: {
                            Text("Hadi Başlayalım...")
                                .font(.system(size: 18))
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color.splashscreencolor))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement:.topBarTrailing){
                    NavigationLink {
                    LoginPage()
                    }
                            label: {
                        Text("Atla")
                                    .foregroundStyle(.blue)
                        
                        
                }
                }
            }
        }
        
        .padding()
    }
        
}

#Preview {
    StartInfoPage1()
}
