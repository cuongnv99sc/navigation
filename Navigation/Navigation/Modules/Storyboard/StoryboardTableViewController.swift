//
//  StoryboardTableViewController.swift
//  Navigation
//
//  Created by Cuong on 13/06/2023.
//

import UIKit

class StoryboardTableViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initlayout()
    }
    
    func initlayout() {
        self.navigationItem.title = "StoryboardTable ViewController"
        
    }

    
    @IBAction func moveToSubView1(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "SubView1") as! SubView1
        self.navigationController?.pushViewController(vc, animated: true)
        print(self.navigationController?.viewControllers.count ?? "")
    }
}
