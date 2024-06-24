//
//  LeadershipPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 13.06.2024.
//

import SwiftUI

struct LeadershipPage: View {
    var body: some View {
        NavigationStack{
            VStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(16)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                    .foregroundColor(Color(.graybuttoncolor))
                    
                    HStack{
                        Text("1.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.splashscreencolor)
                        
                        Image("avatar")
                            .resizable()
                            .frame(width: 72, height: 72)
                        Spacer()
                        Text("@ulasozturk")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                        VStack {
                            Text ("Puan:")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            Text("3286")
                                .font(.title)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                            
                        }
                        Spacer()
                            
                    }
                }
                ZStack {
                    Rectangle()
                        .cornerRadius(16)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                    .foregroundColor(Color(.graybuttoncolor))
                    
                    HStack{
                        Text("2.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.splashscreencolor)
                        
                        Image("avatar")
                            .resizable()
                            .frame(width: 72, height: 72)
                        Spacer()
                        Text("@kamilkeben")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                        VStack {
                            Text ("Puan:")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            Text("3010")
                                .font(.title)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                            
                        }
                        Spacer()
                            
                    }
                }
                ZStack {
                    Rectangle()
                        .cornerRadius(16)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                    .foregroundColor(Color(.graybuttoncolor))
                    
                    HStack{
                        Text("3.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.splashscreencolor)
                        
                        Image("avatar")
                            .resizable()
                            .frame(width: 72, height: 72)
                        Spacer()
                        Text("@hiko")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                        VStack {
                            Text ("Puan:")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            Text("2900")
                                .font(.title)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                            
                        }
                        Spacer()
                            
                    }
                }
                ZStack {
                    Rectangle()
                        .cornerRadius(16)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                    .foregroundColor(Color(.graybuttoncolor))
                    
                    HStack{
                        Text("4.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.splashscreencolor)
                        
                        Image("avatar")
                            .resizable()
                            .frame(width: 72, height: 72)
                        Spacer()
                        Text("@eren")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                        VStack {
                            Text ("Puan:")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            Text("2700")
                                .font(.title)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                            
                        }
                        Spacer()
                            
                    }
                }
                ZStack {
                    Rectangle()
                        .cornerRadius(16)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                    .foregroundColor(Color(.graybuttoncolor))
                    
                    HStack{
                        Text("5.")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.splashscreencolor)
                        
                        Image("avatar")
                            .resizable()
                            .frame(width: 72, height: 72)
                        Spacer()
                        Text("@eminpp")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                        VStack {
                            Text ("Puan:")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            Text("2500")
                                .font(.title)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                            
                        }
                        Spacer()
                            
                    }
                }
                
            }.padding()
        }
        .navigationTitle("Liderlik Tablosu")
    }
}

#Preview {
    LeadershipPage()
}
