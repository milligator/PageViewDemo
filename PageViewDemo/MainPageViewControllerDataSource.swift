//
//  MainPageViewControllerDelegate.swift
//  PageViewDemo
//
//  Created by Andrew Breckenridge on 2/22/15.
//  Copyright (c) 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class MainPageViewControllerDataSource: NSObject, UIPageViewControllerDataSource {
   let pageText = ["This is p1", "p2 will have more about the app", "p3 is where you get into it", "you can log in to the app on this page"]
    
    func viewControllerAtIndex(index: Int) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("tutorialVC") as TutorialViewController
        
    }
}
