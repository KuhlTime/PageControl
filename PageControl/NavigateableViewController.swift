//
//  NavigateableViewController.swift
//  PageControl
//
//  Created by André Kuhlmann on 28.02.19.
//  Copyright © 2019 André Kuhlmann. All rights reserved.
//

import UIKit

class NavigateableViewController: UIViewController {

    var delegate: NavigationDelegate {
        return parent as! PageVC
    }

}
