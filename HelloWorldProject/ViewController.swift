//
//  ViewController.swift
//  HelloWorldProject
//
//  Created by Cora Xing on 9/12/18.
//  Copyright © 2018 Cora Yichen Xing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapChangeTextColorButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
}

