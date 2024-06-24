//
//  CarousellPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 3.06.2024.
//

import SwiftUI

struct CarousellPage: View {
    @State var rating = "4.7"
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 15) {
                HStack(spacing: 5) {
                    
                    //Parallax Corousel
                    GeometryReader(content: { geometry in
                        let size =  geometry.size
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 10) {
                                ForEach(tripCards) { card in
                                    GeometryReader(content: { proxy in
                                        let cardSize = proxy.size
                                        //Simple Parallax Effect
                                        let minX = proxy.frame(in: .scrollView).minX
                                        
                                        Image(card.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .offset(x: -minX)
                                            .frame(width: cardSize.width, height: cardSize.height)
                                            .overlay {
                                                OverlayView(card)
                                            }
                                            .clipShape(.rect(cornerRadius: 15))
                                            .shadow(color: .black.opacity(0.25), radius: 8, x: 5, y: 10)
                                    })
                                    .frame(width: size.width - 60, height: size.height - 50)
                                    //Scroll Animation
                                    .scrollTransition(.interactive, axis: .horizontal){
                                        view, phase in
                                        view
                                            .scaleEffect(phase.isIdentity ? 1 : 0.95)
                                    }
                                }
                            }
                            .padding(.horizontal, 10)
                            .scrollTargetLayout()
                            .frame(height: size.height, alignment: .top)
                        }
                        .scrollTargetBehavior(.viewAligned)
                        .scrollIndicators(.hidden)
                    })
                    .frame(height: 400)
                    .padding(.horizontal, -15)
                    .padding(.top, 10)
                }
            }
            .padding(15)
        }
        .scrollIndicators(.hidden)
    }
    
    @ViewBuilder
    func OverlayView(_ card: TripCard) -> some View {
        ZStack(alignment: .bottomLeading, content: {
            LinearGradient(colors: [.clear,
                                    .clear,
                                    .clear,
                                    .clear,
                                    .clear,
                                    .black.opacity(0.1),
                                    .black.opacity(0.5),
                                    .black
            ], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading, spacing: 4, content: {
                HStack{
                    Text(card.title)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                    Spacer()
                    Text(rating)
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                    
                }
                HStack{
                    Image("locationwhite")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundStyle(Color.white)
                    
                    
                    Text(card.location)
                        .font(.callout)
                        .foregroundStyle(.white.opacity(0.8))
                }
                
                
            })
            .padding(20)
        })
    }
    
}

#Preview {
    CarousellPage()
}
