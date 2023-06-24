//
//  ContactsView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 23.06.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            ZStack { 
                List(persons) { person in
                    NavigationLink(
                        destination: DetailContactView(person: person)) {
                            Text("\(person.fullName)")
                        }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList())
    }
}

