//
//  FirstViewController.swift
//  AssetsColoursEverywhere
//
//  Created by Claire Roughan on 04/03/2020.
//  Copyright © 2020 Claire Roughan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    private lazy var testLabel : UILabel = {
           let lbl = UILabel()
           lbl.adjustsFontSizeToFitWidth = true
           lbl.textColor =  FSBColorSwift.shared.theme.account.color.backgroundColor
           lbl.font = UIFont.boldSystemFont(ofSize: 18)
           lbl.text = "Hello this is a colour test"
           lbl.translatesAutoresizingMaskIntoConstraints = false
           return lbl
       }()
       
       // MARK: - Lifecycle -
     
    override func viewDidLoad() {
       super.viewDidLoad()
       /// use directly from assets
        view.backgroundColor = UIColor.defaultColor(named: "marketsBackgroundColor")

        view.addSubview(testLabel)

        setConstraints()
         
    }
       
    private func setConstraints() {

         NSLayoutConstraint.activate([
             testLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             testLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
             testLabel.heightAnchor.constraint(equalToConstant:30)
         ])
    }
}
