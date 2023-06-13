//
//  UISubView2.swift
//  Navigation
//
//  Created by Cuong on 13/06/2023.
//

import UIKit

class SubView2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initlayout()
    }
    
    func initlayout() {
        self.navigationItem.title = "SubView 2"
    }
    
    
    @IBAction func moveBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func moveToROOT(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func moveToStoryboard(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "StoryboardTableViewController") as! StoryboardTableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
