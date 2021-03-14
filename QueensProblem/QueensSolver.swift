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

func solveQueens(board: inout Board,countQ:Int){
  count += 1
  if countQ == 8 {
    print(board)
  } else {
    for i in countQ...board.size-1 {
      for j in 0...board.size-1 {
        if board.isSafe(row: i, col: j) {
          board.place(row: i, col: j)
          solveQueens(board: &board, countQ: countQ+1)
          board.remove(row: i, col: j)
        }
      }
    }
  }
}


