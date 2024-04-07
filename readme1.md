name: Remote Server Deployment

on:
push:
branches:
- main

jobs:
deploy:
runs-on: ubuntu-latest
steps:


      - name: SSH Deploy
        uses: appleboy/ssh-action@master
        with:
          host: 1.116.133.64Go Application CI
          username: root
          password: ioriqiqi1A--
          port: 22
          script: |
            # 你想要在远程服务器上执行的命令
            echo "Deploying to the server..."

