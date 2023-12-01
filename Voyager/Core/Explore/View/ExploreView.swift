//
//  ExploreView.swift
//  Voyager
//
//  Created by teona nemsadze on 26.11.23.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        VStack {
                if showDestinationSearchView {
                    DestinationSearchView(show: $showDestinationSearchView)
                } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.default) //snappy
                            {
                                showDestinationSearchView.toggle()
                            }
                        }
                LazyVStack(spacing: 32) {
                    ForEach(viewModel.listings) { listing in
                            ListingItemView(listing: listing)
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                  .padding()
             }
          }
       }
    } 
}
struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}








