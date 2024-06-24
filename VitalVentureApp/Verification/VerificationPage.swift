import SwiftUI

struct VerificationPage: View {
    @State private var canResendCode = false
    @State var isActive: Bool = false

    var body: some View {
        
        if isActive  {
            VerificationAlert(isActive: $isActive, title: "Email'ini kontrol et!", message: "E-postanıza doğrulama kodunu tekrar gönderdik!", buttonTitle: "Kapat", action:{} )
        } else {
            VStack {
                Spacer()
                Text("Hesabını Doğrula")
                    .font(.system(size: 26))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Doğrulama kodunu görmek için lütfen www.kmlkbn@gmail.com e-posta adresinizi kontrol edin.")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(Color.black.opacity(0.7))
                    .frame(width: 270)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack {
                    Text("Doğrulama Kodu")
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                }
                
                // OTP Textfield Stack
                OTPTextField(numberOfFields: 6)
                    .padding()
                
                NavigationLink {
                    TabBar()
                } label: {
                    Text("Doğrula")
                        .font(.system(size: 18))
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color.splashscreencolor)
                        )
                        .foregroundColor(.white)
                }
                
                HStack {
                    ZStack{
                        VStack {
                            Button {
                                isActive = true
                            }
                                label: {
                                    Text("Kodu Tekrar Gönder")
                                .font(.system(size: 18))

                            }
                            
                        }
                        .padding()
                        
                    }
                    .disabled(!canResendCode) // Buton aktif değilken gri görünsün
                    
                    Spacer()
                    
                    TimerPage(canResendCode: $canResendCode)
                }
                Spacer()
                    .padding()
            }
            .ignoresSafeArea()
            .padding()
        }
        }
        
}

#Preview {
    VerificationPage()
}
