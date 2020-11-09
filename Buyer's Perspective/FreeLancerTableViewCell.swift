//
//  FreeLancerTableViewCell.swift
//  Buyer's Perspective
//
//  Created by Andrew robinson on 11/2/20.
//

import UIKit

class FreeLancerTableViewCell: UITableViewCell {

    @IBOutlet var backGroundGradientView: UIView!
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var userRates: UIImageView!
    @IBOutlet var viewOne: UIView!
    @IBOutlet var viewTwo: UIView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var userJobTItle: UILabel!
    @IBOutlet var userDescription: UILabel!
    
    let  path = UIBezierPath()
    
    func drawDashSperator() {
        let  p0 = CGPoint(x: self.bounds.minX, y: self.bounds.midY)
        path.move(to: p0)
        let  p1 = CGPoint(x: self.bounds.maxX, y: self.bounds.midY)
        path.addLine(to: p1)

        let  dashes: [ CGFloat ] = [ 16.0, 32.0 ]
        path.setLineDash(dashes, count: dashes.count, phase: 0.0)

        path.lineWidth = 8.0
        path.lineCapStyle = .butt
        UIColor.magenta.set()
        path.stroke()
    }
    func verticalLine() {
        let lineLayer = CAShapeLayer()
               lineLayer.strokeColor = UIColor.white.cgColor
               lineLayer.lineWidth = 2
               lineLayer.lineDashPattern = [4,4]
               let path = CGMutablePath()
               path.addLines(between: [CGPoint(x: 180, y: 0),
                                       CGPoint(x: 180, y: 300)])
               lineLayer.path = path
               self.backGroundGradientView.layer.addSublayer(lineLayer)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
//        backGroundGradientView.backgroundColor  = UIColor.red
    verticalLine()
        userImageView.circulaRaiduis()
//        viewOne.circulaRaiduis()
//        viewTwo.circulaRaiduis()
//        userRates.circulaRaiduis()
        drawDashSperator()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
