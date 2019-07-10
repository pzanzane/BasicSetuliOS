//
//  VCSplitTest.swift
//  Test
//
//  Created by Apple on 10/07/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit
class VCSplitTest : UIViewController {
    
    var topViewController: VCTopView!
    var bottomViewController: VCBottomView!
    @IBOutlet weak var containerViewTop: UIView!
    @IBOutlet weak var containerViewBottom: UIView!
    @IBOutlet weak var containerViewLast: UIView!
    
    override func viewDidLoad() {
        
        print("VCSplit test")
        let storyBoard = UIStoryboard(name: "split", bundle: Bundle.main)
        let storyBoardCommon = UIStoryboard(name: "CommonStoryboard", bundle: Bundle.main)
        
        topViewController = storyBoard.instantiateViewController(withIdentifier: "vcTopView") as! VCTopView
        bottomViewController = storyBoardCommon.instantiateViewController(withIdentifier: "vcBottonViewController") as! VCBottomView
        
        let customController = CustomViewController.loadFromNib()
        
        addTopViewController((topViewController as! UIViewController), containerViewTop)
        addTopViewController((bottomViewController as! UIViewController), containerViewBottom)
        addTopViewController((customController as! UIViewController), containerViewLast)
        

    } 
    private func addTopViewController(_ childController: UIViewController, _ containerView: UIView){
    
        
        addChild(childController)
        childController.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        childController.view.frame = containerView.bounds
        containerView.addSubview(childController.view)
        childController.didMove(toParent: self)
        
        
    }
}

extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instantiateFromNib()
    }
}
