//
//  ViewController.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 03/07/24.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let outlinedTextView = linedTextView(
            frame: CGRect(x: 50, y: 100, width: 300, height: 100),
            text: "Hello, World!",
            textColor: .green,
            outlineColor: .black,
            font: UIFont.boldSystemFont(ofSize: 18),
            outlineWidth: 20.0
        )
        
        self.view.addSubview(outlinedTextView)
    }
}
#Preview {
    ViewController()
}
