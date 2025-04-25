//
//  ViewController.swift
//  itemvault
//
//  Created by Student on 04/04/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let image = UIImage(named: "imgwall") {
                    wall.image = image
                } else {
                    print("Image not found")
                }
        wall.contentMode = .scaleAspectFill
                
                // Set UIImageView to cover the entire view
                wall.frame = view.bounds
                wall.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                
                // Optional: Add UIImageView to the background
                view.insertSubview(wall, at: 0)
    }

    @IBOutlet weak var emailvar: UITextField!
    
    @IBOutlet weak var passvar: UITextField!
    
    
    @IBOutlet weak var wall: UIImageView!
    
    
    @IBAction func emailaction(_ sender: Any) {
        
    }
    
    @IBAction func passaction(_ sender: Any) {
        print("Password entered: \(passvar.text ?? "")")
    }
    
    @IBAction func loginaction(_ sender: Any) {
        // Basic email and password validation
               guard let email = emailvar.text, !email.isEmpty else {
                   showAlert(message: "Please enter your email.")
                   return
               }
               
               guard let password = passvar.text, !password.isEmpty else {
                   showAlert(message: "Please enter your password.")
                   return
               }
               
               // Check for valid email format (basic validation)
               if !isValidEmail(email) {
                   showAlert(message: "Please enter a valid email.")
                   return
               }

               
           }
           
           // MARK: - Helper Methods
           
           // Simple method to validate email format
           func isValidEmail(_ email: String) -> Bool {
               let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
               let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
               return emailTest.evaluate(with: email)
           }

           // Show alert to the user with a message
           func showAlert(message: String) {
               let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
               let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
               alertController.addAction(okAction)
               present(alertController, animated: true, completion: nil)
           }
    

}

