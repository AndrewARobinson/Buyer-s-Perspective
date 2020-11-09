//
//  freelancerProfile.swift
//  Buyer's Perspective
//
//  Created by Andrew robinson on 11/5/20.
//

import UIKit

struct freeLancer {
    var firstname: String!
    var lastName: String!
    var userImage : UIImage!
    var jobTitle : String!
    var userDescription: String!
    
    init(firstName: String, lastName:String, userImage: UIImage, jobTitle:String, userDescription: String) {
        self.firstname = firstName
        self.lastName = lastName
        self.userImage = userImage
        self.jobTitle = jobTitle
        self.userDescription = userDescription
    }
}
