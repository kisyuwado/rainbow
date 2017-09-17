//
//  TableviewController1.swift
//  Rainbowsix siege
//
//  Created by 江口太郎 on 2017/09/17.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class TableViewController1: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let nameArray : [String] = ["銀行","クラブハウス","オレゴン","カフェ","領事館","山荘","国境","海岸線","高層ビル","運河","ヘレフォード基地","大学","民家","大統領専用機"]
    let imageArray : [UIImage] = [UIImage(named : "銀行.jpeg")!,UIImage(named : "クラブハウス.jpeg")!,UIImage(named : "オレゴン.jpeg")!,UIImage(named : "カフェ.jpeg")!,UIImage(named : "領事館.jpeg")!,UIImage(named : "山荘.jpeg")!,UIImage(named : "国境.jpeg")!,UIImage(named : "海岸線.jpeg")!,UIImage(named : "高層ビル.jpeg")!,UIImage(named : "運河.jpeg")!,UIImage(named : "ヘレフォード.jpeg")!,UIImage(named : "大学」.jpeg")!,UIImage(named : "民家.jpeg")!,UIImage(named : "トランプ.jpeg")!]
    
    
    
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
        
        return 14
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        
        cell.customCellLabel.text = nameArray[indexPath.row]
        cell.customCellImage.image = imageArray[indexPath.row]
        cell.button.tag = indexPath.row
        cell.button.addTarget(self, action: #selector(TableViewController.buttonTapped(_:)), for: UIControlEvents.touchUpInside)
        
        return cell
        
    }
    
    func buttonTapped(_ sender:UIButton!){
        MapViewController.index = sender.tag
        performSegue(withIdentifier: "goTomapviewcontroller",sender: nil)

    }
}



















