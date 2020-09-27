//
//  NurturingViewController.swift
//  egumonApp
//
//  Created by いわし on 2020/09/20.
//  Copyright © 2020 iwasi. All rights reserved.
//
import UIKit

class NurturingViewController: UIViewController {
    
    var ActionCount = 0
    
    @IBOutlet weak var ActionCountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(monsterArray)
        ActionCountLabel.text = " ActionCount:\(ActionCount)"
    }
    
    func monsterinfomation(monsterimage:String,ArrayNum:Int,comment:String){
        
        
        
    }
    
    
    
    //    アクションが100に満たない状態でたまごを割ってモンスターをかえす｡
    @IBAction func BreakButton(_ sender: Any) {
        
        // ① UIAlertControllerクラスのインスタンスを生成
        // タイトル, メッセージ, Alertのスタイルを指定する
        // 第3引数のpreferredStyleでアラートの表示スタイルを指定する
        let alert: UIAlertController = UIAlertController(title: "Do you really break the egg?", message: "", preferredStyle:  UIAlertController.Style.alert)
        // ② Actionの設定
        // Action初期化時にタイトル, スタイル, 押された時に実行されるハンドラを指定する
        // 第3引数のUIAlertActionStyleでボタンのスタイルを指定する
        // OKボタン
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            // ボタンが押された時の処理を書く（クロージャ実装）
            (action: UIAlertAction!) -> Void in
            let move2RVC = self.storyboard?.instantiateViewController(withIdentifier: "MoveResult") as! ResultViewController
            
            
            //           ほにゃらら秒後にリザルト画面に遷移する｡
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                
                //              アクションカウントが100未満のときの場合分け
                if self.ActionCount == 0{
                    move2RVC.outputimage = "No.0000"
                    move2RVC.ArrayNum = 0
                    move2RVC.outputcomment = "やる気あんの?"
                    //                    self.monsterinfomation(monsterimage: "No.0000", ArrayNum: 0, comment: "なにかしようよ")
                }
                if self.ActionCount < 10 && self.ActionCount >= 5 {
                    move2RVC.outputimage = "No.0001"
                    move2RVC.ArrayNum = 1
                    move2RVC.outputcomment = "呼んだ?"
                }
                if self.ActionCount < 5 && self.BAC >= 1 && self.BAC < 5 {
                    move2RVC.outputimage = "No.0002"
                    move2RVC.ArrayNum = 2
                    move2RVC.outputcomment = "おそまつ"
                }
                if self.ActionCount < 5 && self.BBC >= 1 && self.BBC < 5 {
                    move2RVC.outputimage = "No.0003"
                    move2RVC.ArrayNum = 3
                    move2RVC.outputcomment = "father"
                }
                if self.ActionCount < 5 && self.BCC >= 1 && self.BCC < 5 {
                    move2RVC.outputimage = "No.0004"
                    move2RVC.ArrayNum = 4
                    move2RVC.outputcomment = "ケルベロス"
                }
                if self.ActionCount < 5 && self.BDC >= 1 && self.BDC < 5 {
                    move2RVC.outputimage = "No.0005"
                    move2RVC.ArrayNum = 5
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 5 && self.BEC >= 1 && self.BEC < 5 {
                    move2RVC.outputimage = "No.0006"
                    move2RVC.ArrayNum = 6
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 5 && self.BFC >= 1 && self.BFC < 5 {
                    move2RVC.outputimage = "No.0007"
                    move2RVC.ArrayNum = 7
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 5 && self.BGC >= 1 && self.BGC < 5 {
                    move2RVC.outputimage = "No.0008"
                    move2RVC.ArrayNum = 8
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 5 && self.BHC >= 1 && self.BHC < 5 {
                    move2RVC.outputimage = "No.0009"
                    move2RVC.ArrayNum = 9
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 5 && self.BIC >= 1 && self.BIC < 5 {
                    move2RVC.outputimage = "No.0010"
                    move2RVC.ArrayNum = 10
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 20 && self.ActionCount >= 15 {
                    move2RVC.outputimage = "No.0011"
                    move2RVC.ArrayNum = 11
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BAC >= 10 && self.BAC < 15 {
                    move2RVC.outputimage = "No.0012"
                    move2RVC.ArrayNum = 12
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BBC >= 10 && self.BBC < 15 {
                    move2RVC.outputimage = "No.0013"
                    move2RVC.ArrayNum = 13
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BCC >= 10 && self.BCC < 15 {
                    move2RVC.outputimage = "No.0014"
                    move2RVC.ArrayNum = 14
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BDC >= 10 && self.BDC < 15 {
                    move2RVC.outputimage = "No.0015"
                    move2RVC.ArrayNum = 15
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BEC >= 10 && self.BEC < 15 {
                    move2RVC.outputimage = "No.0016"
                    move2RVC.ArrayNum = 16
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BFC >= 10 && self.BFC < 15 {
                    move2RVC.outputimage = "No.0017"
                    move2RVC.ArrayNum = 17
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BGC >= 10 && self.BGC < 15 {
                    move2RVC.outputimage = "No.0018"
                    move2RVC.ArrayNum = 18
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BHC >= 10 && self.BHC < 15 {
                    move2RVC.outputimage = "No.0019"
                    move2RVC.ArrayNum = 19
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 15 && self.BIC >= 10 && self.BIC < 15 {
                    move2RVC.outputimage = "No.0020"
                    move2RVC.ArrayNum = 20
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 30 && self.ActionCount >= 25 {
                    move2RVC.outputimage = "No.0021"
                    move2RVC.ArrayNum = 21
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BAC >= 20 && self.BAC < 25 {
                    move2RVC.outputimage = "No.0022"
                    move2RVC.ArrayNum = 22
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BBC >= 20 && self.BBC < 25 {
                    move2RVC.outputimage = "No.0023"
                    move2RVC.ArrayNum = 23
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BCC >= 20 && self.BCC < 25 {
                    move2RVC.outputimage = "No.0024"
                    move2RVC.ArrayNum = 24
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BDC >= 20 && self.BDC < 25 {
                    move2RVC.outputimage = "No.0025"
                    move2RVC.ArrayNum = 25
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BEC >= 20 && self.BEC < 25 {
                    move2RVC.outputimage = "No.0026"
                    move2RVC.ArrayNum = 26
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BFC >= 20 && self.BFC < 25 {
                    move2RVC.outputimage = "No.0027"
                    move2RVC.ArrayNum = 27
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BGC >= 20 && self.BGC < 25 {
                    move2RVC.outputimage = "No.0028"
                    move2RVC.ArrayNum = 28
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BHC >= 20 && self.BHC < 25 {
                    move2RVC.outputimage = "No.0029"
                    move2RVC.ArrayNum = 29
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 25 && self.BIC >= 20 && self.BIC < 25 {
                    move2RVC.outputimage = "No.0030"
                    move2RVC.ArrayNum = 30
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 40 && self.ActionCount >= 35 {
                    move2RVC.outputimage = "No.0031"
                    move2RVC.ArrayNum = 31
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BAC >= 30 && self.BAC < 35 {
                    move2RVC.outputimage = "No.0032"
                    move2RVC.ArrayNum = 32
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BBC >= 30 && self.BBC < 35 {
                    move2RVC.outputimage = "No.0033"
                    move2RVC.ArrayNum = 33
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BCC >= 30 && self.BCC < 35 {
                    move2RVC.outputimage = "No.0034"
                    move2RVC.ArrayNum = 34
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BDC >= 30 && self.BDC < 35 {
                    move2RVC.outputimage = "No.0035"
                    move2RVC.ArrayNum = 35
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BEC >= 30 && self.BEC < 35 {
                    move2RVC.outputimage = "No.0036"
                    move2RVC.ArrayNum = 36
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BFC >= 30 && self.BFC < 35 {
                    move2RVC.outputimage = "No.0037"
                    move2RVC.ArrayNum = 37
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BGC >= 30 && self.BGC < 35 {
                    move2RVC.outputimage = "No.0038"
                    move2RVC.ArrayNum = 38
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BHC >= 30 && self.BHC < 35 {
                    move2RVC.outputimage = "No.0039"
                    move2RVC.ArrayNum = 39
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 35 && self.BIC >= 30 && self.BIC < 35 {
                    move2RVC.outputimage = "No.0040"
                    move2RVC.ArrayNum = 40
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 50 && self.ActionCount >= 45 {
                    move2RVC.outputimage = "No.0041"
                    move2RVC.ArrayNum = 41
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BAC >= 40 && self.BAC < 45 {
                    move2RVC.outputimage = "No.0042"
                    move2RVC.ArrayNum = 42
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BBC >= 40 && self.BBC < 45 {
                    move2RVC.outputimage = "No.0043"
                    move2RVC.ArrayNum = 43
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BCC >= 40 && self.BCC < 45 {
                    move2RVC.outputimage = "No.0044"
                    move2RVC.ArrayNum = 44
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BDC >= 40 && self.BDC < 45 {
                    move2RVC.outputimage = "No.0045"
                    move2RVC.ArrayNum = 45
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BEC >= 40 && self.BEC < 45 {
                    move2RVC.outputimage = "No.0046"
                    move2RVC.ArrayNum = 46
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BFC >= 40 && self.BFC < 45 {
                    move2RVC.outputimage = "No.0047"
                    move2RVC.ArrayNum = 47
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BGC >= 40 && self.BGC < 45 {
                    move2RVC.outputimage = "No.0048"
                    move2RVC.ArrayNum = 48
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BHC >= 40 && self.BHC < 45 {
                    move2RVC.outputimage = "No.0049"
                    move2RVC.ArrayNum = 49
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 45 && self.BIC >= 40 && self.BIC < 45 {
                    move2RVC.outputimage = "No.0050"
                    move2RVC.ArrayNum = 50
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 60 && self.ActionCount >= 55 {
                    move2RVC.outputimage = "No.0051"
                    move2RVC.ArrayNum = 51
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BAC >= 50 && self.BAC < 55 {
                    move2RVC.outputimage = "No.0052"
                    move2RVC.ArrayNum = 52
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BBC >= 50 && self.BBC < 55 {
                    move2RVC.outputimage = "No.0053"
                    move2RVC.ArrayNum = 53
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BCC >= 50 && self.BCC < 55 {
                    move2RVC.outputimage = "No.0054"
                    move2RVC.ArrayNum = 54
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BDC >= 50 && self.BDC < 55 {
                    move2RVC.outputimage = "No.0055"
                    move2RVC.ArrayNum = 55
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BEC >= 50 && self.BEC < 55 {
                    move2RVC.outputimage = "No.0056"
                    move2RVC.ArrayNum = 56
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BFC >= 50 && self.BFC < 55 {
                    move2RVC.outputimage = "No.0057"
                    move2RVC.ArrayNum = 57
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BGC >= 50 && self.BGC < 55 {
                    move2RVC.outputimage = "No.0058"
                    move2RVC.ArrayNum = 58
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BHC >= 50 && self.BHC < 55 {
                    move2RVC.outputimage = "No.0059"
                    move2RVC.ArrayNum = 59
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 55 && self.BIC >= 50 && self.BIC < 55 {
                    move2RVC.outputimage = "No.0060"
                    move2RVC.ArrayNum = 60
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 70 && self.ActionCount >= 65 {
                    move2RVC.outputimage = "No.0061"
                    move2RVC.ArrayNum = 61
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BAC >= 60 && self.BAC < 65 {
                    move2RVC.outputimage = "No.0062"
                    move2RVC.ArrayNum = 62
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BBC >= 60 && self.BBC < 65 {
                    move2RVC.outputimage = "No.0063"
                    move2RVC.ArrayNum = 63
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BCC >= 60 && self.BCC < 65 {
                    move2RVC.outputimage = "No.0064"
                    move2RVC.ArrayNum = 64
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BDC >= 60 && self.BDC < 65 {
                    move2RVC.outputimage = "No.0065"
                    move2RVC.ArrayNum = 65
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BEC >= 60 && self.BEC < 65 {
                    move2RVC.outputimage = "No.0066"
                    move2RVC.ArrayNum = 66
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BFC >= 60 && self.BFC < 65 {
                    move2RVC.outputimage = "No.0067"
                    move2RVC.ArrayNum = 67
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BGC >= 60 && self.BGC < 65 {
                    move2RVC.outputimage = "No.0068"
                    move2RVC.ArrayNum = 68
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BHC >= 60 && self.BHC < 65 {
                    move2RVC.outputimage = "No.0069"
                    move2RVC.ArrayNum = 69
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 65 && self.BIC >= 60 && self.BIC < 65 {
                    move2RVC.outputimage = "No.0070"
                    move2RVC.ArrayNum = 70
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 80 && self.ActionCount >= 75 {
                    move2RVC.outputimage = "No.0071"
                    move2RVC.ArrayNum = 71
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BAC >= 70 && self.BAC < 75 {
                    move2RVC.outputimage = "No.0072"
                    move2RVC.ArrayNum = 72
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BBC >= 70 && self.BBC < 75 {
                    move2RVC.outputimage = "No.0073"
                    move2RVC.ArrayNum = 73
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BCC >= 70 && self.BCC < 75 {
                    move2RVC.outputimage = "No.0074"
                    move2RVC.ArrayNum = 74
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BDC >= 70 && self.BDC < 75 {
                    move2RVC.outputimage = "No.0075"
                    move2RVC.ArrayNum = 75
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BEC >= 70 && self.BEC < 75 {
                    move2RVC.outputimage = "No.0076"
                    move2RVC.ArrayNum = 76
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BFC >= 70 && self.BFC < 75 {
                    move2RVC.outputimage = "No.0077"
                    move2RVC.ArrayNum = 77
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BGC >= 70 && self.BGC < 75 {
                    move2RVC.outputimage = "No.0078"
                    move2RVC.ArrayNum = 78
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BHC >= 70 && self.BHC < 75 {
                    move2RVC.outputimage = "No.0079"
                    move2RVC.ArrayNum = 79
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 75 && self.BIC >= 70 && self.BIC < 75 {
                    move2RVC.outputimage = "No.0080"
                    move2RVC.ArrayNum = 80
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 90 && self.ActionCount >= 85 {
                    move2RVC.outputimage = "No.0081"
                    move2RVC.ArrayNum = 81
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BAC >= 80 && self.BAC < 85 {
                    move2RVC.outputimage = "No.0082"
                    move2RVC.ArrayNum = 82
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BBC >= 80 && self.BBC < 85 {
                    move2RVC.outputimage = "No.0083"
                    move2RVC.ArrayNum = 83
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BCC >= 80 && self.BCC < 85 {
                    move2RVC.outputimage = "No.0084"
                    move2RVC.ArrayNum = 84
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BDC >= 80 && self.BDC < 85 {
                    move2RVC.outputimage = "No.0085"
                    move2RVC.ArrayNum = 85
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BEC >= 80 && self.BEC < 85 {
                    move2RVC.outputimage = "No.0086"
                    move2RVC.ArrayNum = 86
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BFC >= 80 && self.BFC < 85 {
                    move2RVC.outputimage = "No.0087"
                    move2RVC.ArrayNum = 87
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BGC >= 80 && self.BGC < 85 {
                    move2RVC.outputimage = "No.0088"
                    move2RVC.ArrayNum = 88
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BHC >= 80 && self.BHC < 85 {
                    move2RVC.outputimage = "No.0089"
                    move2RVC.ArrayNum = 89
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 85 && self.BIC >= 80 && self.BIC < 85 {
                    move2RVC.outputimage = "No.0090"
                    move2RVC.ArrayNum = 90
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 100 && self.ActionCount >= 95 {
                    move2RVC.outputimage = "No.0091"
                    move2RVC.ArrayNum = 91
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BAC >= 90 && self.BAC < 95 {
                    move2RVC.outputimage = "No.0092"
                    move2RVC.ArrayNum = 92
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BBC >= 90 && self.BBC < 95 {
                    move2RVC.outputimage = "No.0093"
                    move2RVC.ArrayNum = 93
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BCC >= 90 && self.BCC < 95 {
                    move2RVC.outputimage = "No.0094"
                    move2RVC.ArrayNum = 94
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BDC >= 90 && self.BDC < 95 {
                    move2RVC.outputimage = "No.0095"
                    move2RVC.ArrayNum = 95
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BEC >= 90 && self.BEC < 95 {
                    move2RVC.outputimage = "No.0096"
                    move2RVC.ArrayNum = 96
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BFC >= 90 && self.BFC < 95 {
                    move2RVC.outputimage = "No.0097"
                    move2RVC.ArrayNum = 97
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BGC >= 90 && self.BGC < 95 {
                    move2RVC.outputimage = "No.0098"
                    move2RVC.ArrayNum = 98
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BHC >= 90 && self.BHC < 95 {
                    move2RVC.outputimage = "No.0099"
                    move2RVC.ArrayNum = 99
                    move2RVC.outputcomment = ""
                }
                if self.ActionCount < 95 && self.BIC >= 90 && self.BIC < 95 {
                    move2RVC.outputimage = "No.0100"
                    move2RVC.ArrayNum = 100
                    move2RVC.outputcomment = "カイドゥー"
                }
                
                self.countreset()
                
                
                //     else{
                //                    move2RVC.outputimage = "No.0001"
                //                    move2RVC.ArrayNum = 1
                //                    move2RVC.outputcomment = "こんにちは!"
                //                }
                
                self.present(move2RVC,animated: true,completion: nil)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                
                self.ActionCountLabel.text = " ActionCount:\(self.ActionCount)"
                
            }
        })
        // キャンセルボタン
        let cancelAction: UIAlertAction = UIAlertAction(title: "cancel", style: UIAlertAction.Style.cancel, handler:{
            // ボタンが押された時の処理を書く（クロージャ実装）
            (action: UIAlertAction!) -> Void in
            print("Cancel")
        })
        // ③ UIAlertControllerにActionを追加
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        // ④ Alertを表示
        present(alert, animated: true, completion: nil)
    }
    
    //    Bottonを押したときの処理(ボタンが多いので関数化)
    func ButtonAction(){
        ActionCount += 1
        print(ActionCount)
        ActionCountLabel.text = " ActionCount:\(ActionCount)"
    }
    
    //    ActionCountが到達した場合に画面遷移を行う関数
    func Moveview1(title:String,message:String){
        if ActionCount == 100{
            MoveView2(title: title, message: message)
        }
    }
    
    //    "Was born!!画面に遷移する関数"
    func MoveView2(title:String,message:String){
        let alert:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let close:UIAlertAction = UIAlertAction(title: "close", style: .cancel, handler:{ (action:UIAlertAction!)in
            let move2RVC = self.storyboard?.instantiateViewController(withIdentifier: "MoveResult") as! ResultViewController
            //           ほにゃらら秒後にリザルト画面に遷移する｡
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                
                if self.BAC == 10 && self.BBC == 10 {
                    move2RVC.outputimage = "No.0101"
                    move2RVC.ArrayNum = 101
                    move2RVC.outputcomment = ""
                }
                if self.BAC <= 10 && self.BBC <= 10 {
                    move2RVC.outputimage = "No.0102"
                    move2RVC.ArrayNum = 102
                    move2RVC.outputcomment = ""
                }else{
                     
                        move2RVC.outputimage = "No.0001"
                        move2RVC.ArrayNum = 1
                        move2RVC.outputcomment = "呼んだ?"
                    
                }
                self.countreset()
                
                //                     move2RVC.outputValue = self.inputField.text
                
                self.present(move2RVC,animated: true,completion: nil)
            }
            //           ほにゃらら秒後にActionCountを0にして再表示する｡
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                
                self.ActionCountLabel.text = " ActionCount:\(self.ActionCount)"
            }
        })
        alert.addAction(close)
        present(alert, animated: true, completion: nil)
    }
    
    //    アラートを表示させる関数
    func showAlert(title:String,message:String){
        let alert:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let close:UIAlertAction = UIAlertAction(title: "close", style: .cancel, handler:{ (action:UIAlertAction!) -> Void in
        })
        alert.addAction(close)
        present(alert, animated: true, completion: nil)
    }
    
    func changemonsterimage(){
        
        
    }
    
    var BAC = 0
    var BBC = 0
    var BCC = 0
    var BDC = 0
    var BEC = 0
    var BFC = 0
    var BGC = 0
    var BHC = 0
    var BIC = 0
    
    func countreset(){
        ActionCount = 0
        BAC = 0
        BBC = 0
        BCC = 0
        BDC = 0
        BEC = 0
        BFC = 0
        BGC = 0
        BHC = 0
        BIC = 0
    }
    
    //  押したボタンによって表示するモンスターを変える
    func changemonster(title:String,message:String){
        //       let alert:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        //       let close:UIAlertAction = UIAlertAction(title: "close", style: .cancel, handler:{ (action:UIAlertAction!)in
        //           let move2RVC = self.storyboard?.instantiateViewController(withIdentifier: "MoveResult") as! ResultViewController
        //
        //        if self.ActionCount == 0{
        //            move2RVC.outputValue = self.inputField.text
        //
    }
    
    //    ボタンアクションとムーブビュー関数を合わせただけ
    func BAandMV(){
        ButtonAction()
        Moveview1(title: "What is the egg like?", message: "おや?たまごのようすが?")
    }
    
    @IBAction func ButtonA(_ sender: Any) {
        BAC += 1
        print("BAC")
        BAandMV()
    }
    @IBAction func ButtonB(_ sender: Any) {
        BBC += 1
        print("BBC")
        BAandMV()
    }
    @IBAction func ButtonC(_ sender: Any) {
        BCC += 1
        print("BCC")
        BAandMV()
    }
    
    @IBAction func ButtonD(_ sender: Any) {
        BDC += 1
        print("BDC")
        BAandMV()
    }
    
    @IBAction func ButtonE(_ sender: Any) {
        BEC += 1
        print("BEC")
        BAandMV()
    }
    @IBAction func ButtonF(_ sender: Any) {
        BFC += 1
        print("BFC")
        BAandMV()
    }
    
    @IBAction func ButtonG(_ sender: Any) {
        BGC += 1
        print("BGC")
        BAandMV()
    }
    
    @IBAction func ButtonH(_ sender: Any) {
        BHC += 1
        print("BHC")
        BAandMV()
    }
    
    @IBAction func ButtonI(_ sender: Any) {
        BIC += 1
        print("BIC")
        BAandMV()
    }
    
    //    表示させる画像(モンスター)と番号を登録する｡
    var monsterArray:[String] = []
    
}
