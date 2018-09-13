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
    
    @IBOutlet weak var textField: UITextField!
    
    var initBackgroundColor: UIColor!
    var initTextColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Save initial background and text colors
        initBackgroundColor = view.backgroundColor
        initTextColor = textLabel.textColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    @IBAction func didTapChangeTextColorButton(_ sender: Any) {
        // Print hello and change text hello text color
        
        print("Hello")
        if textLabel.textColor == UIColor.orange {
            textLabel.textColor = initTextColor
        } else {
            textLabel.textColor = UIColor.orange
        }
        
    }
    
    @IBAction func didTapChangeViewColorButton(_ sender: Any) {
        // Change background color of screen
        
        view.backgroundColor = UIColor(displayP3Red: (42/255.0), green: (33/255.0), blue: (78/255.0), alpha: 1)
    }
    
    @IBAction func didTapChangeTextButton(_ sender: Any) {
        // Change text label to say something else
        
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func didTapSayGoodbyeButton(_ sender: Any) {
        // Change text label to say goodbye
        
        textLabel.text = "Goodbye! 👋"
    }
    
    @IBAction func OnReset(_ sender: Any) {
        // Reset to initial text and colors
        
        textLabel.text = "Hello from Cora!"
        view.backgroundColor = initBackgroundColor
        textLabel.textColor = initTextColor
    }
    
}

