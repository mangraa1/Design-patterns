import UIKit


// The type that all observers must match
protocol Observer {
    func getNew(video: String)
}

// Type corresponding to the observing subject
protocol Subject {
    func add(observer: Observer)
    func remove(observer: Observer)
    func notification(video: String)
}


// Subject class
class Blogger: Subject {

    var observers = NSMutableSet()
    var video: String = "" {
        didSet {
            notification(video: video)
        }
    }

    func add(observer: Observer) {
        observers.add(observer)
    }

    func remove(observer: Observer) {
        observers.remove(observer)
    }

    func notification(video: String) {
        for observer in observers {
            (observer as! Observer).getNew(video: video)
        }
    }
}


// Observer classes
class Subscriber: NSObject, Observer {

    var name: String

    init(name: String) {
        self.name = name
    }

    func getNew(video: String) {
        print("Subscriber \(name) received a new video \(video)")
    }
}

class Google: NSObject, Observer {
    func getNew(video: String) {
        print("video \(video) is being processed")
    }
}


let sub1 = Subscriber(name: "Sub1")
let sub2 = Subscriber(name: "Sub2")
let sub3 = Subscriber(name: "Sub3")

let blogger = Blogger()
[sub1, sub2, sub3].forEach { blogger.add(observer: $0) }

blogger.video = "New video"
