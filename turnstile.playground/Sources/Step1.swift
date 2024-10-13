//import Foundation
//
//public struct Turnstile {
//  public var isLocked: Bool = true
//  public private(set) var coins: Int = 0
//
//  public mutating func insertCoin() {
//    guard isLocked else { return }
//    isLocked.toggle()
//    coins += 1
//  }
//
//  public mutating func push() {
//    isLocked.toggle()
//  }
//}
