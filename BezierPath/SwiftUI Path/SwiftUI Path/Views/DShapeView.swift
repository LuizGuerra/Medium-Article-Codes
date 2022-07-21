//
//  DShapeView.swift
//  SwiftUI Path
//
//  Created by Luiz Pedro Franciscatto Guerra on 21/07/22.
//

import SwiftUI

struct DShapeView: View {
    var body: some View {
        NavigationView {
            DShape()
                .stroke(.orange, lineWidth: 5)
                .navigationTitle(Text("Banner Shape View"))
                .frame(width: 100, height: 100)
                .offset(x: 25, y: -50)
        }
    }
}

struct DShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .zero)
            path.addCurve(
                to: CGPoint(x: 0, y: 100),
                control1: CGPoint(x: 75, y: 0),
                control2: CGPoint(x: 75, y: 100))
            path.addLine(to: .zero)
            path.closeSubpath()
        }
    }
}

struct DShapeView_Previews: PreviewProvider {
    static var previews: some View {
        DShapeView()
    }
}
