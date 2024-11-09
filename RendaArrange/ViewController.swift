//
//  ViewController.swift
//  RendaArrange
//
//  Created by 鈴木廉太郎 on 2024/10/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var CountLabel: UILabel!
    @IBOutlet var textLabel: UILabel!
    var tapCount:Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap(){
        
        if tapCount <= 0{
            tapCount = 0
            CountLabel.text = String(tapCount)
            textLabel.text = "割れたよ！！"
            imageView?.image = UIImage(named: "unicorn")
        }else if tapCount <= 30{
            tapCount = tapCount - 1
            CountLabel.text = String(tapCount)
            textLabel.text = "まだだよ〜"
            imageView?.image = UIImage(named: "egg2")
        }else if tapCount <= 50{
            tapCount = tapCount - 1
            CountLabel.text = String(tapCount)
            textLabel.text = "まだ半分！！"
            imageView?.image = UIImage(named: "egg1")
        } else {
            tapCount = tapCount - 1
            CountLabel.text = String(tapCount)
            imageView?.image = UIImage(named: "egg")
            
            
            
            
            
        }
        
        
    }
    
}
