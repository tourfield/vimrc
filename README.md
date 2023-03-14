# vimrc
Vim environment
1. 下载文件到本地
```
git clone https://github.com/tourfield/vimrc
```
2. 将配置文件copy到用户目录，使配置生效
```
cp -rvf vimrc/vimrc ~/.vimrc
```
3. 配置依赖环境
```
mkdir -p ~/.vim/bundle/
cd ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git
```
4. 安装依赖包
```
vim ~/.vimrc
# 在vim模式下输入下面命令
:!VundleInstall
```
5. 编译C++自动补全工具
参考[YouCompleteMe](https://github.com/Valloric/YouCompleteMe.git)
