//
//  ViewController.swift
//  ViewNavigationTest
//
//  Created by JunHee Choi on 2020/06/23.
//  Copyright © 2020 JunHee Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTouchPresentVC(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ModalViewController")
        newVC?.modalTransitionStyle = .coverVertical
        self.present(newVC!, animated: true, completion: nil)
    }
    
    @IBAction func didTouchPushVC(_ sender: UIButton) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "PushViewController")
        
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
}

