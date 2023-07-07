//
//  PerdedorView.swift
//  ApertaIOS
//
//  Created by ifpb on 07/07/23.
//

import SwiftUI

struct PerdedorView: View {
    @ObservedObject var apertaVM: ApertaViewModel

    var body: some View {
        VStack {
            Text("Perdeu!!")
            Button("Jogar de novo") {
                self.apertaVM.reset()
            }
        }
    }
}

struct PerdedorView_Previews: PreviewProvider {
    static var previews: some View {
        PerdedorView(apertaVM: ApertaViewModel())
    }
}
