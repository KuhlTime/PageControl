//
//  PageVC.swift
//  PageControl
//
//  Created by André Kuhlmann on 28.02.19.
//  Copyright © 2019 André Kuhlmann. All rights reserved.
//

import UIKit

class PageVC: UIPageViewController, NavigationDelegate {
    
    // MARK: - Pages
    
    static let FirstPage = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstVC")
    static let SecondPage = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC")
    
    
    // === Animation ===
    var i = -1
    var setup = true
    // =================
    
    
    // MARK: - Navigation
    
    func navigate(from: UIViewController? = nil, to: UIViewController) {
        
        // === Animation ===
        i += 1
        let direction: UIPageViewController.NavigationDirection = (i % 2 == 0) ? .reverse : .forward
        // =================
        
        setViewControllers([to], direction: direction, animated: !setup, completion: nil)
        
        // the "setup" variable gets set to false
        // so that animations will be shown when
        // the navigation() function gets called
        // again
        
        setup = false
    }

    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sets the starting page
        navigate(to: PageVC.FirstPage)
    }

}
