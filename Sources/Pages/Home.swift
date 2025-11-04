import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Codedawa"

    var body: some HTML {
        Text("Codedawa")
            .font(.title1)
        
        Text("Code Dawa is the cure to my fractured sanity.")
            .font(.lead)
            .foregroundStyle(.secondary)
            .margin(.bottom, 30)
        
        Text("My posts")
            .font(.title2)
            .margin(.top, 20)
            .margin(.bottom, 10)
    }
}
