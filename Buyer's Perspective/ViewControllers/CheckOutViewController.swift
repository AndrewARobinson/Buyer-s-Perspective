//
//  CheckOutViewController.swift
//  Buyer's Perspective
//
//  Created by Andrew robinson on 11/3/20.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet var creditTick: UIView!
    @IBOutlet var payPalTick: UIView!
    @IBOutlet var applePayTick: UIView!
    @IBOutlet var payNowButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creditTick.circulaRaiduisBB()
        payPalTick.circulaRaiduisBB()
        applePayTick.circulaRaiduisBB()
        payNowButton.roundCornersNoShado()
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func CreditCardCell(_ sender: UITapGestureRecognizer) {
        print("Credit Card ")
    }
    @IBAction func payPalCellPressed(_ sender: UITapGestureRecognizer) {
        print("PayPal  ")
    }
    @IBAction func creditCardPressed(_ sender: UIButton) {
      
    }
    @IBAction func applePayCellPressed(_ sender: UITapGestureRecognizer) {
        print("Apple ")
    }
    @IBAction func payPalButtonPressed(_ sender: UIButton) {
        print("PayPal Button ")
    }
    @IBAction func applePayPressed(_ sender: UIButton) {
        print("Apple Button ")
    }
}
