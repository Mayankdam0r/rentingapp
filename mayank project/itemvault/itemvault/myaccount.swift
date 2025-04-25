//
//  myaccount.swift
//  itemvault
//
//  Created by Student on 19/04/25.
//

import UIKit

class myaccount: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        hist.image = UIImage(named: "game5")

            // Set text to histpro
            histpro.text = "Its Take Two"

            // Set random number to daysleft
            let randomNumber = Int.random(in: 0...9)
        daysleft.text = "\(randomNumber) days left"
        hist2.image = UIImage(named: "pro6")

            // Set text to histpro
            histpro2.text = "split multi view monitor"

            // Set random number to daysleft
        let randomNumber1 = Int.random(in: 0...9)
        daysleft2.text = "\(randomNumber1) days left"
    }
    
    @IBOutlet weak var hist: UIImageView!
    @IBOutlet weak var histpro: UILabel!
    @IBOutlet weak var daysleft: UILabel!
    
    @IBOutlet weak var hist2: UIImageView!
    
    @IBOutlet weak var histpro2: UILabel!
    
    @IBOutlet weak var daysleft2: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
