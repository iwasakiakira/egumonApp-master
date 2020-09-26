//
//  ViewController.swift
//  egumonApp
//
//  Created by いわし on 2020/09/19.
//  Copyright © 2020 iwasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var monsterArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print(monsterArray)
        //指定要素分固定値で初期化する
         monsterArray = Array(repeating: "???", count: 101)
        print(monsterArray)
            UserDefaults.standard.set(monsterArray, forKey: "add")
    }
}

