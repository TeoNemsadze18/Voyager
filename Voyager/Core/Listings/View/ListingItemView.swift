//
//  ListingView.swift
//  Voyager
//
//  Created by teona nemsadze on 26.11.23.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack (alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.country)") 
                        .fontWeight(.semibold)
                    Text("10 Day") 
                    
                HStack {
                    Text("Apr: 5 - 15")
                    Text("$\(listing.pricePerNight)")
                    }
                    .foregroundColor(Color("Gray"))
                }
                Spacer()
                
                HStack (spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                }
                .foregroundColor(Color.yellow)
            }
        }
        .padding()
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(listing: DeveloperPreview.shared.listings[0])
    }
}
