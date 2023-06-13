//
//  TableViewController.swift
//  Navigation
//
//  Created by Cuong on 13/06/2023.
//

import UIKit

struct Contact {
    var name: String?
    var phone: String?
    
    init(name: String?, phone: String?) {
        self.name = name
        self.phone = phone
    }
}


class TableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let contactlist: [Contact] = [Contact.init(name: "Ho Chi Minh", phone: "0972958864"),
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initlayout()
    }
    
    func initlayout() {
        self.navigationItem.title = "TableViewController"
        tableView.delegate = self
        tableView.dataSource = self
    }

}


extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = contactlist[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.fillData(item: item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
