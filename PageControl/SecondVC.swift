//
//  SecondVC.swift
//  PageControl
//
//  Created by André Kuhlmann on 28.02.19.
//  Copyright © 2019 André Kuhlmann. All rights reserved.
//

import UIKit

class SecondVC: NavigateableViewController {

    @IBAction func back(_ sender: Any) {
        delegate.navigate(from: self, to: PageVC.FirstPage)
    }

}
