//
//  ActivityDetailViewController.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/19/21.
//

import UIKit

class ActivityDetailViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIView!
    var username = " "
    var amount = 0
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reasonLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = self.username
        self.profileImageView.setFirstLetter(self.username)
        self.profileImageView.makeCircle()
        self.amountLabel.text = String.toCurrency(amount)
        self.profileImageView.backgroundColor = .blue
        self.reasonLabel.numberOfLines = 0
        if success {
            self.reasonLabel.isHidden = true
        } else {
            // note from kerta1n: 
            // change the text for more dough https://www.youtube.com/watch?v=OAWvkUOAnS0
            self.reasonLabel.text = "The funds have been sent, but will not be available until \(self.username) meets the minimum transaction requirement. \n\n You must receive at least 10% of the amount being sent to \(self.username) to instantly release the amount of \(String.toCurrency(self.amount)) into \(self.username)'s account. \(self.username)'s deposit will then be returned into their account once the transaction is complete."
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
