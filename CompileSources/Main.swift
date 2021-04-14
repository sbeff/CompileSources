//
//  Main.swift
//  CompileSources
//
//  Created by Emanuele Beffa on 14/04/21.
//

import Foundation

public func helloCocoaPods() -> String {
//    let rustString: UnsafePointer<UInt8>? = hello_cocoapods()
//    let string: String = String(cString: rustString!)
//
//    destroy_string(UnsafeMutablePointer(mutating: rustString!))
//
//    return string
    let s = hello_cocoapods()
    let st = String(cString: s!)
    destroy_string(UnsafeMutablePointer(mutating: s!))

    return st
}
