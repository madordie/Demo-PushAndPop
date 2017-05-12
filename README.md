# Demo-PushAndPop
隐藏导航栏+改变状态栏样式时出现导航栏莫名其妙没了

当`ViewController.swift`实现
```swift
override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
}
```
时，两个`ViewController`对应的`UIStatusBarStyle`不同，则会出现如下状态。`UIStatusBarStyle`一致则正常。

<img src="https://github.com/madordie/Demo-PushAndPop/blob/master/Untitled.gif?raw=true">
