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

    static func getPerson(data: DataManager) -> [Person] {
        var persons: [Person] = []

        var names = data.names.shuffled()
        var surnames = data.surnames.shuffled()
        var phones = data.phones.shuffled()
        var emails = data.emails.shuffled()

        for _ in 1...data.names.count {
            let person = Person(
                name: names.removeFirst(),
                surname: surnames.removeFirst(),
                phone: phones.removeFirst(),
                email: emails.removeFirst()
            )
            persons.append(person)
        }
        return persons
    }
}
