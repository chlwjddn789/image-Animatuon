//
//  ViewController.swift
//  image Animation 01
//
//  Created by D7703_07 on 2019. 3. 27..
//  Copyright © 2019년 1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienlmageView: UIImageView!
    
    var count = 1
    var direction = true//up
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //초기 이미지 보이기
        alienlmageView.image = UIImage(named: "frame\(count).png")
        myLabel.text = String(count)
    }

    @IBAction func updateButtonPressed(_ sender: Any) {
        
        if count == 5 {
            direction = false
        }else if count == 1 {
            direction = true
        }
        if direction == true {
            count+=1
        } else{
            count-=1
        }
       
        alienlmageView.image = UIImage(named: "frame\(count).png")
        
        myLabel.text = "frame\(count).png"
        //print("button pressed!")
        //누를때 마다 count가 1증가
        //count+=1 //count = count +1
        //myLabel.text = String(count)
        //alienlmageView.image = UIImage(named: "frame\(count).png")
      
    }
}

