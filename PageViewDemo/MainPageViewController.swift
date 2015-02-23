//
//  MainPageViewController.swift
//  PageViewDemo
//
//  Created by Andrew Breckenridge on 2/22/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class MainPageViewController: UIPageViewController {
    let dS = MainPageViewControllerDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        println("pageVC is up")
        dataSource = dS
        
        setViewControllers([dS.viewControllerAtIndex(0) as TutorialViewController], direction: .Forward, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
