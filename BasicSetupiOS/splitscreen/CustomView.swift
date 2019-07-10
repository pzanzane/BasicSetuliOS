//
//  CustomView.swift
//  Test
//
//  Created by Apple on 10/07/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var contentView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit(){
        print("In CustomView commonInit")
        Bundle.main.loadNibNamed("custom", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
}
