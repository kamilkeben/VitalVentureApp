//
//  ForgotMyPasswordPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 29.05.2024.
//

import SwiftUI

struct ForgotMyPasswordPage: View {
    @State private var username: String = ""
    @State var showAlert: Bool = false
    @State var isActive: Bool = false
    var body: some View {
        if isActive {
            AlertPage(isActive: $isActive, title: "Email'ini kontrol et!", message: "E-postanıza şifre kurtarma talimatı gönderdik", buttonTitle: "Kapat", action: {})
        }
        else {
            VStack {
                
                Spacer()
                Text("Şifremi Unttum")
                    .font(.system(size: 26))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                
                Text("Email hesabını gir ve şifreni sıfırla.")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(Color.black
                        .opacity(0.7))
                    .frame(width: 270)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                TextField("Username", text: $username)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(14)
                Spacer()
                
                ZStack{
                    VStack {
                        Button {
                            isActive = true
                        }
                            label: {
                                Text("Şifreyi Sıfırla")
                            .font(.system(size: 18))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color.splashscreencolor))
                        .foregroundColor(.white)
                        }
                        
                    }
                    .padding()
                    
                }
                .ignoresSafeArea()
                
                
                
                
            }
            
            .padding(.all)
        }
        
        
        
        
        
    }
}

#Preview {
    ForgotMyPasswordPage()
}
