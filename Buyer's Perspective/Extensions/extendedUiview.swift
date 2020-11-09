//
//  extendedUiview.swift
//  TitheWallet
//
//  Created by Andrew Robinson on 2/11/19.
//  Copyright © 2019 ALME. All rights reserved.
//

import Foundation
import UIKit



extension UIView {
    func circularRadiusShadow(){
        layer.cornerRadius = layer.frame.size.width/4
        clipsToBounds = true
        layer.borderWidth = 0.9
        layer.borderColor = UIColor.white.cgColor
    }
    
    func circulaRaiduis(){
        layer.cornerRadius =  0.5 * layer.bounds.size.width
        clipsToBounds = true
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 0.9
    }
    func circulaRaiduisBB(){
        layer.cornerRadius =  0.5 * layer.bounds.size.width
        clipsToBounds = true
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 0.9
    }
    func circulaRaiduisBorder(){
        layer.cornerRadius =  0.5 * layer.bounds.size.width
        clipsToBounds = true
        layer.borderColor = UIColor(cgColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15)).cgColor
        layer.backgroundColor = UIColor(cgColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1)).cgColor
        layer.borderWidth = 0.5
    }
     func roundCorners(){
        layer.borderColor = UIColor.black.cgColor
        layer.shadowOpacity = 3.0
        layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        layer.cornerRadius = 40.0
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 7.0
  
    }
    func roundCornersNoBackGround(){
        
  
       
        layer.cornerRadius = 5.0
      
        
    }
    func roundCornersNoShado()  {
//        layer.borderColor = UIColor.white.cgColor
//        layer.backgroundColor = UIColor.white.cgColor
        layer.borderColor = UIColor.darkGray.cgColor
    
//        layer.backgroundColor = UIColor.white.cgColor
       
        layer.borderWidth = 0.2
        layer.cornerRadius = 20.0
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        layer.shadowColor = UIColor.lightGray.cgColor
       
        layer.shadowRadius = 2
    }
    func animateImage(imageView: UIImageView){
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseInOut, animations: {
             imageView.transform = CGAffineTransform(scaleX:1.1, y: 1.1)
//            imageView.transform = CGAffineTransform(scaleX:0.5, y: 0.5)
        }) { (_) in
            UIView.animate(withDuration: 2.0, delay: 0, options: .curveEaseInOut, animations: {
                 imageView.transform = CGAffineTransform(scaleX:1, y: 1)
//                imageView.transform = CGAffineTransform(scaleX:0.5, y: 0.5)
            }, completion: { (_) in
                self.animateImage(imageView: imageView)
            })
        }

    }
    

    func animateImageUno(imageView: UIImageView)  {
                UIView.animate(withDuration: 3.0, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 0.2, options: .transitionCurlDown, animations: {
                    imageView.transform = CGAffineTransform(scaleX:0.1, y: 0.1)
                }) { (_) in
                    UIView.animate(withDuration: 7.0, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0.2, options: .transitionCurlUp, animations: {
//                         imageView.transform = CGAffineTransform(scaleX:0.000005, y: 0.000000005)
                        imageView.transform = CGAffineTransform(scaleX:1, y: 1)
                    }, completion: { (_) in
                        self.animateImage(imageView: imageView)
                    })
                }
        
        
    }
    func stopAnimations(currentView: UIView){
//        view.layer removeAllAnimations
        currentView.layer.removeAllAnimations()
        
    }
    @discardableResult
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) -> AnchoredConstraints {
        
        translatesAutoresizingMaskIntoConstraints = false
        var anchoredConstraints = AnchoredConstraints()
        
        if let top = top {
            anchoredConstraints.top = topAnchor.constraint(equalTo: top, constant: padding.top)
        }
        
        if let leading = leading {
            anchoredConstraints.leading = leadingAnchor.constraint(equalTo: leading, constant: padding.left)
        }
        
        if let bottom = bottom {
            anchoredConstraints.bottom = bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom)
        }
        
        if let trailing = trailing {
            anchoredConstraints.trailing = trailingAnchor.constraint(equalTo: trailing, constant: -padding.right)
        }
        
        if size.width != 0 {
            anchoredConstraints.width = widthAnchor.constraint(equalToConstant: size.width)
        }
        
        if size.height != 0 {
            anchoredConstraints.height = heightAnchor.constraint(equalToConstant: size.height)
        }
        
        [anchoredConstraints.top, anchoredConstraints.leading, anchoredConstraints.bottom, anchoredConstraints.trailing, anchoredConstraints.width, anchoredConstraints.height].forEach{ $0?.isActive = true }
        
        return anchoredConstraints
    }
    
    func fillSuperview(padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        if let superviewTopAnchor = superview?.topAnchor {
            topAnchor.constraint(equalTo: superviewTopAnchor, constant: padding.top).isActive = true
        }
        
        if let superviewBottomAnchor = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -padding.bottom).isActive = true
        }
        
        if let superviewLeadingAnchor = superview?.leadingAnchor {
            leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: padding.left).isActive = true
        }
        
        if let superviewTrailingAnchor = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: -padding.right).isActive = true
        }
    }
    
    func centerInSuperview(size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        if let superviewCenterXAnchor = superview?.centerXAnchor {
            centerXAnchor.constraint(equalTo: superviewCenterXAnchor).isActive = true
        }
        
        if let superviewCenterYAnchor = superview?.centerYAnchor {
            centerYAnchor.constraint(equalTo: superviewCenterYAnchor).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    func centerXInSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        if let superViewCenterXAnchor = superview?.centerXAnchor {
            centerXAnchor.constraint(equalTo: superViewCenterXAnchor).isActive = true
        }
    }
    
    func centerYInSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        if let centerY = superview?.centerYAnchor {
            centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
    }
    
    func constrainWidth(constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: constant).isActive = true
    }
    
    func constrainHeight(constant: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: constant).isActive = true
    }
    
    

    func pinEdges(to other: UIView) {
        leadingAnchor.constraint(equalTo: other.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: other.trailingAnchor).isActive = true
        topAnchor.constraint(equalTo: other.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: other.bottomAnchor).isActive = true
    }
    func fadeIn(duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)
    }

    func fadeOut(duration: TimeInterval = 1.0, delay: TimeInterval = 3.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
    
    
}
struct AnchoredConstraints {
    var top, leading, bottom, trailing, width, height: NSLayoutConstraint?
}

extension Double {
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
extension UIButton {

    
    func pulsate() {
    
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = 0.1
    pulse.fromValue = 0.98
    pulse.toValue = 1.0
    pulse.autoreverses = true
        
    pulse.repeatCount = 0
    pulse.initialVelocity = 0.1
    pulse.damping = 1.0
    
    layer.add(pulse, forKey: "pulse")
    }
    
    func flash() {
    
    let flash = CABasicAnimation(keyPath: "opacity")
    flash.duration = 0.5
    flash.fromValue = 1
    flash.toValue = 0.1
    flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    flash.autoreverses = true
    flash.repeatCount = 3
    
    layer.add(flash, forKey: nil)
    }
    
    
    func shake() {
    let shake = CABasicAnimation(keyPath: "position")
    shake.duration = 0.1
    shake.repeatCount = 2
    shake.autoreverses = true
    
    let fromPoint = CGPoint(x: center.x - 5, y: center.y)
    let fromValue = NSValue(cgPoint: fromPoint)
    
    let toPoint = CGPoint(x: center.x + 5, y: center.y)
    let toValue = NSValue(cgPoint: toPoint)
    
    shake.fromValue = fromValue
    shake.toValue = toValue
    
    layer.add(shake, forKey: "position")
    }
    
    
    
    
}


