import Ignite
import SwiftUI

extension Ignite.Color {
    
    init(_ asset: ColorAsset, scheme: Ignite.ColorScheme) {
        var env = EnvironmentValues()
        env.colorScheme = (scheme == .light) ? .light : .dark
        let color = asset.swiftUIColor.resolve(in: env)
        self.init(
            red: Double(color.red),
            green: Double(color.green),
            blue: Double(color.blue),
            opacity: Double(color.opacity)
        )
    }
}
