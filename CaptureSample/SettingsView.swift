//
//  SettingsView.swift
//  CaptureSample
//
//  Created by Andrea Gerino on 16/01/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var model: CameraViewModel
    
    var body: some View {
        GeometryReader { geomReader in
            VStack {
                Spacer()
                
                Group {
                    Text("Hostname")
                    TextField("Hostname", text: $model.oscSettings.hostname)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Group {
                    Text("Port")
                    TextField("Port", text: $model.oscSettings.port)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Group {
                    Text("Speed (°/s)")
                    TextField("Speed", text: $model.oscSettings.speed)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Group {
                    Text("Angular Resolution (°)")
                    TextField("Angular Resolution", text: $model.oscSettings.angularResolution)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }

                Group {
                    Text("Rotation (°)")
                    TextField("Rotation", text: $model.oscSettings.rotation)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Spacer()
                
            }
            .padding()
            .frame(width: geomReader.size.width, height: geomReader.size.height)
        }
        .navigationBarTitle("Settings", displayMode: .inline)
    }
}

//struct SettingsView_Previews: PreviewProvider {
//    @State var hostname: String = "192.168.0.255"
//    @State var port: String = "6000"
//    @State var speed: String = "2.0"
//    @State var angularResolution: String = "10"
//
//    static var previews: some View {
//        SettingsView(hostname: $hostname, port: $port, speed: $speed, angularResolution: $angularResolution)
//    }
//}
