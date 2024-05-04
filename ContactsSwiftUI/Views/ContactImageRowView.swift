//
//  ContactDetailsImageRowView.swift
//  ContactsSwiftUI
//
//  Created by Denis Denisov on 4/5/24.
//

import SwiftUI

struct ContactImageRowView: View {
    let systemImage: String
    
    var body: some View {
        HStack {
            Spacer()
            
            Image(systemName: systemImage)
                .resizable()
            .frame(width: 150, height: 150)
            
            Spacer()
        }
    }
}

#Preview {
    ContactImageRowView(systemImage: "person.fill")
}
