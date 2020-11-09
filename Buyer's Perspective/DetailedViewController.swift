//
//  DetailedViewController.swift
//  Buyer's Perspective
//
//  Created by Andrew robinson on 11/2/20.
//

import UIKit

class DetailedViewController: UIViewController {
    var store: freeLanceStore!
    var itemIndex: Int!
    var arrayOfImages = [UIImage(named: "Wecome.jpg"),UIImage(named: "first.jpg"),UIImage(named: "engineer.jpg"), UIImage(named: "code.jpg")]
    @IBOutlet var freeLancerImage: UIImageView!
    @IBOutlet var freeLancerName: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var basicButton: UIButton!
    @IBOutlet var premiumButton: UIButton!
    @IBOutlet var ultimateButton: UIButton!
    @IBOutlet var chekOutButton: UIButton!
    @IBOutlet var barBackButton: UIButton!
    
    @IBOutlet var DescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        freeLancerName.text = "\(store.filteredData[itemIndex].firstname!)  \(store.filteredData[itemIndex].lastName!)"
        freeLancerImage.image = store.filteredData[itemIndex].userImage
        
        freeLancerImage.circulaRaiduisBB()
        basicButton.roundCornersNoShado()
        premiumButton.roundCornersNoShado()
        ultimateButton.roundCornersNoShado()
        chekOutButton.roundCornersNoShado()
        barBackButton.roundCorners()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func checkOutPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toCheckOutVC", sender: sender.self)
        
    }
    @IBAction func basicPressed(_ sender: UIButton) {
        DescriptionLabel.text = """
    I am Professional Software Engineer have 4 years experience in multiple fields like:
    1-Java
    2- C
    3- C++
    4- C#
    5- Android
    6- Python
    7- Arduino

2 Days Delivery

"""
    }
    
    @IBAction func premiumPressed(_ sender: UIButton) {
        DescriptionLabel.text = """
Will attempt to recover by breaking constraint
<NSLayoutConstraint:0x60000291f570 Buyer_s_Perspective.GradientView:0x7fdbb6e0f330.height == 144   (active)>

Make a symbolic breakpoint at UIViewAlertForUnsatisfiableConstraints to catch this in the debugger.
The methods in the UIConstraintBasedLayoutDebugging category on UIView listed in <UIKitCore/UIView.h> may also be helpful.
"""
    }
    @IBAction func ultimatePressed(_ sender: UIButton) {
        DescriptionLabel.text = """
            For Entrepreneur Track
            A project or business plan (5 to 6 pages, double space. The page limit does not including references and an appendix that includes any relevant visuals.) and a Powerpoint presentation about your approach and results to make communities more resilient:
            Fully explain your innovation/venture.
            Describe how it fits in the market.
            Define the target customer and their needs.
            Explain what makes your innovation/venture unique.
            Provide a basic business model.
            Explain possible next steps to grow the innovation/venture.
            Visual and content design.
            A three-minute video that is publicly available (e.g., Youtube)
            Any design or artifacts of your business solutions if available
            """
    }
    
}
extension DetailedViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "imageAssets", for: indexPath) as! ImageCollectionViewCell
        cell.imagesView.image = arrayOfImages[indexPath.row]
        return cell
    }
    
    
    
    
}
