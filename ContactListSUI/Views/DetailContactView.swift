//
//  DetailContactView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 24.06.2023.
//

import SwiftUI

struct DetailContactView: View {
    let contact: Person
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    HStack {
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 150, height: 150)
                        Spacer()
                    }
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
            .navigationTitle(contact.fullName)
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactView(contact: Person.getContactList().first!)
    }
}
