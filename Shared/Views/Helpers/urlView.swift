//
//  urlView.swift
//  ecoDesigner
//
//  Created by Jeremy Pagerit on 09/07/2022.
//

import SwiftUI
import YouTubePlayerKit


struct urlView: View {

    let youTubePlayer: YouTubePlayer = "https://youtube.com/watch?v=psL_5RIBqnY"

    var body: some View {
        YouTubePlayerView(self.youTubePlayer) { state in
            // Overlay ViewBuilder closure to place an overlay View
            // for the current `YouTubePlayer.State`
            switch state {
            case .idle:
                ProgressView()
            case .ready:
                EmptyView()
            case .error(_):
                Text(verbatim: "YouTube player couldn't be loaded")
            }
        }
    }

}

struct urlView_Previews: PreviewProvider {
    static var previews: some View {
        urlView()
            .previewDevice("iPhone 13")
    }
}
