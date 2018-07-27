//
//  ViewController.swift
//  Album
//
//  Created by Jason Hsu on 2018/7/27.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //圖片有17張，所以宣告一個陣列，數值1~17
    let album = [Int](1...17)
    var newAlbum:[Int]!
    var item:Int! = 0
    
    
    @IBOutlet weak var lightButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        updateImage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //將圖片隨機排列
        newAlbum = album.shuffled()
        //設定程式開啟開後顯示的圖片
        imageView.image = UIImage(named: "\(newAlbum[0])")
        imageView.contentMode = .scaleAspectFill
    }
    //更換影像，item為圖片的張數，若是超過張數，則設為零，從頭開始
    func updateImage() {
        item = item + 1
        if item < 16 {
            imageView.image = UIImage(named: "\(newAlbum[item])")
        } else {
            item = 0
            imageView.image = UIImage(named: "\(newAlbum[item])")
        }
        
    }
    
    
}

