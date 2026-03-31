# SwiftUI macOS 弹簧动画

## 简介

演示 SwiftUI 中 `.spring()` 动画的用法，实现弹性效果。

## 快速开始

```bash
cd swiftui-macos-spring-animation-demo
xcodegen generate
open SwiftUISpringAnimationDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### spring 参数

```swift
Animation.spring(response: 0.5, dampingFraction: 0.7)
```

- `response`: 动画持续时间
- `dampingFraction`: 阻尼系数，0-1 之间，值越小弹性越强

## 完整示例

```swift
Circle()
    .offset(x: offset)
    .animation(.spring(response: 0.5, dampingFraction: 0.6), value: offset)
```
