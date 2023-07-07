//
//  ApertaView.swift
//  ApertaIOS
//
//  Created by ifpb on 07/07/23.
//

import SwiftUI

struct ApertaView: View {
    @ObservedObject var apertaVM: ApertaViewModel
    @State var chute: String = ""

    var body: some View {
        VStack {
            Spacer()
            limites
            Text(String(self.apertaVM.escolheNum))
            Spacer()
            chuteInput
            chuteButton
            Spacer()
            status
            Spacer()
        }
    }
}

extension ApertaView {
    var limites: some View {
        HStack {
            Text(self.apertaVM.limiteMin.description).padding()
            Text(self.apertaVM.limiteMax.description).padding()
        }
    }
    
    var chuteInput: some View {
        TextField("Chute", text: self.$chute).padding().textFieldStyle(RoundedBorderTextFieldStyle())
    }

    var chuteButton: some View {
        Button("Chutar"){
            self.apertaVM.chute(chute: Int(self.chute) ?? 0)
        }
    }

    var status: some View {
        VStack {
            Text("Seu chute foi \(self.apertaVM.statusChute.rawValue)").padding()
            Text("Status do jogo: \(self.apertaVM.statusJogo.rawValue)").padding()
        }
    }
}

struct ApertaView_Previews: PreviewProvider {
    static var previews: some View {
        ApertaView(apertaVM: ApertaViewModel())
    }
}
