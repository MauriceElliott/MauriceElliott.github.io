import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("<br>")

        Link("CodeDawa", target: "/")
            .foregroundStyle(.white)
            .font(.title1)

        Text("<br>")

        Text("Code Dawa is the cure to my self sabotage.")
            .font(.body)
            .foregroundStyle(.primary)
            .margin(.bottom, 30)

        Image("/images/home_art.png", description: "pixel art of a computer, a keyboard, and a large cup of tea.")
            .frame(width: 300)
            .margin(.bottom, 30)
            .class("float-end")

        Text("My name is Maurice, I am a software engineer, father, creative, and lover of all things sad and desperate. This website is not a professional place, just somewhere I feel comfortable exposing a little of my inner being to the wider internet, in the hopes that it makes others feel normal in their own skin. At the same time it is for me mostly, and if I feel better after posting here, it has done its job.")
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
    }
}
