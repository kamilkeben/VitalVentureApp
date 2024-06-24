//
//  CustomTabBar.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 12.06.2024.
//

import SwiftUI

struct TabBar: View {
    
    @State private var activeTab : Tab = .home
    //For smooth Shape Sliding Effect
    @Namespace private var animation
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $activeTab) {
                HomePage()
                    .tag(Tab.home)
                //Hiding Native Tab Bar
                    .toolbar(.hidden, for: .tabBar)
                
                
                PopularPlacesPage()
                    .tag(Tab.places)
                //Hiding Native Tab Bar
                    .toolbar(.hidden, for: .tabBar)
                
                MapPage()
                    .tag(Tab.location)
                //Hiding Native Tab Bar
                    .toolbar(.hidden, for: .tabBar)
                
                FeedPage()
                    .tag(Tab.feed)
                //Hiding Native Tab Bar
                    .toolbar(.hidden, for: .tabBar)
                
                ProfilePage()
                    .tag(Tab.profile)
                //Hiding Native Tab Bar
                    .toolbar(.hidden, for: .tabBar)
                
                
            }
            CustomTabBar()
        }
    }
    
    //Custom Tab Bar
    
    @ViewBuilder
    func CustomTabBar(_ tint: Color = Color("splashscreencolor"), _ inactiveTint: Color = .blue) -> 
        some View {
            //Moving all the Remaining Tab Item's to Bottom
            HStack(alignment: .bottom, spacing: 0) {
            ForEach(Tab.allCases, id: \.rawValue) {
                TabItem(tint: tint, inactiveTint: inactiveTint, tab: $0,animation: animation, activeTab: $activeTab)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(content: {
            Rectangle()
                .fill(.white)
                .ignoresSafeArea()
                .shadow(color: tint.opacity(0.2), radius: 5, x: 0, y: -6)
                .blur(radius: 2)
                .padding(.top, 25)
        })
         // Adding Animation
        .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.7, blendDuration: 0.7), value: activeTab)
            
    }
}
//Tab Bar Item
struct TabItem : View {
    var tint: Color
    var inactiveTint: Color
    var tab: Tab
    var animation : Namespace.ID
    @Binding var activeTab : Tab
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: tab.systemImage)
                .font(.title2)
                .foregroundColor(activeTab == tab ? .white : inactiveTint)
            //Increasing Size for the Active Tab
                .frame(width: activeTab == tab ? 58 : 35, height: activeTab == tab ? 58 : 35)
                .background {
                    if activeTab == tab {
                        Circle()
                            .fill(tint.gradient)
                            .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                    }
                }
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .onTapGesture {
            activeTab = tab
        }
    }
}

#Preview {
    TabBar()
}
