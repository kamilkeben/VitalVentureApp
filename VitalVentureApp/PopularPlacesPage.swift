//
//  PopularPlacesPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 11.06.2024.
//

import SwiftUI

struct PopularPlacesPage: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                
                Text("Bütün Popüler Yerler")
                    .fontWeight(.semibold)
                    .font(.system(size: 22))
                
                
                HStack{
                    
                    ZStack(alignment: .top){
                        Rectangle()
                            .frame(width: 161, height: 216)
                            .cornerRadius(16)
                            .foregroundColor(Color.graybuttoncolor)
                        
                        VStack(alignment: .leading){
                            
                            Image("cukurova")
                                .resizable()
                                .frame(width: 137, height: 124)
                            .cornerRadius(16)
                            
                            Text("Millet Bahçesi")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                            
                            HStack{
                                Image("location")
                                    .resizable()
                                    .frame(width: 16, height: 16, alignment: .center)
                                    .foregroundStyle(Color.gray)
                                
                                Text("Seyhan, Adana")
                                    .font(.system(size: 12))
                                    .font(.callout)
                                    .foregroundStyle(.black.opacity(0.8))
                                
                                
                                    
                            }
                            
                        }
                        .padding()
                        
                    }
                    
                    ZStack(alignment: .top){
                        Rectangle()
                            .frame(width: 161, height: 216)
                            .cornerRadius(16)
                            .foregroundColor(Color.graybuttoncolor)
                        
                        VStack(alignment: .leading){
                            
                            Image("cukurova")
                                .resizable()
                                .frame(width: 137, height: 124)
                            .cornerRadius(16)
                            
                            Text("Millet Bahçesi")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                            
                            HStack{
                                Image("location")
                                    .resizable()
                                    .frame(width: 16, height: 16, alignment: .center)
                                    .foregroundStyle(Color.gray)
                                
                                Text("Seyhan, Adana")
                                    .font(.system(size: 12))
                                    .font(.callout)
                                    .foregroundStyle(.black.opacity(0.8))
                                
                                
                                    
                            }
                            
                        }
                        .padding()
                        
                    }
                }
                
                HStack{
                    
                    ZStack(alignment: .top){
                        Rectangle()
                            .frame(width: 161, height: 216)
                            .cornerRadius(16)
                            .foregroundColor(Color.graybuttoncolor)
                        
                        VStack(alignment: .leading){
                            
                            Image("cukurova")
                                .resizable()
                                .frame(width: 137, height: 124)
                            .cornerRadius(16)
                            
                            Text("Millet Bahçesi")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                            
                            HStack{
                                Image("location")
                                    .resizable()
                                    .frame(width: 16, height: 16, alignment: .center)
                                    .foregroundStyle(Color.gray)
                                
                                Text("Seyhan, Adana")
                                    .font(.system(size: 12))
                                    .font(.callout)
                                    .foregroundStyle(.black.opacity(0.8))
                                
                                
                                    
                            }
                            
                        }
                        .padding()
                        
                    }
                    
                    ZStack(alignment: .top){
                        Rectangle()
                            .frame(width: 161, height: 216)
                            .cornerRadius(16)
                            .foregroundColor(Color.graybuttoncolor)
                        
                        VStack(alignment: .leading){
                            
                            Image("cukurova")
                                .resizable()
                                .frame(width: 137, height: 124)
                            .cornerRadius(16)
                            
                            Text("Millet Bahçesi")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                            
                            HStack{
                                Image("location")
                                    .resizable()
                                    .frame(width: 16, height: 16, alignment: .center)
                                    .foregroundStyle(Color.gray)
                                
                                Text("Seyhan, Adana")
                                    .font(.system(size: 12))
                                    .font(.callout)
                                    .foregroundStyle(.black.opacity(0.8))
                                
                                
                                    
                            }
                            
                        }
                        .padding()
                        
                    }
                }
                HStack{
                    
                    ZStack(alignment: .top){
                        Rectangle()
                            .frame(width: 161, height: 216)
                            .cornerRadius(16)
                            .foregroundColor(Color.graybuttoncolor)
                        
                        VStack(alignment: .leading){
                            
                            Image("cukurova")
                                .resizable()
                                .frame(width: 137, height: 124)
                            .cornerRadius(16)
                            
                            Text("Millet Bahçesi")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                            
                            HStack{
                                Image("location")
                                    .resizable()
                                    .frame(width: 16, height: 16, alignment: .center)
                                    .foregroundStyle(Color.gray)
                                
                                Text("Seyhan, Adana")
                                    .font(.system(size: 12))
                                    .font(.callout)
                                    .foregroundStyle(.black.opacity(0.8))
                                
                                
                                    
                            }
                            
                        }
                        .padding()
                        
                    }
                    
                    ZStack(alignment: .top){
                        Rectangle()
                            .frame(width: 161, height: 216)
                            .cornerRadius(16)
                            .foregroundColor(Color.graybuttoncolor)
                        
                        VStack(alignment: .leading){
                            
                            Image("yerkopru")
                                .resizable()
                                .frame(width: 137, height: 124)
                            .cornerRadius(16)
                            
                            Text("Millet Bahçesi")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                            
                            HStack{
                                Image("location")
                                    .resizable()
                                    .frame(width: 16, height: 16, alignment: .center)
                                    .foregroundStyle(Color.gray)
                                
                                Text("Seyhan, Adana")
                                    .font(.system(size: 12))
                                    .font(.callout)
                                    .foregroundStyle(.black.opacity(0.8))
                                
                                
                                    
                            }
                            
                        }
                        .padding()
                        
                    }
                }
                    
                    
            }
        }
        .padding()
        .navigationTitle("Popüler Yerler ")
    }
}

#Preview {
    PopularPlacesPage()
}
