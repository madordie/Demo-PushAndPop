## Demo-PushAndPop
隐藏导航栏+改变状态栏样式时出现导航栏莫名其妙没了

## 问题

![snapshot](https://github.com/madordie/Demo-PushAndPop/blob/master/Untitled.gif?raw=true)

当`ViewController.swift`实现
```swift
override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
}
```
时，两个`ViewController`对应的`UIStatusBarStyle`不同，则会出现如上图。`UIStatusBarStyle`一致则正常。

## 解决关键

```swift
class NavigationController: UINavigationController {
    override var childViewControllerForStatusBarStyle: UIViewController? {
        return visibleViewController
    }
}
```
只需要将`childViewControllerForStatusBarStyle`设置为`UINavigationController.visibleViewController`即可。

## 另外

附上`BViewController`中相关代码。在切换的两个`UIViewController`的`preferredStatusBarStyle`一样时，不需要设置`UINavigationController.childViewControllerForStatusBarStyle`。
```swift
class BViewController: UIViewController {

    var navigationBarHidden = false

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let navigationController = navigationController  else {
            return
        }
        if navigationController.isNavigationBarHidden != navigationBarHidden {
            navigationController.setNavigationBarHidden(navigationBarHidden, animated: animated)
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        guard let navigationController = navigationController  else {
            return
        }
        guard let last = navigationController.viewControllers.last as? BViewController else {
            return
        }
        if last.navigationBarHidden != navigationBarHidden {
            navigationController.setNavigationBarHidden(last.navigationBarHidden, animated: animated)
        }
    }
}
```

# 感谢

- @木头 `viewWillAppear`更换为`viewDidAppear`然后调试，在Demo中测试也可以曲线救国。
- @Harry 提供的终极大法～
