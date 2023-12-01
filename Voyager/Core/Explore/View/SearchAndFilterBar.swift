//
//  SearchAndFilterView.swift
//  Voyager
//
//  Created by teona nemsadze on 26.11.23.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Plan your vacation")
                    .bold()
                Text("Anywhere")
                    .foregroundColor(Color("Gray"))
            }
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundColor(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 1)
                .foregroundColor(.indigo)
        }
        .padding()
    }
}

struct SearchAndFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBar()
    }
}
