//
//  PageViewController.swift
//  OrgChartApp
//
//  Created by Genesis Mosquera on 12/20/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    lazy var allViewControllers = [self.getViewController(name: "FirstViewController"), self.getViewController(name: "SecondViewController"), self.getViewController(name: "ThirdViewController")]

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        setViewControllers([allViewControllers[0]], direction: .forward, animated: true, completion: nil)

        // Do any additional setup after loading the view.
    }
    private func getViewController(name: String) -> UIViewController {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }
}
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = allViewControllers.firstIndex(of: viewController) else { return nil }
        let previousIndex = index - 1
        
        if previousIndex < 0 {
            return allViewControllers[allViewControllers.count - 1]
        } else {
            return allViewControllers[previousIndex]
        }
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = allViewControllers.firstIndex(of: viewController) else { return nil }
        let nextIndex = index + 1
        if nextIndex == allViewControllers.count {
            return allViewControllers[0]
        } else {
            return allViewControllers[nextIndex]
        }
    }
}
extension PageViewController: UIPageViewControllerDelegate {
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return allViewControllers.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let currentVC = viewControllers?.first,
        let index = allViewControllers.firstIndex(of: currentVC)
            else { return 0 }
        return index
    }
}
