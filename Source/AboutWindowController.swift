//
//  AboutWindowController.swift
//  Menubar Color
//
//  Created by Emil Pedersen on 10/11/2016.
//  Copyright © 2016 Ambisapp. All rights reserved.
//

import Cocoa

public class AboutWindowController: NSWindowController {
    
    override public var windowNibName: NSNib.Name! {
        return NSNib.Name("AboutWindow")
    }

    // MARK: Overriden Methods
    override public func showWindow(_ sender: Any?) {
        window?.center()
        super.showWindow(sender)
    }

}
