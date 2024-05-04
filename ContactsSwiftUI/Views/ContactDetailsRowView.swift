//
//  ContactRowView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct ContactDetailsRowView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .tint(.blue)
    }
}

#Preview {
    ContactDetailsRowView(person: Person.getPersons().first!)
}
