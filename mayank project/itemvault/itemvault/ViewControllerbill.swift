//
//  ViewControllerbill.swift
//  itemvault
//
//  Created by Student on 11/04/25.
//

import UIKit

class ViewControllerbill: UIViewController {
    var receivedImage: UIImage?
        var receivedText: String?


    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToDisplay = receivedImage {
                    billimg.image = imageToDisplay
                }
                if let textToDisplay = receivedText {
                    billvar.text = textToDisplay
                }

        // Do any additional setup after loading the view.
        if let image = UIImage(named: "imgwall") {
                    bill.image = image
                } else {
                    print("Image not found")
                }
        bill.contentMode = .scaleAspectFill
                
                // Set UIImageView to cover the entire view
                bill.frame = view.bounds
                bill.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                
                // Optional: Add UIImageView to the background
                view.insertSubview(bill, at: 0)
    }
    
    @IBOutlet weak var bill: UIImageView!
    @IBOutlet weak var billimg: UIImageView!
    
    @IBOutlet weak var billvar: UILabel!
    
    @IBOutlet weak var slidvar: UISlider!
    
    @IBOutlet weak var day: UILabel!
    
    @IBAction func actionslid(_ sender: Any) {
        let rating = Int(slidvar.value)
            day.text = String(rating)

            let pricePerUnit = 3.2443
            let calculatedPrice = Double(rating) * pricePerUnit

            // Format to 2 decimal places
            let formattedPrice = String(format: "$%.2f", calculatedPrice)
            price.text = formattedPrice
    }
    @IBOutlet weak var price: UILabel!
    
    
    
    
}
