/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Custom app subclass.
*/

import SwiftUI

@main
struct TurntableCaptureApp: App {
    @StateObject var model = CameraViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(model: model)
        }
    }
}
