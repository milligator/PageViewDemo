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
    var pageIndex = Int()
    
    func viewControllerAtIndex(index: Int) -> TutorialViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("tutorialVC") as TutorialViewController
        vc.title = pageText[index]
        vc.pageIndex = index
        
        self.pageIndex = index
        
        return vc
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as TutorialViewController).pageIndex
        index--
        
        switch index {
        case Int.min...(-1):
            return nil
        case NSNotFound:
            fatalError("NSNotFound. Should crash. Are fucked")
        case pageText.count...Int.max:
            return nil
        default:
            return viewControllerAtIndex(index)
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var index = (viewController as TutorialViewController).pageIndex
        index++
        
        switch index {
        case Int.min...(-1):
            return nil
        case NSNotFound:
            fatalError("NSNotFound. Should crash. Are fucked")
        case pageText.count...Int.max:
            return nil
        default:
            return viewControllerAtIndex(index)
        }
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return pageText.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return pageIndex-1
    }
}
