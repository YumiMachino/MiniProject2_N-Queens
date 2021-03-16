//
//  QueensSolver.swift
//  SwiftAGDS
//
//  Created by Derrick Park on 2019-03-13.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import Foundation

/// Write a function solveQueens that accepts a Board as a parameter
/// and tries to place 8 queens on it safely.
///
/// - Your method should stop exploring if it finds a solution
/// - You are allowed to change the function header (args or return type)
/// - Your total recursive calls should not exceed 120 times.

var count = 0
func solveQueens(board: inout Board) {
	count += 1
    
}

var N = 8;
var queenCount = 0;
func temp(board: inout Board, col: Int) {
    // when col is equal or more than 8
    if col >= N {
        print(board)
    } else {
        for i in 0...N {
            // if ok to place
            if board.isSafe(row: i, col: col){
                board.place(row: i, col: col)
                queenCount += 1
                //queencount and col count is the same(make sure a queen is placed in a col)
                if queenCount == col {
                temp(board: &board, col: col + 1)
                }
              
            }
//            if !board.isSafe(row: i, col: col) && i == N {
//                temp(board: &board, col: col)
//            }
    }
    // can not place a queen in a particular col
    // need to go back and change the pos
}
}

// one solution least recursiv calls
// count how many recursive calls made (should be less than 114)
