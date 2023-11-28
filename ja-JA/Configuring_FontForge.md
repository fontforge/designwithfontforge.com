---
published: true
layout: bookpage
weight: 16
category: Getting To Know FontForge
title: FontForge の設定
---

《訳注：　この章も旧内容の可能性があり、最新版 FontForge の内容と異なるかもしれません。》

FontForge はさまざまな形で微調整できます。以下の内容は、そうするためのヒントとこつです。使用するシステムや作業手順によって、FontForge を最適化する多くの選択肢があります。

もしあなたがお持ちのヒントがあれば、[こちらから](https://github.com/fontforge/designwithfontforge.com#how-to-contribute)お知らせください。

#### まずは大事なことから

設定変更を行なう場合は、以下を確実に行なってください。

1. FontForge （と X11）を終了します
2. 変更を実施します
3. FontForge を開始し、変更を確認します

## Windows の場合

現時点では、Windows ディストリビューションに特有のものは何もありません。なにかあれば、[お知らせ下さい](https://github.com/fontforge/designwithfontforge.com#how-to-contribute)。

## GNU/Linux の場合

現時点では、GNU/Linux ディストリビューションに特有のものは何もありません。なにかあれば、[お知らせ下さい](https://github.com/fontforge/designwithfontforge.com#how-to-contribute)。

## Mac OS X の場合

長いファイルまたはフォルダーの場所のパスを開くには、次の手順に従ってください。

1. パスをコピーします。
2. `⌘ Tab` を押して、Finder に切り替えます。
3. `⇧⌘G` を押して、Go menu&nbsp;&nbsp;→&nbsp;&nbsp; Go to Folder item を開きます。
4. `⌘V` を押して、パスを貼り付けます。
5. `Go`を押して、その場所の Finder window を新しく開きます。

#### キーボード・ショートカットについて

多くのダイアログやメニュー項目には、下線の引かれたアルファベットが一字表示されています。これらの項目には、<kbd>Ctrl</kbd> + <kbd>Alt</kbd> とその文字キーを押すことで即座にアクセスできます。たとえば、ダイアログで「<u>O</u>K」と尋ねられた場合には、<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>o</kbd> を押します。

もしも「US 英語キーボード」を使用していないのであれば、いくつかのキーボード・ショートカットは可笑しな応答をするかもしれません。あるいは、ショートカットを自分の希望するようにカスタマイズしたいと思うかもしれません。そうしたキーの設定を変更するには、以下にある `default` テキスト・ファイルを開いて編集します。

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/hotkeys/default
```

次のリリース版をインストールすると、`/Applications/FontForge.app` にあるすべてのファイルが上書きされてしまいますので、あなたが書き換えた `default` ファイルはコピーして、複製を別の場所に保存しておいてください。

#### 画面表示サイズについて

画面に表示されるユーザー・インターフェース（UI）が大きすぎたり小さすぎたりする場合には、使用しているコンピュータに合うように変更ができます。以下にある `resources` テキスト・ファイルを開いて編集します。

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/pixmaps/resources
```

画面サイズが 34cm であれば、`Gdraw.ScreenWidthCentimeters: 34` という行を追加します。表示がしっくりくるまで、異なる数値を試してみてください。

#### ブックマーク（しおり機能）について

ファイル・ダイアログには、`Bookmark Current Dir` ボタンがありますが、`Remove Bookmark...` ボタンは動作しません（バグ・レポート [#2054](https://github.com/fontforge/fontforge/issues/2054)）。以下にある `prefs` ファイルの `FCBookmarks` 項にあるリストを自分で編集できます。

```
~/.config/fontforge/prefs
```

ターミナル Terminal を開いてブックマークをリセットし、次のテキストを Terminal に貼り付けます。
Reset your bookmarks by opening Terminal and pasting the following text into Terminal:

```
sed -i bak -e 's/^FCBookmarks.*/FCBookmarks:     ~\/Library\/Fonts\/;\/Library\/Fonts\/;\/System\/Library\/Fonts\//g' ~/.config/fontforge/prefs;
```

つぎに「Enter」キーを押して貼り付けたコマンドを実行します。エラーが出なければ正常に処理されました。

#### 3 ボタン・マウスについて

FontForge では、いくつかの追加機能で、3 ボタン・マウスを利用できます。3 ボタン・マウスを使用していない場合は、エミュレーション機能を用いて実行可能です。X11/Xquartz の環境設定で、`Input` セクションの `Emulate three button mouse` オプションを有効化して下さい。

#### X11/XQuartz アイコンの FF アイコンへの変更について

もし FontForge の実行に [X11](../ja-JA/Glossary.md#★-x11-x-ウィンドウ・システム) を第一に使用しているのであれば、アイコンが変更できます。以下のテキストをコピーし Terminal に貼り付け、指示通りに操作してください。

```
sudo cp -f /Applications/FontForge.app/Contents/Resources/FontForge.icns /Applications/Utilities/XQuartz.app/Contents/Resources/X11.icns | sudo touch /Applications/Utilities/XQuartz.app 
```

#### Window 管理について

FontForge は Mac 専用のアプリケーションではありませんので、ウィンドウ操作、とくにデュアル・モニター・システム、に関しては多少「古い」かもしれません。ウィンドウ表示位置の制御を取り戻すには、無料、自由、オープンソースの [ShiftIt](https://github.com/fikovnik/ShiftIt) ユーティリティを使用し、ウィンドウ表示位置を設定するキーボード・ショートカットを割り当てて下さい。
