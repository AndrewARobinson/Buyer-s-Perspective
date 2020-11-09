//
//  extendedViewController.swift
//  TitheWallet
//
//  Created by Andrew Robinson on 11/22/19.
//  Copyright © 2019 ALME. All rights reserved.
//

import UIKit


extension UIViewController {
    
                func shakeView(){
                    let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
                    animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
                    animation.duration = 0.3
                    animation.values = [-10.0, 10.0, -10.0, 10.0, -10.0, 10.0, -10.0, 10.0, 2.0 ]
                    self.view.layer.add(animation, forKey: "shake")
    }
    
    func noResponseErrorAlert(TitleOfError Title:String, MessageOfError Message:String?){
        let alertController = UIAlertController (title: Title, message: Message, preferredStyle:UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: { (action) in
            
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    func noResponseDismissalAlert(TitleOfError Title:String, MessageOfError Message:String?){
        let alertController = UIAlertController (title: Title, message: Message, preferredStyle:UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: { (action) in
          self.navigationController?.popViewController(animated: true)
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    func noResponseDismiss(TitleOfError Title:String, MessageOfError Message:String?){
        let alertController = UIAlertController (title: Title, message: Message, preferredStyle:UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default) { (action) in
            self.navigationController?.popViewController(animated: true)
        }
        let cancelAction = UIAlertAction(title: "No", style: UIAlertAction.Style.destructive) { (action) in
            
        }
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        

        self.present(alertController, animated: true, completion: nil)
    }


}
extension Double {
    private static var numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter
    }()

    var delimiter: String {
        return Double.numberFormatter.string(from: NSNumber(value: self))!

    }
}
