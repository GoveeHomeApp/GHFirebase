//
//  GHFireBaseManager.swift
//  GHFirebase
//
//  Created by yang song on 2024/1/4.
//

import Foundation
import FirebaseCore
import FirebaseAnalytics
import Bugly

public protocol DataReportProtocol {
    
    func initialSDK()
    
    func initialSDKByFilePath(path: String)
    
    func userIdBridge(uId: String)
    
    func logEventBridge(name: String, param: [String: Any])
    // start 专属
    func logEventStartBridge(name: String, param: [String: Any], startDate: String)
    // finish 专属
    func logEventFinishBridge(name: String, param: [String: Any], endDate: String)
    
    func initialBugly()
}

public extension DataReportProtocol {
    
    func initialSDK() { }
    
    func initialSDKByFilePath(path: String) { }
    
    func userIdBridge(uId: String) { }
    
    func logEventBridge(name: String, param: [String: Any]) { }
    
    func logEventStartBridge(name: String, param: [String: Any], startDate: String) { }

    func logEventFinishBridge(name: String, param: [String: Any], endDate: String) { }
    
    func initialBugly() { }
    
}

@objc open class GHFireBaseManager: NSObject {
    
    /// 单例
    @objc public private(set) static var instance = GHFireBaseManager()
    
}

extension GHFireBaseManager: DataReportProtocol {
    
    @objc public func initialSDKByFilePath(path: String) {
        if let opt = FirebaseOptions(contentsOfFile: path) {
            FirebaseApp.configure(options: opt)
        } else {
            FirebaseApp.configure()
        }
    }
    
    @objc public func initialSDK() {
        FirebaseApp.configure()
    }
    
    @objc public func logEventBridge(name: String, param: [String: Any]) {
        Analytics.logEvent(name, parameters: param)
    }
    
    @objc public func logEventStartBridge(name: String, param: [String : Any], startDate: String) {
        var startParam = param
        startParam["event_start_time"] = startDate
        Analytics.logEvent(name, parameters: startParam)
    }
    
    @objc public func logEventFinishBridge(name: String, param: [String : Any], endDate: String) {
        var endParam = param
        endParam["event_end_time"] = endDate
        Analytics.logEvent(name, parameters: endParam)
    }
    
    @objc public func userIdBridge(uId: String) {
        Analytics.setUserID(uId)
    }
    
    @objc public func initialBugly() {
        Bugly.start(withAppId: buglyAppId)
    }
    
}
