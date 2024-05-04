//
//  RootView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ContactsView()
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacts")
                    }
                
                NumbersView()
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
        .environment(ContactsViewViewModel())
        .environment(NumbersViewViewModel())
}
