//
//  ViewControllerlastsin.swift
//  itemvault
//
//  Created by Student on 11/04/25.
//

import UIKit

class ViewControllerlastsin: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let image = UIImage(named: "wall5") {
                    sin.image = image
                } else {
                    print("Image not found")
                }
        sin.contentMode = .scaleAspectFill
                
                // Set UIImageView to cover the entire view
                sin.frame = view.bounds
                sin.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                
                // Optional: Add UIImageView to the background
                view.insertSubview(sin, at: 0)
    }
    
    @IBOutlet weak var sin: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
