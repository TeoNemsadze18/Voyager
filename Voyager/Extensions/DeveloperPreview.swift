//
//  DeveloperPreview.swift
//  Voyager
//
//  Created by teona nemsadze on 29.11.23.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "",
            ownerImageUrl: "",
            pricePerNight: 300,
            imageURLs: ["image", "image2", "image3", "image4"],
            address: "123",
            country: "India",
            rating: 4.7,
            amenities: [.wifi, .breakfast, .laggage]),
         
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "",
            ownerImageUrl: "",
            pricePerNight: 250,
            imageURLs: ["image5", "image6", "image7", "image8"],
            address: "123",
            country: "Island",
            rating: 4.9,
            amenities: [.wifi, .breakfast, .laggage]
        ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              ownerName: "", ownerImageUrl: "",
              pricePerNight: 399,
              imageURLs: ["mexico1", "mexico2", "mexico3", "mexico5"],
              address: "103",
              country: "Mexica",
              rating: 5.0,
              amenities: [.wifi, .breakfast, .laggage]),
    ]
}
   
