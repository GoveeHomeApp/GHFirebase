//
//  GHFireBaseManager.swift
//  GHFirebase
//
//  Created by yang song on 2024/1/4.
//

import Foundation
import FirebaseCore
import FirebaseAnalytics

public protocol DataReportProtocol {
    
    func initialSDK()
    
    func logEventBridge(name: String, param: [String: Any])
    
}

public extension DataReportProtocol {
    
    func initialSDK() { }
    
    func logEventBridge(name: String, param: [String: Any]) { }
    
}

@objc open class GHFireBaseManager: NSObject {
    
    /// 单例
    @objc public private(set) static var instance = GHFireBaseManager()
    
    
    
    
}

extension GHFireBaseManager: DataReportProtocol {
    
    @objc public func initialSDK() {
        FirebaseApp.configure()
    }
    
    @objc public func logEventBridge(name: String, param: [String: Any]) {
        Analytics.logEvent(name, parameters: param)
    }
    
}
