# docker-ISadvanced
- 応用演習のチーム課題にdocker環境を追加
## メモ
```
git clone git@github.com:naoya0117/docker-ISadvanced
cd ./docker-ISadvanced
git submodule update --init --recursive
```


- ビルド時に、schedule内の所有権を変える必要あり
```
sudo chown $(whoami):$(whoami) ./schedule
```
