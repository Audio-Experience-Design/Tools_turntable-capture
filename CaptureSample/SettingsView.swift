//
//  SettingsView.swift
//  CaptureSample
//
//  Created by Andrea Gerino on 16/01/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State var hostname: String = "192.168.0.255"
    @State var port: String = "6000"
    @State var speed: String = "2.0"
    @State var angularResolution: String = "10"
    
    var body: some View {
        GeometryReader { geomReader in
            VStack {
                Spacer()
                
                Text("Hostname")
                TextField("Hostname", text: $hostname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Port")
                TextField("Port", text: $port)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Speed (degrees/s)")
                TextField("Speed", text: $speed)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Angular rotation (degrees)")
                TextField("Angular rotation", text: $angularResolution)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
                
            }
            .padding()
            .frame(width: geomReader.size.width, height: geomReader.size.height)
        }
        .navigationBarTitle("Settings", displayMode: .inline)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
