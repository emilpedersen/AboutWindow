//
//  AboutWindow.swift
//  Menubar Color
//
//  Created by Emil Pedersen on 10/11/2016.
//  Copyright © 2016 Ambisapp. All rights reserved.
//

import Cocoa
import Foundation

public class AboutWindow: NSWindow {
    
    @IBOutlet weak var nameLabel: NSTextField!
    @IBOutlet weak var versionLabel: NSTextField!
    @IBOutlet weak var copyrightLabel: NSTextField!
    @IBOutlet weak var websiteButton: NSButton!
    
    override public func awakeFromNib() {
        
        self.collectionBehavior = self.collectionBehavior.union(.moveToActiveSpace)
        self.level = Int(CGWindowLevelForKey(CGWindowLevelKey.modalPanelWindow))
        
        self.titlebarAppearsTransparent = true
        self.titleVisibility = .hidden
        
        self.isMovableByWindowBackground = true
        
        versionLabel.stringValue = AppInfo.FormattedVersion
        copyrightLabel.stringValue = AppInfo.Copyright!
        
        if let _ = About.shared.website {
            websiteButton.isHidden = false
        } else {
            websiteButton.isHidden = true
        }
        
    }
    
    @IBAction func clickedWebsite(_ sender: Any) {
        if let website = About.shared.website {
            NSWorkspace.shared().open(website)
        }
    }
    
    
    override public func cancelOperation(_ sender: Any?) {
        self.performClose(sender)
    }
}

public class About : NSObject {
    
    public static let shared = About()
    
    public var website:URL?
    
    var aboutWindow = AboutWindowController()

    public func show(website:URL? = nil) {
        self.website = website
        aboutWindow = AboutWindowController()
        aboutWindow.showWindow(self)
        
        aboutWindow.window?.center()
        aboutWindow.window?.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
        NSApplication.shared().activate(ignoringOtherApps: true)
    }
}



