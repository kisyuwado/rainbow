//
//  TableViewController.swift
//  Rainbowsix siege
//
//  Created by 江口太郎 on 2017/06/25.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    let nameArray : [String] = ["MAPS","OPERATORS","GUNS","CAMERAS","SKINS","TERRORISTS","NEWS","YouTube"]
    let imageArray : [UIImage] = [UIImage(named : "3.jpg")!,UIImage(named : "img5536_01.jpg")!,UIImage(named : "IMG_4989.jpg")!,UIImage(named : "b243628f-s.jpg")!,UIImage(named : "20170207104050.jpg")!,UIImage(named : "r6s_03_cs1w1_720x.jpg")!,UIImage(named : "img0432_01.jpg")!,UIImage(named : "youtube.jpeg")!]
    
    
    
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
        
        return 8
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
        
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: "TableViewControllerNo1",sender: nil)
            break
        case 1:
            performSegue(withIdentifier: "TableViewControllerNo2",sender: nil)
            break
        case 2:
            performSegue(withIdentifier: "TableViewControllerNo3",sender: nil)
            break
        case 3:
            performSegue(withIdentifier: "TableViewControllerNo4",sender: nil)
            break
        case 4:
            performSegue(withIdentifier: "TableViewControllerNo5",sender: nil)
            break
        case 5:
            performSegue(withIdentifier: "TableViewControllerNo6",sender: nil)
            break
        case 6 :
            performSegue(withIdentifier: "TableViewControllerNo7",sender: nil)
            break
        case 7 :
            performSegue(withIdentifier: "TableViewControllerNo8",sender: nil)
            break
        default :
            break
        }
        
        
    }
    
}





