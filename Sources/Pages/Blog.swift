import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "All Posts"
    var description = "All blog posts"
    var path = "blog"

    var body: some HTML {
        Text("All Posts")
            .font(.title1)
            .margin(.bottom, 20)
        
        Text("Archive of all musings and articles")
            .font(.lead)
            .foregroundStyle(.secondary)
            .margin(.bottom, 30)
        
        Link("Golden VM Images", target: "/posts/2025-02-17-golden-vm-images/")
        Text("February 17, 2025")
            .foregroundStyle(.secondary)
        
        Divider()
            .margin(.vertical, 15)
        
        Link("Your Pain Is Mine", target: "/posts/2024-10-16-your-pain-is-mine/")
        Text("October 16, 2024")
            .foregroundStyle(.secondary)
        
        Divider()
            .margin(.vertical, 15)
        
        Link("Welcome!", target: "/posts/2024-10-07-welcome/")
        Text("October 7, 2024")
            .foregroundStyle(.secondary)
    }
}
