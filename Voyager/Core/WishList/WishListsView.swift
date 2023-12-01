//
//  WishListsView.swift
//  Voyager
//
//  Created by teona nemsadze on 29.11.23.
//

import SwiftUI

struct WishListsView: View {
    var body: some View {
        NavigationView {
        VStack(alignment: .leading, spacing: 32) {
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Long in to view your wishlists")
                    .font(.headline)
                
                Text("You can create, view or edit wishlists once you've logged in")
                    .font(.footnote)
            }
            Button {
                print("Long In")
            } label: {
                Text("Log In")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(width: 360, height: 60)
                    .background(
                        LinearGradient(colors: [Color("blue"),  Color("b"), Color("blue")], startPoint: .trailing, endPoint: .leading)
                        )
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            Spacer()
          }
        .padding()
        .navigationTitle("Wishlists")
      }
    }
}

struct WishListsView_Previews: PreviewProvider {
    static var previews: some View {
        WishListsView()
    }
}
