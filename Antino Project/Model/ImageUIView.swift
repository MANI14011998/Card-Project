//
//  ImageUIView.swift
//  Antino Project
//
//  Created by MANINDER SINGH on 24/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import UIKit

extension UIImageView {

    func makeRounded() {

        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
