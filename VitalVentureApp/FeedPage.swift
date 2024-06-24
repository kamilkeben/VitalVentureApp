
//
//  FeedPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 11.06.2024.
//

import SwiftUI

struct FeedPage: View {
    var body: some View {
        NavigationStack{
            
            VStack(alignment: .leading){
                
                HStack{
                    Image("avatar")
                        .resizable()
                        .frame(width: 48, height: 48)
                    VStack(alignment: .leading){
                        
                        Text("ulasozturk")
                            .fontWeight(.semibold)
                            
                        
                        HStack{
                            Image(systemName: "timer")
                                .resizable()
                                .frame(width: 12, height: 12)
                            
                            Text("45 Dakika Önce")
                                .font(.system(size: 12))
                                .font(.callout)
                                .foregroundStyle(.black.opacity(0.8))
                            
                        }
                    }
                    
                   
                    
                    
                }
                Text("Adana Merkez Parkı: Şehir merkezinde dinlenme ve rekreasyon için ideal, yeşilliklerle çevrili geniş alan...")
                    .font(.system(size: 13))
                ZStack(alignment: .leading){
                    
                    Image("yerkopru")
                        .resizable()
                        .frame(width: 335, height: 221)
                        .cornerRadius(16)
                    
                    HStack(alignment: .bottom){
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                        
                        Text("122")
                            .foregroundStyle(Color.white)
                    }
                    .padding(.top, 170)
                    .padding()
                    
                }
                
                
                
                HStack{
                    Image("avatar")
                        .resizable()
                        .frame(width: 48, height: 48)
                    VStack(alignment: .leading){
                        
                        Text("ulasozturk")
                            .fontWeight(.semibold)
                            
                        
                        HStack{
                            Image(systemName: "timer")
                                .resizable()
                                .frame(width: 12, height: 12)
                            
                            Text("45 Dakika Önce")
                                .font(.system(size: 12))
                                .font(.callout)
                                .foregroundStyle(.black.opacity(0.8))
                            
                        }
                    }
                    
                   
                    
                    
                }
                Text("Adana Merkez Parkı: Şehir merkezinde dinlenme ve rekreasyon için ideal, yeşilliklerle çevrili geniş alan...")
                    .font(.system(size: 13))
                ZStack(alignment: .leading){
                    
                    Image("yerkopru")
                        .resizable()
                        .frame(width: 335, height: 221)
                        .cornerRadius(16)
                    
                    HStack(alignment: .bottom){
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                        
                        Text("122")
                            .foregroundStyle(Color.white)
                    }
                    .padding(.top, 170)
                    .padding()
                    
                }
            }
            .padding()
            
            
            
            
        }
        .navigationTitle("Akış")
    }
}

#Preview {
    FeedPage()
}
