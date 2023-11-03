# docker-ISadvanced
特権ポートをローカルで使いたくなかったのと環境の差を埋めるため作成
## メモ
```
git clone git@github.com:naoya0117/docker-ISadvanced
cd ./docker-ISadvanced
git submodule update --init --recursive
```
- 80番ポートを4000番にポートフォワードしている

- ビルド時に、schedule内の所有権を変える必要あり
```
sudo chown $(whoami):$(whoami) ./schedule
```
