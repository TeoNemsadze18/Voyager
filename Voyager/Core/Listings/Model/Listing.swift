//
//  Listing.swift
//  Voyager
//
//  Created by teona nemsadze on 29.11.23.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable { 
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    var pricePerNight: Int
    var imageURLs: [String]
    let address: String
    let country: String
    var rating: Double
    var amenities: [ListingAmenities]

      
}
enum ListingAmenities: Int, Codable, Identifiable, Hashable {
     case ticket
     case laggage
     case wifi
     case breakfast
    
    var title: String {
        switch self {
        case .ticket: return "Ticket"
        case .laggage: return "Laggage"
        case .wifi: return "Wifi"
        case .breakfast: return "Breakfast"
        }
    }
    
    var imageName: String {
        switch self {
        case .ticket: return "ticket"
        case .laggage: return "bag"
        case .wifi: return "wifi"
        case .breakfast: return "cup.and.saucer"
        }
    }
    
    var id: Int { return self.rawValue }
}







