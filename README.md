# Actions-OpenWrt


GitHub Actions 在线编译openwrt的脚本

https://p3terx.com/archives/build-openwrt-with-github-actions.html

不启用ssh
SSH_ACTIONS: false

启用ssh
SSH_ACTIONS: true
启用了 会中断全自动编译 只能用浏览器或者ssh(MobaXterm这个ssh测试可以用)登陆 但是可以选择配置而编译
到了启用ssh这里 只需要运行 cd openwrt && make menuconfig 和 make -j$(($(nproc) + 1)) V=s 就可以了


复制 SSH 连接命令粘贴到终端内执行，或者复制链接在浏览器中打开使用网页终端。（网页终端可能会遇到黑屏的情况，按 Ctrl + C 即可）
cd openwrt && make menuconfig
完成后按快捷键Ctrl+D或执行exit命令退出，后续编译工作将自动进行。


一键编译脚本   基本不用修改了
.github\workflows\openwrt-actions.yml

更新与安装 feeds 前执行
diy-part1.sh

更新与安装 feeds 后执行
diy-part2.sh

自己用虚拟机下载源码 配置好的配置文件
.config

这个是替换编译固件里面的东西的文件夹
files

上传固件到奶牛快传
https://cowtransfer.com/

UPLOAD_COWTRANSFER: true

编译完成后你可以在 Upload firmware to cowtransfer 步骤的日志中找到下载链接。













[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

Build OpenWrt using GitHub Actions

[Read the details in my blog (in Chinese) | 编译方法的中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

## Usage

- Click the [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) button to create a new repository.
- Generate `.config` files using [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) source code. ( You can change it through environment variables in the workflow file. )
- Push `.config` file to the GitHub repository, and the build starts automatically.Progress can be viewed on the Actions page.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

### Tips

It may take a long time to create a `.config` file and build the OpenWrt firmware. Thus, before create repository to build your own firmware, you may check out if others have already built it which meet your needs by simply [search `Actions-Openwrt` in GitHub](https://github.com/search?q=Actions-openwrt).

Add some meta info of your built firmware (such as firmware architecture and installed packages) to your repository introduction, this will save others' time.

## Acknowledgments

- [Microsoft](https://www.microsoft.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cisco](https://www.cisco.com/)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © P3TERX

