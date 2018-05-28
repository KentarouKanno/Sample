//
//  ViewController.swift
//  segueproject
//
//  Created by 西川継延 on 2018/05/28.
//  Copyright © 2018年 西川継延. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBAction func seguebtr1(_ sender: Any) {
    //ここではViewControllerに飛ぶ遷移についてと遷移先のnavigationbarのtitleの変更について
    let alert = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
    
    let okAction = UIAlertAction(title: "OK", style: .default, handler: {
      (action:UIAlertAction!) -> Void in
      
      if let textFields = alert.textFields {
        
        for textField in textFields {
          if let text = textField.text {
            print(textField.text!)
            //遅延に関するコード // セグエにtextを渡す
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
              self.performSegue(withIdentifier: "ViewControllersegue", sender: text)//元々nilだった
            }
            
          }
        }
      }
    })
    alert.addAction(okAction)
    
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
    alert.addAction(cancelAction)
    
    alert.addTextField(configurationHandler: {(textField: UITextField!) -> Void in
      textField.placeholder = "テキスト"
    })
    alert.view.setNeedsLayout() // シミュレータの種類によっては、これがないと警告が発生
    // アラートを画面に表示
    self.present(alert, animated: true, completion: nil)
    
  }
  
  
  @IBAction func seguebtr2(_ sender: Any) {
  }
  
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "ViewControllersegue",
        let nextView: label = segue.destination as? label,
        let text = sender as? String {
        nextView.titleName = text
      }
      
      if segue.identifier == "ViewControllersegue2",
        let nextView2: tableView = segue.destination as? tableView,
        let text = sender as? String {
        nextView2.titleName2 = text
        
        //subtitle 現在日時を取得
        let now = NSDate() // 現在日時の取得
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US") as Locale? // ロケールの設定
        dateFormatter.dateFormat = "yyyy年MM月dd日 HH:mm"//:ss" // 日付フォーマットの設定
        
        let dateString = dateFormatter.string(from: now as Date)
        
        nextView2.timeitem = dateString
        print(dateString) // -> 2014/06/25 02:13:18
      }
      
      
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
      self.navigationItem.title = "ホーム画面"
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      
      // ナビゲーションを透明にする処理
      self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
      self.navigationController!.navigationBar.shadowImage = UIImage()
    }
  }


