# GBKRouterProtocol

Базова логіка для Router навігації у застосуванні.

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Use](#use)
- [To Do](#to-do)

## Features

- [x] Розширення для UIViewController
- [x] Розширення для UINavigationController

## Requirements

- iOS 10.0+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate GBKRouterProtocol into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'GBKRouterProtocol', :git => 'git@gitlab.gbksoft.net:gbksoft-mobile-department/ios/gbkrouterprotocol.git'
end
```

Then, run the following command:

```bash
$ pod install
```

## Use

### Setup

Імпортування framework:

```swift
import GBKRouterProtocol
```
### Naming

Неймінг який потрібно використовувати для Router+Storyboard:
- (Modul_Name)Router.swift
- (Modul_Name).storyboard

> Наприклад:
>  - AuthRouter.swift
>  - Auth.storyboard

### Roter + Storyboard

В Storyboard в View Controller назва Class і Storyboard ID мають бути однакові. Наприклад: LoginViewController.
![ROUTER PROTOCOL iOS](http://gbksoft.net/downloads/zakhliupanyi-av/routerinstoryboard.png)

### Code

Далі в файлі (Modul_Name)Router.swift описуємо реалізацію:

Якщо context - UIViewController.

```swift
import UIKit
import GBKRouterProtocol

struct AuthRouter: GBKRouterProtocol {

    var context: UIViewController

    init() {}

    func openLogin() {
        let loginController = getController(type: LoginViewController.self)!
        present(controller: loginController)
    }
}
```

Якщо context - UINavigationController.

```swift
import UIKit
import GBKRouterProtocol

struct AuthRouter: GBKRouterProtocol {

    var context: UINavigationController

    init() {}

    func openLogin() {
        let loginController = getController(type: LoginViewController.self)!
        push(controller: loginController)
    }
}

```

Далі в коді для відкриття екрану Login пишемо:

```swift
AuthRouter(in: self).openLogin()
```
>  self - це поточний View Controller.


## To Do
- Зробити extension для UITabBarController
