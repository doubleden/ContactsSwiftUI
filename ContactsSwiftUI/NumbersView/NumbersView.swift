//
//  NumbersView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct NumbersView: View {
    @Environment(NumbersViewViewModel.self) var numbersViewVM
    
    var body: some View {
        NavigationStack {
            List(numbersViewVM.persons) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumbersView()
        .environment(NumbersViewViewModel())
}
