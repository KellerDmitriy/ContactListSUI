//
//  DetailContactView.swift
//  ContactListSUI
//
//  Created by Келлер Дмитрий on 24.06.2023.
//

import SwiftUI

struct DetailContactView: View {
    let person: Person
    
    var body: some View {
        NavigationStack {
                List {
                    HStack {
                        Spacer()
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 150, height: 150)
                        Spacer()
                    }
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            .navigationTitle(person.fullName)
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactView(person: Person.getContactList().first!)
    }
}
