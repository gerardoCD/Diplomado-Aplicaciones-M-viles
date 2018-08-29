//
//  ViewController.swift
//  ScrollViewController
//
//  Created by Gerardo on 29/08/18.
//  Copyright © 2018 Gerardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        updateZoomFor(size: imgView.bounds.size)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imgView.bounds.width
        let heightScale = size.height / imgView.bounds.width
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
    }

}

