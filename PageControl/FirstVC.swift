//
//  FirstVC.swift
//  PageControl
//
//  Created by André Kuhlmann on 28.02.19.
//  Copyright © 2019 André Kuhlmann. All rights reserved.
//

import UIKit

class FirstVC: NavigateableViewController {
    
    @IBAction func next(_ sender: Any) {
        delegate.navigate(from: self, to: PageVC.SecondPage)
    }
    
}
