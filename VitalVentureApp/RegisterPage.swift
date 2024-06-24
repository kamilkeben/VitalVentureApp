  //
//  RegisterPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 29.05.2024.
//

import SwiftUI

struct RegisterPage: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State var name: String = ""
    
    var body: some View {
        VStack(spacing: 20){
           
            Text("Kayıt Ol")
                .font(.system(size: 26))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Lütfen tüm detayları doldur")
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundStyle(Color.black
                    .opacity(0.7))
                .frame(width: 270)
                .multilineTextAlignment(.center)
            
                Spacer()
            
            TextField("Name & Surname", text: $name)
                .padding()
                .foregroundColor(.black)
                .background(Color.gray.opacity(0.25))
                .cornerRadius(14)
            
            
                
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
                Text("Şifren en az 8 karakterden oluşmalı!")
                .font(.system(size: 14))
                .frame(maxWidth: .infinity)
                
                .foregroundStyle(Color.black.opacity(0.7))
                Spacer(minLength: 120)
            }

            NavigationLink {
            VerificationPage()
            } label: {
                Text("Kayıt ol")
                .font(.system(size: 18))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.splashscreencolor))
                .foregroundColor(.white)
        }
        .padding()
            HStack{
                Text("Hesabın var mı?")
                    .font(.system(size: 14))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                NavigationLink {
                LoginPage ()
                }
                        label: {
                    Text("Giriş Yap")
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
    RegisterPage()
}
