import Foundation

var turnstile = Turnstile()
turnstile.state // <- State: Locked

turnstile.insertCoin()
turnstile.push()
turnstile.coins // <- Coin: 1

turnstile.push() //< - State: Locked
turnstile.state

turnstile.insertCoin() // <- State Unlocked
turnstile.state
turnstile.coins // <- Coin: 2
