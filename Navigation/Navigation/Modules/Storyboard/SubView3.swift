//
//  SubView3.swift
//  Navigation
//
//  Created by Cuong on 14/06/2023.
//

import UIKit

class SubView3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initlayout()
    }
    
    func initlayout() {
        self.navigationItem.title = "SubView 3"
    }
    
    @IBAction func moBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func moveToROOT(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func moveToStoryboard(_ sender: Any) {
        // Mark - Move to SubView1
        if let targetViewController = navigationController?.viewControllers.first(where: { $0 is StoryboardTableViewController }) {
            // Pop back to the target view controller
            navigationController?.popToViewController(targetViewController, animated: true)
        }
        print(self.navigationController?.viewControllers.count ?? "")
    }
}
