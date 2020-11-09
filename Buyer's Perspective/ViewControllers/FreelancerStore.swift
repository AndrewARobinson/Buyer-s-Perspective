//
//  FreelancerStore.swift
//  Buyer's Perspective
//
//  Created by Andrew robinson on 11/5/20.
//

import UIKit

class freeLanceStore {
    var freeLanceUsers = [freeLancer]()
    var filteredData = [freeLancer]()
    
    
    func addUsers(){
        freeLanceUsers.append(freeLancer(firstName: "Andrew", lastName: "Walcot", userImage: UIImage(named: "userEmoji.png")!, jobTitle: "Software Developer", userDescription: "Hello, I'm professional  software developer with 8+ years of Banking applications and ERP software development experience."))
        freeLanceUsers.append(freeLancer(firstName: "Jack", lastName: "Baily", userImage: UIImage(named: "userDos.png")!, jobTitle: "Ui/Ux Designer", userDescription: "I will design 2 modern minimalist logo design"))
        freeLanceUsers.append(freeLancer(firstName: "William", lastName: "Johnson", userImage: UIImage(named: "userTr")!, jobTitle: "App Icon Creator", userDescription: "Creating beautiful brand face, one at a time"))
        freeLanceUsers.append(freeLancer(firstName: "Jackie", lastName: "Sawer", userImage: UIImage(named: "userUno.png")!, jobTitle: "Programmer", userDescription: "I will write scripts, apps and programms"))
        freeLanceUsers.append(freeLancer(firstName: "Monster", lastName: "SaMan", userImage: UIImage(named: "userEmoji.png")!, jobTitle: "App Developer", userDescription: "I will develop an ios, android, web app with flutter bloc, firebase"))
        freeLanceUsers.append(freeLancer(firstName: "Mic", lastName: "JJa", userImage: UIImage(named: "userEmoji.png")!, jobTitle: "iOS Developer", userDescription: "I will do ios app development or be your iphone app developer"))
        freeLanceUsers.append(freeLancer(firstName: "Job ", lastName: "Softner", userImage: UIImage(named: "userEmoji.png")!, jobTitle: "Andriod Developer", userDescription: "I will develop native android app"))
        freeLanceUsers.append(freeLancer(firstName: "Warren", lastName: "Sonny", userImage: UIImage(named: "userEmoji.png")!, jobTitle: "Icon Creator", userDescription: "I will be your app icon creator and designer"))
    }
}
