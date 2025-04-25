//
//  ViewController2.swift
//  itemvault
//
//  Created by Student on 04/04/25.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        originalBgColor5 = name5.backgroundColor
                originalBgColor6 = name6.backgroundColor

          
        // Do any additional setup after loading the view.
        if let image = UIImage(named: "imgwall") {
                    wall2.image = image
                } else {
                    print("Image not found")
                }
        wall2.contentMode = .scaleAspectFill
                
                // Set UIImageView to cover the entire view
                wall2.frame = view.bounds
                wall2.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                
                // Optional: Add UIImageView to the background
                view.insertSubview(wall2, at: 0)
    }
    
    var originalBgColor5: UIColor?
        var originalBgColor6: UIColor?
    @IBOutlet weak var wall2: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var product1: UIImageView!
    
    @IBOutlet weak var segvar: UISegmentedControl!
    @IBOutlet weak var pro2: UIImageView!
    @IBOutlet weak var name2: UILabel!
    
    @IBOutlet weak var pro3: UIImageView!
    
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var pro4: UIImageView!
    
    @IBOutlet weak var name4: UILabel!
    
    @IBOutlet weak var pro5: UIImageView!
    
    @IBOutlet weak var name5: UILabel!
    
    @IBOutlet weak var pro6: UIImageView!
    
    @IBOutlet weak var name6: UILabel!
    
    @IBOutlet weak var avl: UILabel!
    @IBOutlet weak var varswitch: UISwitch!
    
    @IBOutlet weak var btnpro5: UIButton!
    
    @IBOutlet weak var btnpro6: UIButton!
    
    @IBAction func atctionswitch(_ sender: UISwitch) {
        if sender.isOn {
            name5.backgroundColor = originalBgColor5
            name6.backgroundColor = originalBgColor6
            avl.text = "All Items"
                
                
            } else {
                name5.backgroundColor = UIColor.red
                name6.backgroundColor = UIColor.red
            
                avl.text = "Available"
                
                
            }
        
    }
    
    @IBAction func btnalt5(_ sender: Any) {
        let alert = UIAlertController(title: "Notice", message: "Item is not available", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnalt6(_ sender: Any) {
        let alert = UIAlertController(title: "Notice", message: "Item is not available", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func segaction(_ sender: Any) {
        let selectedIndex = segvar.selectedSegmentIndex
            
            // Use if-else statements to update UI based on selected index
            if selectedIndex == 0 {
                // Game 1
                product1.image = UIImage(named: "game1")
                name.text = "Split Fiction"
                
                pro2.image = UIImage(named: "game2")
                name2.text = "The last of us part 2"
                
                pro3.image = UIImage(named: "game3")
                name3.text = "Black Myth: wukong"
                pro4.image = UIImage(named: "game4")
                name4.text = "Forza Horizon 5"
                
                pro5.image = UIImage(named: "game5")
                name5.text = "Hogwarts Legacy"
                pro6.image = UIImage(named: "game6")
                name6.text = "It Takes Two"
                
            } else if selectedIndex == 1 {
                // PS5
                product1.image = UIImage(named: "ps5")
                name.text = "PS5"
                pro2.image = UIImage(named: "pro2")
                name2.text = "Controller"
                
                pro3.image = UIImage(named: "pro3")
                name3.text = "Racing Wheel"
                pro4.image = UIImage(named: "pro4")
                name4.text = "VR headset "
                
                pro5.image = UIImage(named: "pro5")
                name5.text = "CPU"
                
                pro6.image = UIImage(named: "pro6")
                name6.text = "split multi view monitor"
            } else if selectedIndex == 2 {
                // Book 1
                product1.image = UIImage(named: "book1")
                name.text = "The Little Prince"
                pro2.image = UIImage(named: "book2")
                name2.text = "The Tele of two cities"
                
                pro3.image = UIImage(named: "book3")
                name3.text = "Dream of the red chamber"
                pro4.image = UIImage(named: "book4")
                name4.text = "Don Quixote"
                pro5.image = UIImage(named: "book5")
                name5.text = "Nineteen Eighty - Four"
                pro6.image = UIImage(named: "book6")
                name6.text = "The Lord of the Rings"
                
                
            }
        let scale: CGFloat = 1.1  // Scale factor (increase this value if you want a larger image)
            product1.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    @IBAction func t1(_ sender: Any) {
        performSegue(withIdentifier: "pro1", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ViewControllerbill {
            if segue.identifier == "pro1" {
                destinationVC.receivedImage = product1.image
                destinationVC.receivedText = name.text
            } else if segue.identifier == "p2" {
                destinationVC.receivedImage = pro2.image
                destinationVC.receivedText = name2.text
            }
            else if segue.identifier == "p3" {
                destinationVC.receivedImage = pro3.image
                destinationVC.receivedText = name3.text
            }
            else if segue.identifier == "p4" {
                destinationVC.receivedImage = pro4.image
                destinationVC.receivedText = name4.text
            }
        }
    }
    @IBAction func t2(_ sender: Any) {
        performSegue(withIdentifier: "p2", sender: self)
        
    }
    @IBAction func t3(_ sender: Any) {
        performSegue(withIdentifier: "p3", sender: self)
        
    }
    @IBAction func t4(_ sender: Any) {
        performSegue(withIdentifier: "p4", sender: self)
        
    }
    
    
}
