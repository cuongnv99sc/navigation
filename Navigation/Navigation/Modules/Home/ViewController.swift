//
//  ViewController.swift
//  Navigation
//
//  Created by Cuong on 13/06/2023.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonStoryboard(_ sender: Any) {
        print("buttonStoryboard tapped")
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "StoryboardTableViewController") as! StoryboardTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonTableView(_ sender: Any) {
        print("buttonTableView tapped")
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

