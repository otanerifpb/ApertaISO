//
//  ApertaViewModel.swift
//  ApertaIOS
//
//  Created by ifpb on 07/07/23.
//

import Foundation

class ApertaViewModel: ObservableObject {
    @Published var escolheNum:Int
    @Published var limiteMin:Int
    @Published var limiteMax:Int
    @Published var statusJogo:StatusJogo = StatusJogo.jogando
    @Published var statusChute:StatusChute = StatusChute.inicio
    @Published var tela: Tela = .vencedor

    init(limiteMin: Int = 1, limiteMax: Int = 100) {
        self.limiteMin = limiteMin
        self.limiteMax = limiteMax
        self.escolheNum = Int.random(in: limiteMin+1..<limiteMax)
    }

    func chute(chute:Int) {
        if (!self.chuteValido(chute: chute)) {
            self.statusJogo = StatusJogo.perdeu
        } else {
            self.alterarLimite(chute: chute)
            if (self.apertou()) {
                self.statusJogo = StatusJogo.ganhou
            }
        }
    }

    func chuteValido(chute:Int) -> Bool {
        return chute > self.limiteMin && chute < self.limiteMax && chute != self.escolheNum
    }

    func alterarLimite(chute:Int) {
        if (chute < self.escolheNum) {
            self.limiteMin = chute
            self.statusChute = StatusChute.menor
        } else if (chute > self.escolheNum) {
            self.limiteMax = chute
            self.statusChute = StatusChute.maior
        }
    }

    func apertou() -> Bool {
        return self.limiteMin + 1 == self.limiteMax - 1
    }

    func reset(limiteMin: Int = 1, limitMax: Int = 100) {
        self.limiteMin = limiteMin
        self.limiteMax = limitMax
        self.escolheNum = Int.random(in: limiteMin+1..<limiteMax)
        self.statusJogo = StatusJogo.jogando
        self.statusChute = StatusChute.inicio
    }
}

enum StatusJogo: String {
    case ganhou = "GANHOU"
    case perdeu = "PERDEU"
    case jogando = "JOGANDO"
}

enum StatusChute: String {
    case inicio = ""
    case maior = "MAIOR"
    case menor = "MENOR"
    case igual = "IGUAL"
}

enum Tela {
    case Aperta
    case vencedor
    case perdedor
}

