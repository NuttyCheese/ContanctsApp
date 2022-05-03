//
//  Contact.swift
//  ContanctsApp
//
//  Created by Борис Павлов on 30.04.2022.
//

import Foundation

struct Contact {
    let name: String
    let lastName: String
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    let phoneNumber: String
    let email: String
    
    static func getProfiles() -> [Contact] {
        var contacts: [Contact] = []
        
        let names = DataListInfoContacts.shared.names.shuffled()
        let surnames = DataListInfoContacts.shared.surnames.shuffled()
        let phoneNumbers = DataListInfoContacts.shared.phoneNumbers.shuffled()
        let emails = DataListInfoContacts.shared.emails.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<iterationCount {
            let contact = Contact(
                name: names[index],
                lastName: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            contacts.append(contact)
        }
        return contacts
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
