---
published: true
layout: bookpage
weight: 15
category: Getting To Know FontForge
title: FontForge をインストールする
---

FontForge はフリーソフトウェアです。ですから、ダウンロードし、シェアし、使用制限を受けることなく（商用利用も個人利用もともに推奨されています）プログラムをインストールできます。このソフトウェアはコミュニティーによって維持されており、誰でもソースコードに貢献できます。

FontForge はインストールが簡単なパッケージとして、Windows、Mac OS X および GNU/linux の各オペレーション・システム向けに提供されています。

### Windows に インストールする

Jeremy Tan 氏が作成した公式 Windows 版の「[インストール・ガイド](https://fontforge.org/en-US/downloads/windows-dl/)」（英語版）が利用可能です。

### Mac OS X にインストールする

Dr Ben Martin 氏が作成した公式 Mac 版の[インストール・ガイド](https://fontforge.org/en-US/downloads/mac-dl/) （英語版）が利用可能です。 

### GNU/Linux にインストールする

Linux マシンに FontForge をインストールする最も簡単な方法は、使用している Linux ディストリビューションのパッケージ・リポジトリを使用することです。

#### ・Debian または Ubuntu の場合は；

《※ 旧内容のため、ご注意ください》　Ubuntu 14.04〔2014版〕に含まれている FontForge のプログラム・パッケージは 2012 版ですので、FontForge の[パッケージ・アーカイブ（PPA: Personal Package Archive）](https://launchpad.net/~fontforge/+archive/ubuntu/fontforge)からアップデートしてください。

ヘルパースクリプト「`add-apt-repository`」がインストールされているか確認してください：

```sh
sudo apt-get install software-properties-common;
```

「FontForge PPA」を追加します（このとき「認証キー」も追加されます）：
    
```sh
sudo add-apt-repository ppa:fontforge/fontforge;
```

ソフトウェア・リストをアップデートし、PPA からパッケージを追加します：
    
```sh
sudo apt-get update;
```

FontForge をインストールします:
    
```sh
sudo apt-get install fontforge;
```

#### ・Fedora の場合

Fedora Linux マシンに FontForge をインストールするには、root ユーザーとして次の dnf コマンドを実行してください。この操作でおよそ 10 MiB（メビ・バイト＝2<sup>20</sup>）のデータがダウンロードされます。

```
sudo dnf install fontforge
```

Fedora マシンでソフトウェアをコンパイルしていない場合、gcc、automake、autoconf などをインストールした後、autogen.sh を実行中に libtoolize で エラーが発生する可能性があります。

その場合は、Fedora の libtool-ltdl-devel パッケージをインストールするか、別の GNU/Linux ディストリビューションの同様の開発パッケージをインストールする必要があるかもしれません。

「yum install」を実行した後、メニューもしくはコンソールや gnome ターミナルから `fontforge` コマンドを実行するれば、直接 FontForge を起動することができるはずです。

## GitHub から自分自身のバージョンをコンパイルする

GitHub とは、プログラムのソースコードを格納するサービスのことで、誰でもソフトウェアの開発に貢献できる場所です。そこには、プログラム開発の最先端の状態が保管されています。場合によっては、正式版パッケージにはまだ搭載されていない機能を使いたいなどの理由で、GitHub のソースコードから自分用のバージョンを作成したいと思うかもしれません。

その方法の詳しい説明書は <https://github.com/fontforge/fontforge/blob/master/INSTALL.md> にあります（英語版）。

## FontForge ソフトウェアのデバッグ

詳しい情報は [デバッグ](../ja-JA/]When_Things_Go_Wrong_With_Fontforge_Itself.md) の章を参照してください。
