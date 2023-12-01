//
//  ExploreService.swift
//  Voyager
//
//  Created by teona nemsadze on 29.11.23.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
 
