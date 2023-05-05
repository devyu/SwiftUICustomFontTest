# SwiftUICustomFontTest

When I used SwiftUI to build the app, I used a custom font in the project to display emojis (the font ttf file has 23.7M). When using custom fonts, the code is as follows:

ContentView will load slowly。
```swift

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<100, id: \.self) { i in
                    Text(verbatim: "\u{1fa84}")
                        .font(.custom("NotoColorEmoji", size: 18))
                        .foregroundColor(.secondary)
                }                    }
            .frame(height: 400)
        }
    }
}

```
It takes about 3 seconds for the app to start and display the page.

If commented out .font(.custom("NotoColorEmoji", size: 18))， everything will be fine

So how to improve performance or preload the ttf font file?
