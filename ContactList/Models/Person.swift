//
//  Person.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 07.05.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String

    var fullname: String {
        name + " " + surname
    }

    static func getContacts(data: DataManager) -> [Person] {
        var contacts: [Person] = []

        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()

        for index in 0..<data.names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            contacts.append(person)
        }
        return contacts
    }
}
