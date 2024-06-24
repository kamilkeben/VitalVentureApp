//
//  TripCard.swift
//  VitalVentureApp
//
//  Created by KamilKeben on 3.06.2024.
//

import SwiftUI

// Trip Card Model
struct TripCard: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var location: String
    var image: String
}

// Sample Cards
var tripCards: [TripCard] = [
    .init(title: "Adalar", location:  "Eskişehir", image: "adalar"),
    .init(title: "Çukurova Üniversitesi", location:  "Adana", image: "cukurova"),
    .init(title: "Yerköprü Şelalesi", location:  "Mut", image: "yerkopru"),
]
