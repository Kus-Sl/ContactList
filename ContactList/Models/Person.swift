//
//  Person.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 07.05.2022.
//

struct Person {
    let name: String
    let surname: String
    var fullname: String {
        name + surname
    }
    let phone: String
    let email: String

    static func getPerson(data: DataManager) -> Person {
        Person(
            name: data.names.randomElement() ?? "",
            surname: data.surnames.randomElement() ?? "",
            phone: data.phones.randomElement() ?? "",
            email: data.emails.randomElement() ?? ""
        )
    }
}
