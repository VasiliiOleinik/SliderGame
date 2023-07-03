# Doc

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

## Vars

- `let` = constant
- `var` = simple variable

## @IBAction
Потрібна для того, щоб привʼязати цю функцію у візуальному конструкторі до якогось єлементу.

## @IBOutlet
Потрібна для того, щоб приєднати значення на сторіборді
! вкінці означає, що ця сущність завжди існує, це звичайне правило для IBOutlet

## Classes
- `UISlider` = slider
- `UILabel` = text
- `UIImage` = picture/BG
- `UIEdgeInsets` = відступи з усіх боків для елкменту
- `CATransition` = aнімації

## func
- `someFunc(param: Type) {}` = звичайна функція
коли ми будемо її викликати, то ключ параметра буде обовʼзковий: `someFunc(param: value)`.
Але, якщо ми не зочемо передавати параметри з ключем, то можна використати undercope: `someFunc(_ param: Type) {}`
І тоді її виклик буде виглядати так: `someFunc(value)`


## Lifecircle
- `viewDidLoad` = це рідний метод класу UIViewController.
Він викликається тоді, коли UIViewController завантажив весь інтерфейс. В цей момент вже все завантажено, але на екрані ще не зʼявилось.

## Build-in func
- `lroundf()` = округляє значення до цілого числа
- `Int.rand(1...100)` = рандомне значення від 1 до 100
- `abs()` = значення по модулю


## Operators
- `+=` = додати до якогось числа нове значення


## Button events
- `touch up inside` = клік на кнопку

## General
- `self.someFunc()`, `self.someVariable` = означає, що цей метод або змінна будуть використовуватись тільки в цьому контроллері
