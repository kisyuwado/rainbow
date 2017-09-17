//
//  MapViewController.swift
//  Rainbowsix siege
//
//  Created by 江口太郎 on 2017/09/17.
//  Copyright © 2017年 None. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    let imageArray1 : [UIImage] = [UIImage(named : "ぎん１.jpg")!,UIImage(named : "くら１.jpg")!,UIImage(named : "オレ１.jpg")!,UIImage(named : "か１.jpg")!,UIImage(named : "量１.jpg")!,UIImage(named : "山１.jpg")!,UIImage(named : "国１.jpg")!,UIImage(named : "かい１.jpg")!,UIImage(named : "こう１.jpg")!,UIImage(named : "うん１.jpg")!,UIImage(named : "へ１.jpg")!,UIImage(named : "場１.jpg")!,UIImage(named : "民家１.jpg")!,UIImage(named : "第１.jpg")!]
    
    let imageArray2 : [UIImage] = [UIImage(named : "ぎん２.jpg")!,UIImage(named : "くら２.jpg")!,UIImage(named : "オレ２.jpg")!,UIImage(named : "か２.jpg")!,UIImage(named : "量２.jpg")!,UIImage(named : "山２.jpg")!,UIImage(named : "国２.jpg")!,UIImage(named : "かい２.jpg")!,UIImage(named : "こう２.jpg")!,UIImage(named : "うん２.jpg")!,UIImage(named : "へ２.jpg")!,UIImage(named : "場２.jpg")!,UIImage(named : "民家２.jpg")!,UIImage(named : "第２.jpg")!]
    let imageArray3 : [UIImage] = [UIImage(named : "ぎん３.jpg")!,UIImage(named : "くら３.jpg")!,UIImage(named : "オレ３.jpg")!,UIImage(named : "か３.jpg")!,UIImage(named : "量３.jpg")!,UIImage(named : "山３.jpg")!,UIImage(named : "国３.jpg")!,UIImage(),UIImage(),UIImage(named : "うん３.jpg")!,UIImage(named : "へ３.jpg")!,UIImage(named : "場３.jpg")!,UIImage(named : "民家３.jpg")!,UIImage(named : "第３.jpg")!]
    let imageArray4 : [UIImage] = [UIImage(named : "ぎん４.jpg")!,UIImage(named : "くら４.jpg")!,UIImage(named : "オレ４.jpg")!,UIImage(named : "か４.jpg")!,UIImage(named : "量４.jpg")!,UIImage(named : "山４.jpg")!,UIImage(),UIImage(),UIImage(),UIImage(named : "うん４.jpg")!,UIImage(named : "へ４.jpg")!,UIImage(),UIImage(named : "民家４.jpg")!,UIImage(named : "第４.jpg")!]
   
    static var index : Int = 14

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView1.image = imageArray1[MapViewController.index]
        imageView2.image = imageArray2[MapViewController.index]
        imageView3.image = imageArray3[MapViewController.index]
        imageView4.image = imageArray4[MapViewController.index]
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
