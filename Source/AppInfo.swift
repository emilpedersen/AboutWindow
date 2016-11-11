//
//  AppInfo.swift
//  Menubar Color
//
//  Created by Emil Pedersen on 10/11/2016.
//  Copyright © 2016 Ambisapp. All rights reserved.
//

import Foundation

struct AppInfo {
    
    private static let BundleInfo = Bundle.main.infoDictionary!
    
    static var AppName: String {
        if let appName = BundleInfo["CFBundleName"] as? String {
            return appName
        } else {
            return ""
        }
    }
    
    static var ShortVersion: String? {
        return BundleInfo["CFBundleShortVersionString"] as? String
    }
    
    static var Version: String? {
        return BundleInfo["CFBundleVersion"] as? String
    }
    
    static var FormattedVersion: String {
        return "Version \(ShortVersion!)"
    }
    
    static var Copyright: String? {
        return BundleInfo["NSHumanReadableCopyright"] as? String
    }
    
}
