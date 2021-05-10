---
template: BlogPost
path: /ShimmerEffect
date: 2020-07-17
title: iOS Shimmer view
thumbnail: /assets/Shimmer.png
metaDescription: iOS Shimmer effect swift, iOS Shimmer view swift
---
[![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat)](https://developer.apple.com/iphone/index.action)
[![Language](https://img.shields.io/badge/language-Swift-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://mit-license.org)

## Overview
* Easy customization
* Swift 5.0 above
* Xcode 12 above
* Customizable colors, animation speed
* Manual drag & drop the class
* iPhone/iPad support

## Demo:
![Demo](https://raw.githubusercontent.com/Sivabalaa/images/master/iOSShimmerView.gif)

## Workflow
* Import `UIView+ShimmerEffect.swift` into you project
* Use the below line of code to add shimmer easily to any 
`UIImageView`,`UILabel`,`UIButton`, `UIView`.

```swift
testLbl.shimmerEffectView()
```
#

```swift
imageView.shimmerEffectView()
```
#

* If you need to change the color of shimmer, you can easily customize the colors usings `gradientBackground` & `gradientBackgroundMove`.
* Shimmers can be used for loading purposes such as while we receive data from the API or something releated to data loading.
* After all is done, we can remove the shimmer by using the below code.

```swift
testLbl.shimmerStopAnimate()
imageView.shimmerStopAnimate()
```
#

### Download the file here
[UIView+ShimmerEffect.swift](https://github.com/iostree/UIView-ShimmerEffect/blob/master/UIView%2BShimmerEffect.swift)

[![Github](https://img.shields.io/badge/Github-release-red.svg)](https://github.com/Sivabalaa/UIView-ShimmerEffect)


License
=================
UIView+ShimmerEffect is distributed under the [MIT
license ](https://mit-license.org).

- - -

Let's grow together 🌱

Cheers 🍻
