//
//  ExploreViewModel.swift
//  Voyager
//
//  Created by teona nemsadze on 29.11.23.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing] ()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    func updateListingsForLocation(_ location: String) {
        let filteredListings = listings.filter({
            $0.country.lowercased() == location.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listings : filteredListings
    }
}
