//
//  NumbersView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 23.06.2023.
//

import SwiftUI

struct NumbersView: View {
    
    @State private var singleSelection: String?
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            LazyVStack { // извините,очень захотелось использовать
                List(selection: $singleSelection) {
                    ForEach(persons) { contact in
                        Section(header: Text("\(contact.fullName)")) {
                            Label(contact.phoneNumber, systemImage: "phone")
                            Label(contact.email, systemImage: "tray")
                        }
                    }
                }
                .frame(height: 650)
                .navigationTitle("Contact List")
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
