##Simple external property observing addition to swift
It is widely known that Swift neighter has a global KVO solution nor any KVC mechanism mainly because of the lack of a base class like NSObject in Objective-C.

This proposed solution is just a simple addition of an Observable protocol and ObservableBase abstract class which still requires strong typing and calling these observer methods.

**Created while learning swift and thinking as an objective-c developer.**
