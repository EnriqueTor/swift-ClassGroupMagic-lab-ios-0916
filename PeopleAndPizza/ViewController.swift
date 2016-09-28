//
//  ViewController.swift
//  PeopleAndPizza
//
//  Created by James Campagno on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

class Tiger {
    
    var name : String
    var isHungry : Bool
    
    init(name: String){
        self.name = name
        isHungry = true
    }
    
    func eat() {
        isHungry = false
    }
    
}




