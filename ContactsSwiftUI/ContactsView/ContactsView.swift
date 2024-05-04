//
//  ContactsView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct ContactsView: View {
    @Environment(ContactsViewViewModel.self) var contactsViewVM
    
    var body: some View {
        List(contactsViewVM.persons) { person in
            NavigationLink(person.fullName) {
                ContactDetailsView(person: person)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContactsView()
        .environment(ContactsViewViewModel())
}
