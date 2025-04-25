//
//  ViewControllerQR.swift
//  itemvault
//
//  Created by Student on 14/04/25.
//

import UIKit

class ViewControllerQR: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        qrcode.image = UIImage(named: "qrimg")

        // Do any additional setup after loading the view.
        if let image = UIImage(named: "wall3") {
                    qr.image = image
                } else {
                    print("Image not found")
                }
        qr.contentMode = .scaleAspectFill
                
                // Set UIImageView to cover the entire view
                qr.frame = view.bounds
                qr.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                
                // Optional: Add UIImageView to the background
                view.insertSubview(qr, at: 0)

    }
    
    @IBOutlet weak var qr: UIImageView!
    @IBOutlet weak var qrcode: UIImageView!
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
