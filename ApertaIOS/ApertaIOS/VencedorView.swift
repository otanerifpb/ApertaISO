//
//  VencedorView.swift
//  ApertaIOS
//
//  Created by ifpb on 07/07/23.
//

import SwiftUI

struct VencedorView: View {
    @ObservedObject var ApertaVM: ApertaViewModel

    var body: some View {
        VStack {
            Spacer()
            Text("Você Ganhou!!")
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

struct VencedorView_Previews: PreviewProvider {
    static var previews: some View {
        VencedorView(ApertaVM: ApertaViewModel())
    }
}
