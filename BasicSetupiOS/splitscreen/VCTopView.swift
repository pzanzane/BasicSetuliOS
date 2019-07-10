//
//  VCTopView.swift
//  Test
//
//  Created by Apple on 10/07/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class VCTopView: UIViewController {

    var name: String?
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    public func reload(name: String){
        self.lblName.text = ""
      self.lblName.text = name
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
