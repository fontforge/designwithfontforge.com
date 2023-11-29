---
published: true
layout: bookpage
weight: 17
category: Getting To Know FontForge
title: ユーザー・インターフェース（UI）の概要
---

FontForge は Windows、Mac OS、GNU/Linux の各オペレーション・システムで共通のインターフェースを用いています。

次の動画は、Dave Crossland 氏が、ある「書体作成」ワークショップで行なった（FontForge プロジェクトを支援している非営利の書体デザイン・ワークショプでしたが）、根本的な特徴の簡単な紹介です。

<iframe width="853" height="480" src="https://www.youtube-nocookie.com/embed/_EhwHL1aloI?rel=0&amp;showinfo=0&t=1m55s" frameborder="0" allowfullscreen></iframe>

《 [画像が表示されない場合はこちら](https://www.youtube-nocookie.com/embed/_EhwHL1aloI?rel=0&amp;showinfo=0&t=1m55s) 》

FontForge には四つのメイン・ウィンドウがあります。 

#### 1. フォント・ビュー・ウィンドウ

このウィンドウは、FontForge を起動したときに表示されます。これには、フォントにあるグリフの一覧表が示されます。

#### 2. 文字ビュー・ウィンドウ

「フォント・ビュー」のグリフをダブル・クリックすると、そのグリフが「文字ビュー」内に表示されます。文字ビューでは、タブ・インターフェースを用いて一度に一文字ずつ、あるいは準備した語句のテキスト・ファイルグリフを使って文字を並べて順次、グリフの描画・編集ができます。

#### 3. メトリック・ウィンドウ

メニュー項目から **ウィンドウ (<u>W</u>)** ⇒ **メトリックスウィンドウを開く (<u>M</u>)** または **メトリックス (<u>M</u>)** ⇒ **ウィンドウ (<u>W</u>)** を開く、もしくは「フォント・ビュー」のグリフを選択して <kbd>Ctrl</kbd> + <kbd>K</kbd> を押します。または、「フォント・ビュー」からグリフを「メトリック・ウィンドウ」にドラッグ＆ドロップすることもできます。

メトリック・ウィンドウでは、フォントの間隔とカーニングを調整できます。ここでも、準備した語句リストのテキスト・ファイルを使って順次処理もできます。

#### 4. フォント情報ウィンドウ

メニュー項目から **エレメント (<u>L</u>)** ⇒ **フォント情報 (<u>F</u>)** を開きます。ここでは、フォントについての _メタデータ_ すべてを見つけられます。

#### 5. 評価用植字環境

フォント・エディターの他には、フォントを評価するための植字システムが必要です。これが書体デザイン専門家の持つ**大きな秘密**のひとつです。書体デザイン・プロジェクトの最も重要な作業の多くは、フォント・エディター以外の、植字システムで作成される文書評価で行なわれています。

主なシステムは：

* Web：　Firefox、Chromium、など
* DTP（デスクトップ・パブリッシング）ツール：　Scribus、Inkscape、など
* ワード・プロセッサー：　Libre Office、AbiWord、Calligra Words、など
* ページ・レイアウト・ソフトウェア：　LaTeX、ConTeXt、SILE、ShoeBot、Even、など


### ※《訳注》参考

四つのメイン・ウィンドウの名称は、FontForge の [Web Site](https://fontforge.org/docs/) にある「Overview」、「Tutorial」およびその[日本語訳版](https://fontforge.org/docs/old/ja/overview.html) では、以下のように記載されています。

1. Font View（フォント・ビュー）
1. Outline Glyph View（アウトライン・グリフ・ビュー）　〔アウトライン・ビュー とも呼ばれるようです〕
1. Bitmap View（ビットマップ・ビュー）　〔ビットマップ・グリフ・ビューとも呼ばれるようです〕
1. Metrics View（メトリクス・ビュー）
