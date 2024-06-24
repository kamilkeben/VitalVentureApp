//
//  LoginPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 29.05.2024.
//

import SwiftUI

struct LoginPage: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20){
           
            Text("Giriş Yap")
                .font(.system(size: 26))
                .fontWeight(.bold)
                
                .multilineTextAlignment(.center)
            
            Text("Devam etmek için lütfen giriş yap")
                .font(.system(size: 16))
                .fontWeight(.regular)
                .frame(width: 270)
                .multilineTextAlignment(.center)
            
            
            
            
                
            TextField("Username", text: $username)
                .padding()
                .foregroundColor(.black)
                .background(Color.gray.opacity(0.25))
                .cornerRadius(14)
                
            // Password Section
            
            SecureField("Password", text: $password)  // SecureField is used for password input
                .padding()
                .foregroundColor(.black)
                .background(Color.gray.opacity(0.25))
                .cornerRadius(14)
            
            HStack{
                Spacer(minLength: 220)
                NavigationLink {
                ForgotMyPasswordPage()
                }
                        label: {
                    Text("Şifremi Unuttum")
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundStyle(Color.orange)
                    
            }
            }
            NavigationLink {
            VerificationPage()
            } label: {
                Text("Giriş Yap")
                .font(.system(size: 18))
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.splashscreencolor))
                .foregroundColor(.white)
        }
        .padding()
            HStack{
                Text("Hesabın yok mu?")
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                NavigationLink {
                RegisterPage()
                }
                        label: {
                    Text("Kaydol")
                    .font(.system(size: 14))
                    .padding()
                    .foregroundStyle(Color.orange)
                    
            }
                
            }
            
            
            Text("Ya da Bağlan")
                .font(.system(size: 14))
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                
            Spacer()
            
            HStack{
                
                ZStack{
                    Circle().fill(Color.facebooklogocolor)
                        .frame(width: 43, height: 43)
                    Image("facebooklogo")
                        .resizable()
                        .frame(width: 43, height: 43)
                    
                }
                
                ZStack{
                    Circle().foregroundColor(.white)
                        .frame(width: 44 , height: 44)
                    Image("instagramlogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60    , height: 60)
                        
                }
                ZStack{
                    Circle().foregroundColor(.white)
                        .frame(width: 44 , height: 44)
                    Image("xlogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 43    , height: 43)
                        
                }
                
            }
        }
        
        .padding(.vertical)
        .padding(.vertical)
        .padding()
        
        
        
            
       
    }
    
}
        
#Preview {
    LoginPage()
}
