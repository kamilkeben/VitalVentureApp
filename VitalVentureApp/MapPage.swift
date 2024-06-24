//
//  MapPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 11.06.2024.
//

import SwiftUI
import MapKit


struct MapPage: View {
    
    let dilberler = CLLocationCoordinate2D(latitude: 37.02254256172684,
                                           longitude: 35.32250893797879)
    
    let cukurova = CLLocationCoordinate2D(latitude: 37.06030035659941, longitude: 35.3551803450716)
    
    @State var camera: MapCameraPosition = .automatic
    
    var body: some View {
        
            Map(position: $camera) {
                Marker("Dilberler Sekisi", coordinate: dilberler)
                    .tint(.green)
                Marker("Çukurova Üniversitesi", coordinate: cukurova)
                    .tint(.green)
            }
            .safeAreaInset(edge: .bottom) {
                
                ZStack{	
                    Rectangle()
                        .frame(width: 335, height: 204)
                        .cornerRadius(20)
                        .foregroundColor(.black.opacity(0.6))
                    
                    VStack(alignment: .center){
                        
                        HStack{
                            Spacer()
                            Text("Dilberler Sekisi")
                                .fontWeight(.medium)
                                .font(.system(size: 24))
                                .foregroundStyle(Color(.white))
                            Spacer(minLength: 80)
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            
                            Text("4.7")
                                .fontWeight(.regular)
                                .font(.system(size: 24))
                                .foregroundStyle(Color(.white))
                            Spacer()
                        }
                        .padding()
                        
                        HStack{
                            
                            Image("locationwhite")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("Seyhan,Adana")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.leading, 28)
                        
                        
                        HStack{
                            Image(systemName:"clock")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                            
                            Text("45 Dakika")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.leading, 28)
                        
                        NavigationLink {
                        VerificationPage()
                        } label: {
                            Text("Yol Tarifi Al")
                            .font(.system(size: 18))
                            .frame(width: 270)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color.splashscreencolor))
                                    .foregroundColor(.white)
                                    .padding(.bottom, 10)
                        }
                        
                        
                    }.padding()
                        
                }
            }
        }
        
    }


#Preview {
    MapPage()
}
