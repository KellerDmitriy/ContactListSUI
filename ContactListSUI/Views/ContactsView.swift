//
//  ContactsView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 23.06.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Person]
    
    var body: some View {
            NavigationStack {
                List(contacts) { contact in
                    NavigationLink(
                        destination: DetailContactView(contact: contact)
                    ) {
                        HStack {
                            Text("\(contact.name)")
                            Text("\(contact.surname)")
                        }
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Contact list")
                
            }
        }
    }

    struct ContactsView_Previews: PreviewProvider {
        static var previews: some View {
            ContactsView(contacts: Person.getContactList())
        }
    }

