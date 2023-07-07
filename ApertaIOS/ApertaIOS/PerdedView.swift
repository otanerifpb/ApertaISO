//
//  PerdedorView.swift
//  ApertaIOS
//
//  Created by ifpb on 07/07/23.
//

import Foundation

struct PerdedorView: View {
    @ObservedObject var ApertaVM: ApertaViewModel

    var body: some View {
        VStack {
            Spacer()
            Text("Você Perdeu!!")
            .padding()
                .font(.largeTitle)
            Spacer()
            Button("Jogue Novamente") {
                self.ApertaVM.reset()
            }
            Spacer()
        }
    }
}

struct PerdedorView_Previews: PreviewProvider {
    static var previews: some View {
        PerdedorView(apertaVM: ApertaViewModel())
    }
}
