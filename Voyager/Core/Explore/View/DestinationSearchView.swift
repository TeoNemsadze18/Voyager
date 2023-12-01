//
//  DestinationSearchView.swift
//  Voyager
//
//  Created by teona nemsadze on 28.11.23.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endtDate = Date()
    @State private var numGuests = 0
    var body: some View {
        VStack {
            HStack {
            Button {
                withAnimation(.snappy)
                {
                show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundColor(.black)
            }
                Spacer()
                
                if !destination.isEmpty {
                Button("Clear") {
                    destination = ""
                }
                .foregroundStyle(.black)
                .font(.subheadline)
                }
           }
          .padding()
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                Text("Where to")
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                    TextField("Search destinations", text: $destination)
                        .font(.subheadline)
                        .onSubmit {

                            show.toggle()
                        }
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 1.0)
                .foregroundStyle(Color(.systemGray4))
                    
                }
                } else {
                    CollapsedView(title: "Where", description: "Add destination")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location }
            }
            
            
            VStack (alignment: .leading){
                if selectedOption == .dates {
                    Text("When is your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endtDate, displayedComponents: .date)
                    }
                    .foregroundStyle(Color("Gray"))
                    .font(.subheadline)
                } else {
                    CollapsedView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 160 : 64)
            .onTapGesture {
                withAnimation(.default) {  //.snappy
                    selectedOption = .dates }
            }
            
            VStack(alignment: .leading) {
                if selectedOption == .guests {
                    Text("Who is Comming")
                        .font(.title)
                        .fontWeight(.semibold)
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }
                    
                } else {
                    CollapsedView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsibleDestinationViewModifier())
                    .frame(height: selectedOption == .guests ? 120 : 64)
                    .onTapGesture {
                        withAnimation(.default) {
                            selectedOption = .guests }
           }
            Spacer()
        }
    }
}
struct DestinationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSearchView(show: .constant(false))
    }
}
struct CollapsibleDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}






struct CollapsedView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                //  .foregroundColor(Color("Gray"))
                    .foregroundStyle(.gray)
                Spacer()
                
                Text(description)
            }
            //.fontWeight(.semibold)
            // .font(.subheadline)
        }
    }
}
