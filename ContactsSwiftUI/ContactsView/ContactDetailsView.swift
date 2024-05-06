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
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                .frame(width: 150, height: 150)
                Spacer()
            }
            VStack(alignment: .leading, spacing: 20) {
                Label(person.phone, systemImage: "phone")
                Label(person.email, systemImage: "tray")
            }
        }
        .navigationTitle(person.fullName)
    }
}

#Preview {
    ContactDetailsView(person: Person.getPersons().first!)
}
