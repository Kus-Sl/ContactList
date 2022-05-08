//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 07.05.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    private var persons = Person.getPerson(data: DataManager())

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        let person = persons[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content

        return cell
    }
}
