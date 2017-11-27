//
//  ViewController.swift
//  Dicee
//
//  Created by Mac Mini on 11/24/17.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func RollButtonPressed(_ sender: Any) {
        
        updateDiceImage()

    }

    func updateDiceImage() {
        randomDiceIndex1 = 1 + Int(arc4random_uniform(6))
        randomDiceIndex2 = 1 + Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }

}

