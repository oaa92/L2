import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 300

    var body: some View {
        VStack {
            Group {
                Text("Марафон\u{00a0}")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.gray)
                +
                Text("по SwiftUI")
                    .font(.system(size: 21))
                +
                Text("\n")
                +
                Text("«Отцовский пинок»")
                    .font(.system(size: 32))
                    .foregroundStyle(Color.accentColor)
            }
            .multilineTextAlignment(.leading)
            .frame(width: sliderValue)
            .border(.red)

            Slider(value: $sliderValue, in: 100...300)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
