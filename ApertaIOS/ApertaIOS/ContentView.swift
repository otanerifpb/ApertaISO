//
//  ContentView.swift
//  ApertaIOS
//
//  Created by ifpb on 07/07/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var apertaVM: ApertaViewModel

    var body: some View {
        if self.apertaVM.statusJogo == .jogando {
            ApertaView(apertaVM: self.apertaVM)
        } else if self.apertaVM.statusJogo == .ganhou {
            VencedorView(ApertaVM: self.apertaVM)
        } else {
            PerdedorView(apertaVM: self.apertaVM)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(apertaVM: ApertaViewModel())
    }
}
