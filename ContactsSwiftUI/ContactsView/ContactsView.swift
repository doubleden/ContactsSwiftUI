//
//  ContactsView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(person.fullName) {
                ContactDetailsView(person: person)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactsView(persons: Person.getPersons())
}
