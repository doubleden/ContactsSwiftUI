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
            ContactImageRowView(systemImage: "person.fill")
            ContactDetailsRowView(person: person)
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    ContactDetailsView(person: Person.getPersons().first!)
}
