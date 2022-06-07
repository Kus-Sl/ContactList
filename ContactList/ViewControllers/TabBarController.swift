//
//  TabBarController.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 08.05.2022.
//

import UIKit

class TabBarController: UITabBarController {

    private let contacts = Person.getContacts(data: DataManager.shared)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    private func setupViewControllers() {
        guard let viewControllers = viewControllers else { return }
        for vc in viewControllers {
            if let contactList = vc as? ContactListViewController {
                contactList.contacts = contacts
            } else if let detailedContactList = vc as? DetailedContactListViewController {
                detailedContactList.contacts = contacts
            }
        }
    }
}
