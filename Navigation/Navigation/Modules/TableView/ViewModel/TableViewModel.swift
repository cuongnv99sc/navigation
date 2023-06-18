//
//  TableViewModel.swift
//  Navigation
//
//  Created by Cuong on 15/06/2023.
//

import Foundation

class TableViewModel {

    private var contactlists: [Contact]

    init() {
        contactlists = [Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
                       Contact.init(name: "Ho Chi Minh", phone: "0972958864")]
    }

    func numberOfRowsInSection(section: Int) -> Int {
        return contactlists.count
    }

    func cellForRowAt(indexPath: IndexPath) -> Contact {
        return contactlists[indexPath.row]
    }
}
