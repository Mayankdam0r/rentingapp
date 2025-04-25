//
//  ViewControllerfeedback.swift
//  itemvault
//
//  Created by Student on 14/04/25.
//

import UIKit

class ViewControllerfeedback: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
                // Set placeholder-style text
                feedback.text = "Please provide your feedback here..."
                feedback.textColor = UIColor.lightGray

                // Optional: Style the text view (border, rounded corners)
                feedback.layer.borderColor = UIColor.gray.cgColor
                feedback.layer.borderWidth = 1.0
                feedback.layer.cornerRadius = 8.0
        if let image = UIImage(named: "wall4") {
                    fbimg.image = image
                } else {
                    print("Image not found")
                }
        fbimg.contentMode = .scaleAspectFill
                
                // Set UIImageView to cover the entire view
                fbimg.frame = view.bounds
                fbimg.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                
                // Optional: Add UIImageView to the background
                view.insertSubview(fbimg, at: 0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBOutlet weak var fbimg: UIImageView!
    
    @IBOutlet weak var feedback: UITextView!
    
    @IBAction func submit(_ sender: Any) {
        let userFeedback = feedback.text.trimmingCharacters(in: .whitespacesAndNewlines)

                if userFeedback.isEmpty || userFeedback == "Please provide your feedback here..." {
                    // Show alert if no feedback entered
                    let alert = UIAlertController(title: "Oops!", message: "Please enter some feedback before submitting.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                } else {
                    // Handle successful feedback submission
                    print("Feedback submitted: \(userFeedback)")

                    let alert = UIAlertController(title: "Thank You!", message: "Your feedback has been submitted successfully.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)

                    // Reset feedback box
                    feedback.text = "Please provide your feedback here..."
                    feedback.textColor = UIColor.lightGray
                    feedback.resignFirstResponder()
                }
            }
        
    }
    

