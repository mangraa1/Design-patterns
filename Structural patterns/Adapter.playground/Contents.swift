import UIKit

protocol BirdProtocol {
    func sing()
    func fly()
}

class Hummingbird: BirdProtocol {
    func sing() {
        print("Hummingbird sings")
    }

    func fly() {
        print("Hummingbird flies")
    }
}

class Raven {
    func voice() {
        print("Raven sings")
    }

    func soars() {
        print("Raven flies")
    }
}

//MARK: - Adapter
class RavenAdapter: BirdProtocol {
    private var raven: Raven

    init(adapter: Raven) {
        raven = adapter
    }

    func sing() {
        raven.voice()
    }

    func fly() {
        raven.soars()
    }
}

//MARK: - Test

func birdCapabilityTest(bird: BirdProtocol) {
    bird.sing()
    bird.fly()
}

let hummingbird = Hummingbird()
let raven = Raven()
let ravenAdapter = RavenAdapter(adapter: raven)

birdCapabilityTest(bird: hummingbird)
birdCapabilityTest(bird: ravenAdapter)

