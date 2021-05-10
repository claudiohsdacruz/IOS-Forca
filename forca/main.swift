//
//  main.swift
//  forca
//
//  Created by Claudio Henrique Soares da Cruz on 02/05/21.
//

import Foundation


var sorteada = Palavra()
var jogo = Forca(palavra:sorteada.getPalavra(), dica: sorteada.getDica())

while (!jogo.terminou()){
    print("Dica: \(jogo.dica)")
    print("Status: \(String(jogo.status))")
    print("Letras: \(jogo.letrasJogadas)")
    print("Tentativas restantes: \(10 - jogo.tentativas)")
    
    print("Digite uma letra: ")
    let letra = Character(readLine()!)
    jogo.jogar(letra: letra)
}

print(jogo.resultado())

