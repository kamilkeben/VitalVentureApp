//
//  VersionPage.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 18.06.2024.
//

import SwiftUI

struct VersionPage: View {
    var body: some View {
        
        VStack {
            Text("VitalVenture App")
                .fontWeight(.semibold)
                
                .padding()
            Text("Version: 1.0.0")
        }
    }
}

#Preview {
    VersionPage()
}
