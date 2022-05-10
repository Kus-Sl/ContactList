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
            guard let navigationC = vc as? UINavigationController else { return }
            if let contactList = navigationC.topViewController as? ContactListViewController {
                contactList.contacts = contacts
            } else if let detailedContactList = navigationC.topViewController as? DetailedContactListViewController {
                detailedContactList.contacts = contacts
            }
        }
    }
}
