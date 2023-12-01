//
//  ListingDetailView.swift
//  Voyager
//
//  Created by teona nemsadze on 27.11.23.
//

import SwiftUI
struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background {
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                        }
                        .padding(30)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(listing.country)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack (alignment: .leading) {
                    HStack (spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("\(listing.rating)")
                            .foregroundColor(.black)
                        Text("300 reviews")
                            .foregroundColor(.black)
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    Text("Taj mahal, Goa, Temples")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Discover India, unique environment, cities, culture, and so on.")
                        .font(.headline)
                        .bold()
                        .frame(alignment: .leading)
                    HStack (spacing: 9) {
                        Text("10 day /")
                        Text("9 night /")
                        Text("Hotel /")
                        Text("Free Breakfast")
                    }
                }
                .frame(width: 350)
                Spacer()
            }
            Divider()
            
            VStack (alignment: .leading, spacing: 12) {
                HStack {
                Image(systemName: "checkmark.circle")
                        .foregroundColor(.red)
                Text("The price is per person in a double room.")
                }
                HStack {
                Image(systemName: "checkmark.circle")
                        .foregroundColor(.red)
                Text("The tour can be booked for the period you want.")
                }
                HStack {
                Image(systemName: "checkmark.circle")
                        .foregroundColor(.red)
                Text("Prices are variable and please check with your personal tour operator.")
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading,spacing: 14) {
                  Text("What we offers")
                    .font(.headline)
                ForEach(listing.amenities) { amenity in
                    HStack {
                        Image(systemName: amenity.imageName)
                            .frame(height: 32)
                        Text("Ticket")
                            .font(.footnote)
                        Spacer()
                        Divider()
                        
                        
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                        }
                   }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 72)
            .overlay(alignment: .bottom) {
                VStack {
                    Divider()
                        .padding(.bottom)
                    HStack {
                    Spacer()
                        Button {
                            
                        } label: {
                            Text("Reserve Today")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 160, height: 40)
                                .foregroundColor(.white)
                                .background(.mint)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                    .padding(.horizontal, 32)
            }
                .background(.white)
        }
    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView(listing: DeveloperPreview.shared.listings[3])
    }
}
