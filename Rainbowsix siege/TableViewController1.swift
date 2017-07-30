//
//  TableViewController1.swift
//  Rainbowsix siege
//
//  Created by 江口太郎 on 2017/07/30.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class TableViewController1: UIViewController,UITableViewDataSource,UITableViewDelegate  {
    
    @IBOutlet var tableView: UITableView!
    
    let nameArray : [String] =
        ["民家","ヘレフォード基地","銀行","大統領専用機","クラブハウス","領事館","ヨット","山荘","運河","オレゴン","カフェ・ドストエフスキー","ファベーラ","高層ビル","バートレット大学","海岸線"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "CustomTableViewCell",bundle: nil),forCellReuseIdentifier: "customCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 122.5

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nameArray.count
}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        cell.customCellLabel.text = nameArray[indexPath.row]
        cell.button.tag = indexPath.row
        cell.button.addTarget(self, action: #selector(TableViewController.buttonTapped(_:)), for: UIControlEvents.touchUpInside)
        
        return cell
}
    
    func buttonTapped(_ sender:UIButton!){
        
        
    }

}
        
