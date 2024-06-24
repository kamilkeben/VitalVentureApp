//
//  StartInfoPage3.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 29.05.2024.
//

import SwiftUI

struct StartInfoPage3: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 443, height: 443)
                        .edgesIgnoringSafeArea(.all)
                        
                    VStack {
                        Text("Sen hareket etmedikçe doğa sana gelmez!")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .frame(width: 321)
                            .multilineTextAlignment(.center)
                                    
                        
                        Text("Çevrende yürüyüş,spor yapabileceğin yerlerin hemen hepsi bu uygulamada.Hadi sende katıl!")
                            .font(.system(size: 16))
                            .frame(height: 72)
                            .padding()
                            .lineLimit(4)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        NavigationLink {
                            LoginPage()
                        } label: {
                            Text("İleri")
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
        .navigationBarBackButtonHidden(true)
        .padding()
    }
    }


#Preview {
    StartInfoPage3()
}
