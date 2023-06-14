//
//  UISubView1.swift
//  Navigation
//
//  Created by Cuong on 13/06/2023.
//

import UIKit

class SubView1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initlayout()
    }
    
    func initlayout() {
        self.navigationItem.title = "SubView 1"
    }
    
    @IBAction func moveToSubView2(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "SubView2") as! SubView2
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
