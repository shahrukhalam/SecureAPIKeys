//
//  ViewController.swift
//  SecureAPIKeys
//
//  Created by Shahrukh Alam on 08/11/20.
//  Copyright © 2020 Shahrukh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    public let HARDCODED_API_KEY = "12345"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let label = UILabel(frame: CGRect(origin: CGPoint(x: 100, y: 100),
                                          size: CGSize(width: 100, height: 100)))
        if let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String {
            label.backgroundColor = .red
            label.text = apiKey
        }

        view.addSubview(label)
    }


}
