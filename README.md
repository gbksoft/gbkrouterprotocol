# GBKRouterProtocol

Router based navigation solution for iOS application

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Use](#use)
- [To Do](#to-do)

## Features

- [x] extension for UIViewController
- [x] extension for UINavigationController

## Requirements

- iOS 10.0+

## Installation

### CocoaPods
To integrate GBKRouterProtocol into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'GBKRouterProtocol', :git => 'git@gitlab.gbksoft.net:gbksoft-mobile-department/ios/gbkrouterprotocol.git'
```

Then, run the following command:

```bash
$ pod install
```

## Use

### Setup
Usage of library require `import GBKRouterProtocol` somewhere in the source file.

### Naming

For Router should be used next naming:
- (Module_Name)Router.swift

> For example:
>  - LoginRouter.swift

### Code

If context is `UIViewController`

```swift
import UIKit
import GBKRouterProtocol

struct LoginRouter: GBKRouterProtocol {

    var context: UIViewController!

    func openLogin() {
        let loginController = LoginViewController()
        present(controller: loginController)
    }
}
```

If context is `UINavigationController`

```swift
import UIKit
import GBKRouterProtocol

struct LoginRouter: GBKRouterProtocol {

    var context: UINavigationController!

    func openLogin() {
        let loginController = LoginViewController()
        push(controller: loginController)
    }
}
```

Next in code we should call:

```swift
// For UIViewController
LoginRouter(in: self).openLogin(). // where self is current UIViewController

// For UINavigationController
LoginRouter(in: navigationController).openLogin()
```


## To Do
- extension for UITabBarController
