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
    @State var numbersViewVM = NumbersViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(contactsViewVM)
                .environment(numbersViewVM)
        }
    }
}
