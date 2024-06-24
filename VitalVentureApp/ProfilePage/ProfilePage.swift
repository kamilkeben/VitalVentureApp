//
//  ProfilePage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 6.06.2024.
//

import SwiftUI

struct ProfilePage: View {
   
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    Spacer()
                    Image("avatar")
                        .resizable()
                        .frame(width: 96, height: 96)
                        .padding(.bottom, 10)
                    Text("Kamil")
                        .fontWeight(.medium)
                        .font(.system(size: 24))
                    
                    Text("kmlkbn @gmail.com")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                        .padding(.bottom, 10)
                    
                    ZStack{ 
                        RoundedRectangle(cornerRadius: 16)
                            .frame(height: 78)
                            .foregroundColor(.graybuttoncolor)
                        
                        HStack{
                            Spacer()
                            
                            VStack{
                                Text("Puanlar")
                                Text("360")
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.alertmessagecolor)
                            }
                            Spacer()
                            
                            VStack{
                                Text("Atılan Adım")
                                Text("2365")
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.alertmessagecolor)
                            }
                            Spacer()
                            VStack{
                                Text("Gezilen\n Yerler")
                                Text("20")
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.alertmessagecolor)
                            }
                            Spacer()
                        }
                        
                    }
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 16)
                            .frame(height: 260)
                            .foregroundColor(Color.graybuttoncolor)
                        
                        VStack{
                            
                            NavigationLink(destination: EditProfile()) {
                                HStack{
                                    Image(systemName: "person")
                                        .foregroundColor(.gray)
                                    Text("Profili Düzenle")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.black)
                                    Spacer()
                                    Image(systemName: "greaterthan")
                                        .foregroundColor(.black)
                                    
                                }.padding()
                            }
                            NavigationLink(destination: RegisterPage()) {
                                HStack{
                                    Image(systemName: "bookmark")
                                        .foregroundColor(.gray)
                                    Text("Kaydedilenler")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "greaterthan")
                                        .foregroundColor(.black)
                                }.padding()
                            }
                            
                            NavigationLink(destination : RegisterPage()) {
                                HStack{
                                    Image(systemName: "slider.horizontal.3")
                                        .foregroundColor(.gray)
                                    
                                    Text("Ayarlar")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "greaterthan")
                                        .foregroundColor(.black)
                                }.padding()
                            }
                            NavigationLink(destination : VersionPage()) {
                                HStack{
                                    Image(systemName: "network")
                                        .foregroundColor(.gray)
                                    Text("Versiyon")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "greaterthan")
                                        .foregroundColor(.black)
                                }.padding()
                            }
                            
                        }
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    Spacer()
                    
                    NavigationLink {
                    LoginPage()
                    } label: {
                        Text("Çıkış Yap")
                        .font(.system(size: 18))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color.splashscreencolor))
                        .foregroundColor(.white)
                }
                } // VStack Sonu
                .padding()
                

            }
        }
        .navigationTitle("Profil")
        .navigationBarItems(trailing:
                            HStack {
                                NavigationLink(destination: EditProfile()) {
                                        ZStack{
                                                                            Circle()
                                                                                .fill(Color.graybuttoncolor)
                                                                                .frame(width: 44, height: 44)
                                                                                
                                                                            Image(systemName: "pencil")
                                                                                 .resizable()
                                                                                 .frame(width: 24, height: 24, alignment: .center)
 
                                        }
                                }
                            }
                        )
        .onDisappear{
            
        }
    }
}

#Preview {
    ProfilePage()
}
