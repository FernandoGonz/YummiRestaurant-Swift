//
//  CardView.swift
//  Yummi App
//
//  Created by Fernando González on 04/07/22.
//

import UIKit

class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initialSetup()
    }
    
    private func initialSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
    }
    
}
