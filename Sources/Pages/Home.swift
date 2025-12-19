import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"
    @Environment(\.themes) private var themes
    private var themeSwitcher: some HTML {
        VStack(alignment: .center) {
            Section {
                ForEach(themes) { theme in
                    Button(theme.name.capitalized) {
                        SwitchTheme(theme)
                    }
                    .role(.light)
                    .margin(.horizontal, .xSmall)
                }
            }
            .padding(.vertical, .small)
        }
        .position(.fixedBottom)
        .background(.firebrick)
        .frame(maxWidth: .percent(100%))
    }
    var body: some HTML {
        Text("<br>")

        Link("CodeDawa", target: "/")
            .foregroundStyle(.white)
            .font(.title1)

        Text("<br>")

        Text("Code is code and Dawa is the cure.")
            .font(.body)
            .foregroundStyle(.primary)
            .margin(.bottom, 30)

        Image("/images/home_art.png", description: "pixel art of a computer, a keyboard, and a large cup of tea.")
            .frame(width: 300)
            .margin(.bottom, 30)
            .class("float-end")

        Text("My name is Maurice, I am a software engineer, father, creative, and lover of all things sad and desperate. This website is not a professional place, just somewhere I feel comfortable exposing a little of my inner being to the wider internet, in the hopes that it makes others feel normal in their own skin. At the same time it is for me mostly, and if I feel better after posting here, it has done its job. Dawa is arabic for medicine, or cure. My implication with that is I found the cure to my addictions through code. Although saying that, it was definitely more my son being in the world that cured me.")
            .font(.body)
            .margin(.bottom, 100)

        Link("Github", target: "https://github.com/MauriceElliott")
            .foregroundStyle(.primary)
            .font(.lead)
            .margin(.top, 20)
            .margin(.bottom, 10)

        Text("<br>")

        Link("Introduction", target: "/introduction")
            .foregroundStyle(.primary)
            .font(.lead)
            .margin(.top, 20)
            .margin(.bottom, 10)


        themeSwitcher
    }
}
