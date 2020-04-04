# OpenWrt-AutoBuild

Build OpenWrt firware [OpenWrt](https://github.com/openwrt/openwrt) using GitHub Actions

Great thanks for P3TERX with [his amazing job](https://github.com/P3TERX/Actions-OpenWrt/)
Thanks for [eSirPlayground](https://github.com/esirplayground/AutoBuild-OpenWrt) 

Build OpenWrt using GitHub Actions
[Read the details in P3TERX's blog (in Chinese) | 中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

## Usage

- This repo is only customize for my personal use (Especially with the 'files' folder. )
- Click the [Use this template](https://github.com/P3TERX/Actions-OpenWrt/generate) button to create a new repository.
- Generate `.config` files using source code. ( You can change it through environment variables in the workflow file. )
- Push `.config` file to the GitHub repository.
- The build will starts when push 'bulid.cmd' as a file to the root path. Progress can be viewed on the Actions page.
- When the build is complete, click the `Artifacts` button in the upper right corner of the Actions page to download the binaries.

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

## License

MIT
