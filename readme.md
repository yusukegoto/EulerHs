EulerHs
=======

[![Build Status](https://img.shields.io/travis/yusukegoto/EulerHs.svg?branch=master)](https://travis-ci.org/yusukegoto/EulerHs)

HUnitベースの[Project Euler](https://projecteuler.net/problems)の解答をテストします.

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
$ cabal repl EulerHs -- cabalファイルに書いてあるname
> import EulerHs.Multiple
> Multiple.sum 9
````

## テストの実行

````
$ cabal test
````
