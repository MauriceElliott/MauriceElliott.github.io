import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Codedawa"

    var body: some HTML {
        Text("CodeDawa")
            .font(.title1)
        
        Text("Code Dawa is the cure to my fractured sanity.")
            .font(.lead)
            .foregroundStyle(.primary)
            .margin(.bottom, 30)

        Link("Github Projects ->", target: "https://github.com/MauriceElliott")
            .font(.title3)
            .foregroundStyle(.secondary)
            .margin(.bottom, 30)
        
        Link("I have no mouth, yet I must scream.", target: "/posts/2025-12-07-introduction")
            .font(.title3)
            .margin(.top, 20)
            .margin(.bottom, 10)
    }
}
