//
//  DetailViewController.swift
//  StoreSearch
//
//  Created by Mihaela Simion on 8/27/18.
//  Copyright © 2018 Mihaela Simion. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }

    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}

extension DetailViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return DimmingPresentationController(presentedViewController: presented, presenting: presenting)
    }
}
