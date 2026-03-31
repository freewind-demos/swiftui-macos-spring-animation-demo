import Cocoa

@main
struct SpringAnimationApp: App {
    var body: some Scene {
        Window("弹簧动画", id: "main") {
            ContentView()
        }
        .defaultSize(width: 400, height: 500)
    }
}
