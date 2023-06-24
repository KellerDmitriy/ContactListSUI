//
//  NumberView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 23.06.2023.
//

import SwiftUI

struct NumbersView: View {
    
    @State private var singleSelection: String?
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(selection: $singleSelection) {
                ForEach(contacts) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        Label(contact.phoneNumber, systemImage: "phone")
                        Label(contact.email, systemImage: "tray")
                    }
                }
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: Person.getContactList())
    }
}
