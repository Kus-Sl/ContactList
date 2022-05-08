//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 07.05.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        let person = contacts[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content

        return cell
    }
}
