//
//  ContactViewController.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 07.05.2022.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!

    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = contact.fullname
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
