//
//  HomePage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 29.05.2024.
//

import SwiftUI

struct HomePage: View {
 
    var body: some View {
        NavigationStack{
            
            ZStack {
                VStack {
                    
                    HStack{
                        NavigationStack {
                            VStack {
                                    ZStack {
                                                RoundedRectangle(cornerRadius: 22)
                                                    .fill(.green)
                                                    .frame(width: 118, height: 44)
                                                
                                                HStack {
                                                    Image("avatar")
                                                        .resizable()
                                                        .frame(width: 37, height: 37)
                                                        .padding(.leading, 8)
                                                    
                                                    Text("Kamil")
                                                        .font(.headline)
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color.black)
                                                        .padding(.trailing, 30)
                                                }
                                            }
                                        }
                                    
                                }
                        Spacer()
                        
                        NavigationLink {
                        LeadershipPage()
                        }
                                label: {
                                    ZStack{
                                        Circle()
                                            .fill(Color.graybuttoncolor)
                                            .frame(width: 44, height: 44)
                                            
                                        Image(systemName: "trophy")
                                             .resizable()
                                             .frame(width: 28, height: 28, alignment: .center)
                                                                        

                                    }
                            
                    }
                    }
                    .padding()
                    
                    HStack{
                        Text("Hadi keşfetmeye hemen başla!")
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            
                       Spacer()
                    }
                    .padding()
                    .padding(.bottom, -10)
                    
                    HStack{
                        Text("Favori Yerlerin")
                            .fontWeight(.semibold)
                            .font(.system(size: 22))
                        Spacer(minLength: 20)
                        
                        Text("Hepsini Görüntüle")
                            .fontWeight(.regular)
                            .foregroundStyle(Color.alertmessagecolor)
                            
                    }
                    .padding()
                    .padding(.bottom, -20)
                     
                    
                    CarousellPage()
                    
                    
                    
                   
                        
                }//VStack Sonu
            } // ZStack Sonu
            
            
        }//NavigationStack Sonu
        .navigationBarBackButtonHidden(true)
  
    }
}

#Preview {
    HomePage()
}
