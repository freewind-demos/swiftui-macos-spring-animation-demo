import SwiftUI

struct ContentView: View {
    @State private var offset: CGFloat = 0

    var body: some View {
        VStack(spacing: 40) {
            Text("弹簧动画示例")
                .font(.headline)

            // 弹性很强的弹簧
            HStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                    .offset(x: offset)
                    .animation(.spring(response: 0.5, dampingFraction: 0.3), value: offset)

                Text("低阻尼")
                    .font(.caption)
            }

            // 弹性适中的弹簧
            HStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                    .offset(x: offset)
                    .animation(.spring(response: 0.5, dampingFraction: 0.7), value: offset)

                Text("适中")
                    .font(.caption)
            }

            // 几乎没有弹性的弹簧
            HStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .offset(x: offset)
                    .animation(.spring(response: 0.5, dampingFraction: 0.9), value: offset)

                Text("高阻尼")
                    .font(.caption)
            }

            HStack(spacing: 20) {
                Button("向左") { offset = -100 }
                Button("重置") { offset = 0 }
                Button("向右") { offset = 100 }
            }

            Divider()

            // bounce 效果
            Text("Bouncy 弹簧")
                .font(.headline)

            Circle()
                .fill(Color.purple)
                .frame(width: 60, height: 60)
                .scaleEffect(offset == 0 ? 1 : 1.2)
                .animation(.spring(response: 0.4, dampingFraction: 0.4), value: offset)
                .offset(y: offset == 0 ? 0 : -30)
                .animation(.spring(response: 0.4, dampingFraction: 0.4), value: offset)

            Button("弹跳") {
                offset = offset == 0 ? 100 : 0
            }
        }
        .padding(40)
    }
}
