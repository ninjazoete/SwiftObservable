##Simple external property observing addition to swift. 
It is widely known that Swift does not have any global KVO solution nor any KVC mechanism mainly because of lack of the base class like NSObject in Objective-C.

Proposed solution is just a simple addition of a Observable protocol and ObservableBase abstract class which still require strong typing a call to these observer methods. 

**Created while learning swift and thinking by objective-c developer.**
