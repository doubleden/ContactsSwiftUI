//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
        }
    }
}

#Preview {
    ContentView()
}
