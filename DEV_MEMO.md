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

**参考サイト**
- https://qiita.com/ogomr/items/80d639854068fd582d05#%E5%AE%8C%E6%88%90%E3%81%97%E3%81%9F%E3%82%B3%E3%83%BC%E3%83%89
- https://qiita.com/9sako6/items/72994b8b1c00af4e61fe