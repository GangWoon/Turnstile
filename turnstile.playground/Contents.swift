import Foundation

Turnstile<Locked>()
  .insertCoin()
  .push()
  .insertCoin()
  .push()

var locked = Turnstile<Locked>()

/// Aliasing
var unlocked = locked.insertCoin()
var unlocked2 = unlocked

/// ↓
/// The code below may cause aliasing issues because both `unlocked` and `unlocked2` reference the same state.
/// Modifications to one variable may inadvertently affect the other, leading to unintended side effects.

