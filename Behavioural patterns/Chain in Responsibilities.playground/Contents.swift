import UIKit


protocol AccountType {
    var successor: AccountType? { get }
    var balance: Int { get }

    func setSuccessor(next: AccountType)
    func pay(amount: Int)
    func canPay(amount: Int) -> Bool
}

class Account: AccountType {
    var successor: AccountType?
    var balance: Int
    var title: String

    init(title: String, balance: Int) {
        self.title = title
        self.balance = balance
    }

    func setSuccessor(next: AccountType) { self.successor = next }

    func canPay(amount: Int) -> Bool { self.balance >= amount }

    func pay(amount: Int) {
        if canPay(amount: amount) {
            self.balance -= amount
            print("Item with value \(amount) purchased from \(title) account")
        } else if let successor = successor {
            successor.pay(amount: amount)
        } else {
            print("No money!")
        }
    }
}

// Tests
let cash = Account(title: "cach", balance: 20_000)
let debtCard = Account(title: "debtCard", balance: 30_000)
let kreditCard = Account(title: "kreditCard", balance: 40_000)

cash.setSuccessor(next: debtCard)
debtCard.setSuccessor(next: kreditCard)

cash.pay(amount: 30000)
