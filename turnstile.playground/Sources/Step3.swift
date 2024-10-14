import Foundation

public enum TurnstileState: ~Copyable {
  case locked(Turnstile<Locked>)
  case unlocked(Turnstile<Unlocked>)
  
  public init() {
    self = .locked(Turnstile<Locked>())
  }
  
  public mutating func insertCoin() {
    switch consume self {
    case .locked(let locked):
      self = .unlocked(locked.insertCoin())
    case .unlocked(let unlocked):
      self = .unlocked(unlocked)
    }
  }
  
  public mutating func push() {
    switch consume self {
    case .locked(let locked):
      self = .locked(locked)
    case .unlocked(let unlocked):
      let locked = unlocked.push()
      self = .locked(locked)
    }
  }
  
  public mutating func coins() -> Int {
    switch consume self {
    case .locked(let locked):
      let coins = locked.coins
      self = .locked(locked)
      return coins
    case .unlocked(let unlocked):
      let coins = unlocked.coins
      self = .unlocked(unlocked)
      return coins
    }
  }
}

public struct Turnstile<State: ~Copyable>: ~Copyable {
  private(set) var coins: Int

  private init(coins: Int) {
    self.coins = coins
  }
}

public enum Locked { }
extension Turnstile<Locked> {
  init() {
    self = .init(coins: .zero)
  }

  consuming func insertCoin() -> Turnstile<Unlocked> {
    Turnstile<Unlocked>(coins: coins + 1)
  }
}

public enum Unlocked {}
extension Turnstile<Unlocked>{
  consuming func push() -> Turnstile<Locked> {
    Turnstile<Locked>(coins: coins)
  }
}
