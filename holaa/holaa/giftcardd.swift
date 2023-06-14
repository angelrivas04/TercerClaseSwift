//
//  giftcardd.swift
//  holaa
//
//  Created by Facultad de Contaduría y Administración on 13/06/23.
//

import SwiftUI

struct Carta
{
    let icono: String
    let titulo: String
    let fecha: String
}

struct giftcardd: View {
    
    let carta: Carta
    var body: some View {
        HStack(alignment: .firstTextBaseline)
        {
            VStack()
            {
                HStack()
                {
                    Image(systemName: "gift")
                        .font(.title)
                    Text("Regalito")
                        .font(.title)

                }
                Text("June 13")
            }
        }
        .padding()
        .padding(.top, 15.0)
        .background
        {
            ZStack(alignment:.top)
            {
                Rectangle()
                    .opacity(0.3)
                Rectangle()
                    .frame(maxHeight:15.0)
            }
            .foregroundColor(.pink)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct giftcardd_Previews: PreviewProvider {
    static var previews: some View {
        let carta : Carta = Carta(icono: "gift", titulo: "Regalote", fecha: "June 13")
        giftcardd(carta: carta)
    }
}
