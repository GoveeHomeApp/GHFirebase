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
    
}

public extension DataReportProtocol {
    
    func initialSDK() {
        
    }
}

@objc open class GHFireBaseManager: NSObject {
    
    /// 单例
    public private(set) static var instance = GHFireBaseManager()
    
    
    
    
}

extension GHFireBaseManager: DataReportProtocol {
    
    @objc public func initialSDK() {
        FirebaseApp.configure()
    }
    
}
