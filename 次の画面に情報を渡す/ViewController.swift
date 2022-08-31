//
//  ViewController.swift
//  Transition
//
//  Created by Asahi Okuyama on 2022/08/26.
//

import UIKit

class ViewController: UIViewController {
    var gonext = "移動した!"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ButtonAction(sender: UIButton){
        print(sender.tag)
        if sender.tag == 0{
            gonext = "0が押された！"
        }
        if sender.tag == 1{
            gonext = "1が押された！"
        }
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let resultGo = segue.destination as! NextViewController
            resultGo.result = gonext
        }
}

