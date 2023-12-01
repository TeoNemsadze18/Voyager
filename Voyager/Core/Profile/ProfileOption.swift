//
//  ProfileOption.swift
//  Voyager
//
//  Created by teona nemsadze on 29.11.23.
//

import SwiftUI

struct ProfileOption: View {
    let imageName: String
    let title: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
    }
}

struct ProfileOption_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOption(imageName: "gear", title: "Settings")
    }
}
