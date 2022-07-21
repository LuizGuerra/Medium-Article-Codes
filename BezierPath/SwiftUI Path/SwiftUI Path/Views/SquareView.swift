//
//  SquareView.swift
//  SwiftUI Path
//
//  Created by Luiz Pedro Franciscatto Guerra on 21/07/22.
//

import SwiftUI

struct SquareView: View {
    var body: some View {
        NavigationView {
            Path { path in
                path.move(to: .zero)
                path.addLine(to: CGPoint(x: 100, y: 0))
                path.addLine(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 0, y: 100))
                path.addLine(to: .zero)
                path.closeSubpath()
            }
            .fill(.orange)
            .clipShape(Rectangle())
            .padding(20)
            .navigationTitle(Text("Square View"))
        }
    }
    
    var squarePath: some View {
        Path { path in
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: 100, y: 0))
            path.addLine(to: CGPoint(x: 100, y: 100))
            path.addLine(to: CGPoint(x: 0, y: 100))
            path.addLine(to: .zero)
        }
        .fill(.orange)
    }
}

struct SquareView_Previews: PreviewProvider {
    static var previews: some View {
        SquareView()
    }
}
