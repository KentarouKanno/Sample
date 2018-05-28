//
//  tabelVeiw.swift
//  segueproject
//
//  Created by 西川継延 on 2018/05/28.
//  Copyright © 2018年 西川継延. All rights reserved.
//

import UIKit

class tableView: UIViewController,UITableViewDelegate,UITableViewDataSource {

   @IBOutlet weak var mytableView: UITableView!
  var titleName2 = ""
  var timeitem = ""
  class labels{
    var time: UILabel!
    var name: UILabel!
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath
    let cell = UITableViewCell()
    cell.selectionStyle = .none
    //labels.time = timeitem
    //labels.name = titleName2
    return cell
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationItem.title = "データの遷移先"
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}
