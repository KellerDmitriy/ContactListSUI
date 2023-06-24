//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 23.06.2023.
//

import SwiftUI

struct ContactListView: View {
    private let persons = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            TabView {
                ContactsView(persons: persons)
                    .tabItem {
                        Label("Contacts", systemImage: "person.3.fill")
                    }
                NumbersView(persons: persons)
                    .tabItem {
                        Label("Numbers", systemImage: "phone")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
