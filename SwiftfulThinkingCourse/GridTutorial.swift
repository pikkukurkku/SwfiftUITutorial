//
//  GridTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 25.03.25.
//

import SwiftUI

struct GridTutorial: View {
    var body: some View {
        
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex)
                        
                        if cellNumber == 7 {
                         EmptyView()
//                            Color.green.gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridColumnAlignment(cellNumber == 1 .trailing : .center)
                        }
                    }
                }
            }
        }
        
//        Grid () {
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//    //        cell(int: 3333333333333333333)
//            GridRow {
//                cell(int: 4)
//                cell(int: 5)
//            }
//        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridTutorial()
}
