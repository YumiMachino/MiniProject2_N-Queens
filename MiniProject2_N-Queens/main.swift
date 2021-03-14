//
//  main.swift
//  MiniProject2_N-Queens
//
//  Created by Yumi Machino on 2021/03/14.
//

import Foundation

print("Hello!")
var board = Board(size:8)
board.place(row: 0, col: 5)
print(board.isSafe(row: 0, col: 4))
//print(board)
print(board.description)


//solveQueens(board: &board)
//print(count)

temp(board: &board, queenCount: 8)
