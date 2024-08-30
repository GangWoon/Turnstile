import Foundation

Turnstile<Locked>()
  .insertCoin()
  .push()
  .insertCoin()
  .push()

Turnstile<Locked>()
  .insertCoin()
  .insertCoin() // Error: Referencing instance method 'insertCoin()' on 'Turnstile' requires the types 'Unlocked' and 'Locked' be equivalent
  .push()

var locked = Turnstile<Locked>()
var unlocked = locked.insertCoin()

(locked.coins, unlocked.coins) // <- Coin: (0 , 1)
locked = unlocked.push()
locked.coins // <- Coin: 1
