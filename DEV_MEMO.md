# 1. Gem作成方法

dockerを利用した Gem 作成方法

```sh
docker run -v ${PWD}:/${gem_name} ruby:3.1.2 bundle gem ${gem_name} --test=rspec --mit --no-coc
```
- `gem_name` : Gem名
- `--test=rspec` : Testフレームワークに`rspec`を指定
- `--mit` : license を MIT にする (or `--no-mit`)
- `--no-coc` : Contributor Code of Conduc の出力を不要にする (or `--coc`)

# 2. gemspec の修正
`${gem_name}.gemspec` ファイルの TODO の箇所を修正する。