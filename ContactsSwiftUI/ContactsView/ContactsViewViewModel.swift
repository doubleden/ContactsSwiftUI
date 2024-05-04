//
//  ContactsViewViewModel.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import Foundation
import Observation

@Observable
final class ContactsViewViewModel {
    let persons = Person.getPersons()
}
