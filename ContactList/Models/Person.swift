//
//  Person.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 07.05.2022.
//

struct Person: Equatable {
    let name: String
    let surname: String
    let phone: String
    let email: String

    var fullname: String {
        name + surname
    }

    static func getPerson(data: DataManager) -> [Person] {
        var persons: [Person] = []

        while persons.count < data.names.count {
            let person = Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                phone: data.phones.randomElement() ?? "",
                email: data.emails.randomElement() ?? ""
            )
            !persons.contains(person) ? persons.append(person) : nil
        }
        return persons
    }

    static private func ==(lhs: Person, rhs: Person) -> Bool {
        lhs.name == rhs.name
        || lhs.surname == rhs.surname
        || lhs.phone == rhs.phone
        || lhs.email == rhs.email
    }
}
