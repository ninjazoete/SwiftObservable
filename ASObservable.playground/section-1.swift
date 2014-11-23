// External observing of value in Swift. In case of no KVO and KVC.

import UIKit

protocol Observable {
    
    var subscribeDidChangeClosure : ((Any) -> Void)? {get set}
    var subscribeWillChangeClosure : ((Any) -> Void)? {get set}
    func propertyWillChange(property : Any)
    func propertyDidChange(property : Any)
    
}

class ObservableBase : Observable {
    
    var subscribeDidChangeClosure : ((Any) -> Void)?
    var subscribeWillChangeClosure : ((Any) -> Void)?
    
    func propertyDidChange(property: Any) {
        if let subscriber = subscribeDidChangeClosure? {
            subscriber(property)
        }
    }
    
    func propertyWillChange(property: Any) {
        if let subscriber = subscribeWillChangeClosure? {
            subscriber(property)
        }
    }
    
    private init() {
        
    }
    
}

class A : ObservableBase {
    
    var a : Int {
        willSet(newA) {
            propertyWillChange(a)
        }
        
        didSet {
            propertyDidChange(a)
        }
    }

    init(a : Int) {
        self.a = a
    }
    
}

var objA = A(a : 10)
objA.subscribeWillChangeClosure = { ob in println("Will change from : \(ob)") }
objA.subscribeDidChangeClosure = { ob in println("Did change to : \(ob)") }
objA.a = 15
objA.a
objA.a = 30
objA.a





