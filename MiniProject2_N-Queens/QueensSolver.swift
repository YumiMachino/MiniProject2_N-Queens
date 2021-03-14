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
var queenCount = 8
func solveQueens(board: inout Board) {
	count += 1
    // place 8 queens safely
    // recursive solution using isSafe function and print
    /// base case: no more choces to make
    if queenCount == 0 {
        print(board.description)
        return
    } else {
        for i in 1...8 {
            for j in 1...8 {
                if board.isSafe(row: i, col: j) {
                    print("aaaa")
                    board.place(row: i, col: j)
                    solveQueens(board: &board)
                    queenCount = queenCount - 1
                }
            }
        }
    }
}

func temp(board: inout Board, queenCount: Int) {
    // base case: no more choices to make
    if queenCount == 3 {
        print("end")
        print(board.description)
        return
    } else {
        for i in 0...8{
            for j in 0...8 {
                // constraints
                if board.isSafe(row: i, col: j) {
                    board.place(row: i, col: j)
                    temp(board: &board, queenCount: queenCount - 1)
                    print(queenCount)
                    
                }
            }
        }
    }
}


// one solution least recursivv calls
// count how many recursive calls made (should be less than 114)




//func temp(queenCount: Int) {
//    /// base case: no more choices to make
//    if queenCount == 0 {
//        print(board)
//        print("aaaaa")
//        return
//    }
//    /// choices from 1 to 8
//    for i in 0...7 {
//        for j in 0...7 {
//        // これまでのchoice で確認する必要あり
//        if board.isSafe(row: i, col: j) {
//        board.place(row: i, col: j)
//        temp(queenCount: queenCount - 1)
//        } else {
//            print("not")
//        }
//       }
//    }
//}
