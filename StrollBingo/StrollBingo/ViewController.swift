//
//  ViewController.swift
//  StrollBingo
//
//  Created by obana.takenori on 2022/11/26.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var web: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://bin5.xyz/")
        let request = URLRequest(url:url!)
        web.load(request)
        
        web.scrollView.delegate = self
    }


}

extension ViewController: UIScrollViewDelegate {
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        scrollView.pinchGestureRecognizer?.isEnabled = false
//      ↑↑↑delegateの中で書いてやると良い
    }
}

