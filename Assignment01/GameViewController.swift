//
//  GameViewController.swift
//  Project1_13072019
//
//  Created by Divya Chainani on 2019-07-13.
//  Copyright © 2019 Divya Chainani. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var rollDice: UIButton!
    
   // @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var slider: UISlider!
var number = 0
var diceslider = 0
    var output = ""

    @IBAction func rollDice(_ sender: UIButton) {
    
       number = Int.random(in: 1 ... 6)
       diceslider = Int(slider.value)
       output = "Dice Value : " + String(number) + " " + " Slider Value : " + String(diceslider)
        print(number)
        print(diceslider)
        if number == diceslider
        {
            //showAlertSuccess()
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let viewController =
                storyBoard.instantiateViewController(withIdentifier: "resultViewController")
            present(viewController, animated: true, completion: nil)
            print("Matched")

            
        }
        else {
           print("please try again")
            showAlertFail()
        }
        
    }
    
    func showAlertFail()
    {
        
        let alert = UIAlertController(title: output, message: "Please trya again!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    func showAlertSuccess()
    {
        let alert = UIAlertController(title: output, message: "You Win!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    

}
