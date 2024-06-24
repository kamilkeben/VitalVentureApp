//
//  Tab.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 12.06.2024.
//

import SwiftUI

//App Tab's

enum Tab: String, CaseIterable {
    case home
    case places
    case location
    case feed
    case profile
    
    var systemImage: String {

    switch self {
    case .home :
        return "house"
    case .places :
        return "heart"
    case .location :
        return "location"
    case .feed :
        return "tennisball"
    case .profile :
        return "person"
    }
 }
    var index : Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
}
