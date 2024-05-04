//
//  NumbersViewViewModel.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import Foundation

@Observable
final class NumbersViewViewModel {
    let persons = Person.getPersons()
}
