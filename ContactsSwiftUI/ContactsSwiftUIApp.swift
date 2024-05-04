//
//  ContactsSwiftUIApp.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

@main
struct ContactsSwiftUIApp: App {
    @State var contactsViewVM = ContactsViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(contactsViewVM)
        }
    }
}
