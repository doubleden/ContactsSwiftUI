//
//  ContactDetailsView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            ContactImageView(systemImage: "person.fill")
            
            VStack(alignment: .leading, spacing: 20) {
                Label(person.phone, systemImage: "phone")
                Label(person.email, systemImage: "tray")
            }
            .tint(.blue)
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    ContactDetailsView(person: Person.getPersons().first!)
}
