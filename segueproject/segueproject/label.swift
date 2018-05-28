//
//  label.swift
//  segueproject
//
//  Created by 西川継延 on 2018/05/28.
//  Copyright © 2018年 西川継延. All rights reserved.
//

import UIKit

class label: UIViewController {
  
  @IBOutlet var labelitem:UILabel!
  var titleName = "" //をclass直下の行に記載
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.title = titleName
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}
