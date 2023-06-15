//
//  TableViewController.swift
//  Navigation
//
//  Created by Cuong on 13/06/2023.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!

    var tableViewModel: TableViewModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initlayout()
        bindViewModel()
    }
    
    func initlayout() {
        self.navigationItem.title = "TableViewController"
        tableView.delegate = self
        tableView.dataSource = self
    }

    private func bindViewModel() {
        tableViewModel = TableViewModel()
    }

}


extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.numberOfRowsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = tableViewModel.cellForRowAt(indexPath: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.fillData(item: item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
