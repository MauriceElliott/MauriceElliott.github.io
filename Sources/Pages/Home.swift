import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("CodeDawa")
            .font(.title1)
        
        Text("Code Dawa is the cure to my fractured sanity.")
            .font(.body)
            .foregroundStyle(.primary)
            .margin(.bottom, 30)

        Image("/images/home_art.png", description: "pixel art of a computer, a keyboard, and a large cup of tea.")
            .frame(width: 300)
            .margin(.bottom, 30)
            .class("float-end")

        Text("My name is Maurice, I am a software engineer, father, creative, and lover of all things sad and desperate.")
            .font(.body)
            .margin(.bottom, 100)

        Link("Github Projects ->", target: "https://github.com/MauriceElliott")
            .font(.lead)
            .foregroundStyle(.secondary)
            .margin(.bottom, 30)

        Text("Selection of my favourite github projects from the last few years.")
            .font(.body)
            .foregroundStyle(.secondary)
            .margin(.bottom, 30)
        
        Link("about.", target: "/introduction")
            .foregroundStyle(.primary)
            .font(.lead)
            .margin(.top, 20)
            .margin(.bottom, 10)
    }
}
