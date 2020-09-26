//
//  LibraryViewController.swift
//  egumonApp
//
//  Created by いわし on 2020/09/21.
//  Copyright © 2020 iwasi. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
   
    
    
    var RmonsterDictionary:[Int:String] = [:]
    
//    var RmonsterDictionary:[Int:String]? = UserDefaults.standard.object(forKey: "monsterDictionary") as? [Int : String]
//     (forKey: "monsterDictionary") -> [Int:String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(monsterDictionary)
        libraryTableView.delegate = self
        libraryTableView.dataSource = self
        
        
        if UserDefaults.standard.stringArray(forKey: "add") != nil{
                            monsterArray  = UserDefaults.standard.stringArray(forKey: "add") ?? [String]()
                            print(monsterArray)
                       }
//        if UserDefaults.standard.stringArray(forKey: "初期値") != nil{
//                    monsterArray  = UserDefaults.standard.stringArray(forKey: "初期値") ?? [String]()
//                    print(monsterArray)
//               }
    }

    
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

     if UserDefaults.standard.stringArray(forKey: "add") != nil{
                               monsterArray  = UserDefaults.standard.stringArray(forKey: "add") ?? [String]()
        }
        libraryTableView.reloadData()
    }
    
    @IBOutlet weak var libraryTableView: UITableView!
    
    //    表示させる画像(モンスター)と番号を登録する｡
    var monsterDictionary:[Int:String] = [:]
    
    
    
    var monsterArray:[String] = []
//    override func viewWillAppear(_ animated: Bool) {
//     super.viewWillAppear(animated)
////        キーで保存されたほにゃららを取り出す
//        if UserDefaults.standard.dictionary(forKey: "add") != nil{
//            monsterDictionary = UserDefaults.standard.object(forKey: "add") as! [Int : String]
//            print(monsterDictionary)
//        }
//           func viewDidAppear() {
//               self.libraryTableView.reloadData()
//           }
        
//        if UserDefaults.standard.stringArray(forKey: "add") != nil{
//            monsterArray  = UserDefaults.standard.stringArray(forKey: "add") ?? [String]()
//            print(monsterArray)
//       }
       
//   }
    
    
    
    
    
    var monsterDictionaryNum:[String] = [
        "0001",
        "0002",
        "0003",
        "0004",
        "0005",
    ]
    

    
//    テーブルビューの設定
    
//    セルの個数を指定するデリゲートメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return monsterDictionary.count
        return monsterArray.count
        }
        

    //    セルに値を設定するデータソースメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        
//        cell.textLabel!.text = monsterDictionary[indexPath.row]
        cell.textLabel!.text = monsterArray[indexPath.row]
        return cell
        
    }
    
    

}
