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
        NavigationStack {
            LazyVStack { // извините, очень захотелось использовать
                List(selection: $singleSelection) {
                    ForEach(persons) { person in
                        Section(header: Text("\(person.fullName)")) {
                            Label(person.phoneNumber, systemImage: "phone")
                            Label(person.email, systemImage: "tray")
                            //а лэйблы переиспользовать не смог(
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
