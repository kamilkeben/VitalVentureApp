//
//  VerificationAlert.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 31.05.2024.
//

import SwiftUI

struct VerificationAlert: View {
    @Binding var isActive : Bool
    
    let title: String
    let message: String
    let buttonTitle: String
    let action: () -> ()
    @State private var offset: CGFloat = 1000
    
    var body: some View {
        ZStack {
            Color(.white)
                
                .onTapGesture {
                    close()
                }
            VStack {
                
                ZStack{
                    
                    Circle().foregroundColor(.alertmessagecolor)
                        .frame(width: 80 , height: 80)
                    Image(systemName: "envelope.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .scaledToFit()
                        .frame(width: 56,height: 56)
                    
                    
                        
                }
                
                Text(title)
                    .font(.title2)
                    .bold()
                    .padding()
                
                
                Text(message)
                    .font(.body)
                    .multilineTextAlignment(.center)
                
                Button{
                    close()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.splashscreencolor)
                        
                        Text(buttonTitle)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                    }
                    .padding()
                }
                
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay {
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            close()
                        } label: {
                            Image(systemName: "xmark")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                        .tint(.black)
                    }
                    Spacer()
                }
                .padding()
            }
            .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear{
                withAnimation(.spring()) {
                    offset = 0
                }
            }
        }
        .ignoresSafeArea()
        }
    func close() {
        withAnimation(.spring()) {
            offset = 1000
            isActive = false
        }
    }
        
}

#Preview {
    VerificationAlert(isActive: .constant(true), title: "Email'ini kontrol et!", message: "E-postanıza doğrulama kodunu tekrar gönderdik.", buttonTitle: "Kapat", action: {})
}
