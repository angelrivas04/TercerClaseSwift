import SwiftUI
let carta : Carta = Carta(icono: "gift", titulo: "Regalote", fecha: "June 13")
struct ContentView: View
{
    var trenesote: Bool
    var body: some View
    {
        VStack {
            HStack(spacing: 0)
            {
                Image(systemName: "train.side.front.car")
                    .font(.title)
                Image(systemName: "train.side.middle.car")
                    .font(.title)
                Image(systemName: "train.side.middle.car")
                    .padding(.top,10)
                Image(systemName: "train.side.middle.car")
                    .opacity(1)
                Image(systemName: "train.side.rear.car")
                    .font(.title)
            }
            
            Divider()
            giftcardd(carta: carta)
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView(trenesote: true)
    }
}
