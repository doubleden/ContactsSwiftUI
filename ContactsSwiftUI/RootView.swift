//
//  RootView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct RootView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
        NavigationStack {
            TabView {
                ContactsView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacts")
                    }
                
                NumbersView(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    RootView()
}
