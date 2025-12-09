import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Codedawa"

    var body: some HTML {
        Text("CodeDawa")
            .font(.title1)
        
        Text("Code Dawa is the cure to my fractured sanity.")
            .font(.lead)
            .foregroundStyle(.secondary)
            .margin(.bottom, 30)
        
        Text("Posts ->")
            .font(.title2)
            .margin(.top, 20)
            .margin(.bottom, 10)
        
        Link("Golden VM Images", target: "/posts/2025-02-17-golden-vm-images/")
        Text("February 17, 2025")
            .foregroundStyle(.secondary)
        
        Link("Your Pain Is Mine", target: "/posts/2024-10-16-your-pain-is-mine/")
        Text("October 16, 2024")
            .foregroundStyle(.secondary)
        
        Link("I have no mouth, yet I must scream.", target: "/posts/2024-10-07-welcome/")
        Text("December 7, 2025")
            .foregroundStyle(.secondary)
    }
}
