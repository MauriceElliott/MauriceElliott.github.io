import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Codedawa"

    var body: some HTML {
        Text("Code Dawa")
            .font(.title1)
        
        Text("Code Dawa is the cure to my fractured sanity.")
            .font(.lead)
            .foregroundStyle(.primary)
            .margin(.bottom, 30)

        Link("Github", target: "https://github.com/MauriceElliott")
            .font(.lead)
            .foregroundStyle(.bodyEmphasis)
            .margin(.bottom, 30)
            
        Link("About Me ->", target: "/posts/2025-12-07-introduction")
            .font(.title2)
            .margin(.top, 20)
            .margin(.bottom, 10)
        Text("December 7, 2025")
            .foregroundStyle(.secondary)
    }
}
