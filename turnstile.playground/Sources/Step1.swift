//import Foundation
//
//public struct Turnstile {
//  public enum State {
//    case locked
//    case unlocked
//  }
//
//  public var state: State
//  public private(set) var coins: Int
//  
//  public init() {
//    self.state = .locked
//    self.coins = 0
//  }
//
//  public mutating func insertCoin() {
//    guard state == .locked else { return }
//    state = .unlocked
//    coins += 1
//  }
//
//  public mutating func push() {
//    state = .locked
//  }
//}
