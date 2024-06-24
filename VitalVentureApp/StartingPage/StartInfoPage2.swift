//
//  StartInfoPage2.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 28.05.2024.
//

import SwiftUI

struct StartInfoPage2: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 443, height: 443)
                        .edgesIgnoringSafeArea(.all)
                        
                    VStack {
                        Text("Dışarıda büyük bir dünya var, hadi keşfedin.")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .frame(width: 321)
                            .multilineTextAlignment(.center)
                                    
                        
                        Text("Sağlıklı yaşamak ve gezmek için senin için tasarlanmış bir uygulama. Hadi ne duruyorsun!")
                            .font(.system(size: 16))
                            .frame(height: 72)
                            .padding()
                            .lineLimit(4)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        NavigationLink {
                            StartInfoPage3()
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
    StartInfoPage2()
}
