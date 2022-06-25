//
//  ShareView.swift
//  
//
//  Created by Dylan on 16/06/2022.
//

import SwiftUI

/// UIViewControllerRepresentable making it possible to show a UIActivityViewController
/// displaying a share sheet.
//  TODO:  This seems to be the right way to show the share sheet in SwiftUI.
///        However, it shows the sheet full screen and this is not changable prior to ios 16
struct ShareView: UIViewControllerRepresentable {
    @EnvironmentObject var state: SDUIState

    func makeUIViewController(context: Context) -> UIActivityViewController {
        var activityItems: [Any] = []

        if let shareUrl = URL(string: self.state.share?.url ?? "") {
            activityItems.append(shareUrl)
        }

        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        return activityVC
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
