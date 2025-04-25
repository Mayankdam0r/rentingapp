//
//  createaccount.swift
//  itemvault
//
//  Created by Student on 21/04/25.
//

import UIKit



class createaccount: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        username.placeholder = "Username"
        email.placeholder = "Email"
        password.placeholder = "Password"
        confirmpassword.placeholder = "Confirm Password"
        
        // Set delegates
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmpassword: UITextField!
    
    @IBAction func signup(_ sender: Any) {
        guard let usernameText = username.text, !usernameText.isEmpty,
              let emailText = email.text, !emailText.isEmpty,
              let passwordText = password.text, !passwordText.isEmpty,
              let confirmPasswordText = confirmpassword.text, !confirmPasswordText.isEmpty else {
            showAlert(message: "Please fill in all fields.")
            return
        }
        
        guard passwordText == confirmPasswordText else {
            showAlert(message: "Passwords do not match.")
            return
        }
        
        guard isValidEmail(emailText) else {
            showAlert(message: "Please enter a valid email address.")
            return
        }
        
        // Successful signup
        print("Signed up with: \(usernameText), \(emailText)")
        showAlert(message: "Signup successful!")
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Notice", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    @IBOutlet weak var googlevar: UIButton!
    @IBAction func googleaccount(_ sender: Any) {
    }
    
    
}
