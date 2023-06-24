//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 23.06.2023.
//

import SwiftUI

struct ContactListView: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            TabView {
                ContactsView(contacts: contacts)
                    .tabItem {
                        Label("NumbersContacts", systemImage: "person.3.fill" )
                    }
                NumbersView(contacts: contacts)
                    .tabItem {
                        Label("Numbers", systemImage: "phone" )
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
