//
//  SwiftService.swift
//  ZIKRouterDemo
//
//  Created by zuik on 2017/10/14.
//  Copyright © 2017 zuik. All rights reserved.
//

import Foundation
import ZIKRouter
import ZIKRouterSwift

protocol SwiftServiceInput {
    func swiftFunction()
}

class SwiftService: SwiftServiceInput {
    func swiftFunction() {
        print("this is a swift function")
        _ = Router.perform(forViewConfig: ZIKCompatibleAlertConfigProtocol.self,
                           routeOption: { (config) in
                            config.source = UIApplication.shared.keyWindow?.rootViewController
        },
                           preparation: ({ (config) in
                            config?.title = "SwiftService"
                            config?.message = "This is a swift service"
                            config?.addCancelButtonTitle("Cancel", handler: {
                                print("Tap cancel alert")
                            })
                            config?.addOtherButtonTitle("OK", handler: {
                                print("Tap OK alert")
                            })
                           }))
    }
}
