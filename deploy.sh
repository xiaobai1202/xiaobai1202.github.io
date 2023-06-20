#!/usr/bin/env sh
set -e
cd docs/.vuepress/dist # 进入生成的文件夹
echo 'xiaobai1202.github.io' > CNAME
if [ -z "$GITHUB_TOKEN" ]; then
  msg='deploy'
  githubUrl=git@github.com:xiaobai1202/xiaobai1202.github.io.git
else
  msg='来自github action的自动部署'
  githubUrl=https://xiaobai1202:${GITHUB_TOKEN}git@github.com:xiaobai1202/xiaobai1202.github.io.git
  git config --global user.name "xiaobai"
  git config --global user.email "811105717@qq.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f $githubUrl master:notes
cd -
rm -rf docs/.vuepress/dist
