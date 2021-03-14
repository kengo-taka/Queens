//
//  main.swift
//  QueensProblem
//
//  Created by Takamiya Kengo on 2021/03/13.
//

import Foundation

var hello : Board = Board(size: 8)

solveQueens(board: &hello,countQ: 0)
print("Number of recursive calls : \(count)")
