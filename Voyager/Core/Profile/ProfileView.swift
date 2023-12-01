//
//  ProfileView.swift
//  Voyager
//
//  Created by teona nemsadze on 29.11.23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 30) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Log in to start planning your next trip✈️ 🌍")
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
                HStack {
                    Text("Don't have an account?")
                    Text("Sing up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack (spacing: 24) {
                ProfileOption(imageName: "gear", title: "Settings")
                ProfileOption(imageName: "gear", title: "Accessibility")
                ProfileOption(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
