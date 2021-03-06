EulerHs
=======

[![Build Status](https://img.shields.io/travis/yusukegoto/EulerHs.svg?branch=master)](https://travis-ci.org/yusukegoto/EulerHs)

[Project Euler](https://projecteuler.net/problems)の解答をHUnitでテストします.

- [Project Euler](https://projecteuler.net/problems)
- [Project Euler 日本語](http://odz.sakura.ne.jp/projecteuler/)
- [解答](https://github.com/nayuki/Project-Euler-solutions/blob/master/Answers.txt)

解答はnayuki/Project-Euler-solutions

## 準備

````
$ cabal sandbox init
$ cabal install --enable-tests
$ cabal configure --enable-tests
$ cabal build
````

## デバッグ

`EulerHs`をロードした状態でghciが立ち上がります.

````
$ cabal repl
> import EulerHs.Multiple
> Multiple.sum 9
...
何かのファイルを編集
> :r -- リロード

````

## テストの実行

````
$ cabal test
````

テストのデバッグ
````
$ cabal repl HUnit -- cabalファイルに書いてあるsuite名
````
