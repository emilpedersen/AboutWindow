//
//  ViewController.swift
//  Example
//
//  Created by Emil Pedersen on 11/11/2016.
//  Copyright © 2016 Ambisapp. All rights reserved.
//

import Cocoa
import AboutWindow

class ViewController: NSViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear() {
        super.viewDidAppear()

    }
    @IBAction func showWithoutWebsite(_ sender: Any) {
        About.shared.show()
    }
    
    @IBAction func showWithWebsite(_ sender: Any) {
        About.shared.show(website: URL(string:"http://www.ambisapp.com"))
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

