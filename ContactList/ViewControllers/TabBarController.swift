//
//  TabBarController.swift
//  ContactList
//
//  Created by Вячеслав Кусакин on 08.05.2022.
//

import UIKit

class TabBarController: UITabBarController {

    private var contacts = Person.getContacts(data: DataManager())

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let viewControllers = self.viewControllers else { return }
        for vc in viewControllers {
            guard let navigationC = vc as? UINavigationController else { return }
            if let contactList = navigationC.topViewController as? ContactListViewController {
                contactList.contacts = contacts
            } else if let detailedContactList = navigationC.topViewController as? DetailedContactListViewController {
                print("doubleYes")
            }
        }
    }
}
