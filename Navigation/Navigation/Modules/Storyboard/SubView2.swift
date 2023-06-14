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
    
    @IBAction func moveToSubView3(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "SubView3") as! SubView3
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
