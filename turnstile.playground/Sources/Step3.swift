//import Foundation
//
//public class Turnstile<State> {
//  public private(set) var coins: Int
//
//  private init(coins: Int) {
//    self.coins = coins
//  }
//}
//
//public enum Locked {}
//extension Turnstile<Locked> {
//  public convenience init() {
//    self.init(coins: .zero)
//  }
//
//  public func insertCoin() -> Turnstile<Unlocked> {
//    Turnstile<Unlocked>(coins: coins + 1)
//  }
//}
//
//public enum Unlocked {}
//extension Turnstile<Unlocked> {
//  public func push() -> Turnstile<Locked> {
//    Turnstile<Locked>(coins: coins)
//  }
//}
