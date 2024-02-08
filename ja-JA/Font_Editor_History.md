---
published: true
layout: bookpage
weight: 87
category: Appendices
title: フォント・エディター・ツールの歴史
---

2017 年 9 月、Adam Twardoch 氏により、fonttools メーリング・リストで書体編集ツールの簡単な歴史が提供されました。この文書は許可を得て本書に追加されており、自由に編集および加筆が可能です。

---
<br />

1975 年、ハンブルクに本拠を置く URW 社は、アウトラインベースのフォントをデザインするための最初のコンピューター制御システムである「Ikarus（イカルス）」を公開しました。 「イカルス」はかなりの年月をかけて進化しました。ペーター ファン・ブロックラント Peter van Blokland は、これを「Ikarus M」として Mac に移植しました。URW 社の継承会社である URW++ 社は、オランダのタイプ・ライブラリと協力して、DTL FontMaster ブランドの下で Ikarus ベースのツールの開発を続けました。これには非常に優秀なアプリがいくつか含まれていますが、一部のアプリのユーザー・インターフェイスは少し古い場合があります。

1985 年、テキサスに本拠を置く会社 Altsys は、ベジェ曲線で描画できる最初の Macintosh アプリケーション・ソフトである「Fontographer」と、最初の PostScript Type 1 フォント・エディターを開発しました。Altsys 社は後に 「Fontographer」を本格的なベクター・グラフィック・エディターである「Freehand」に拡張し、その後 Macromedia 社に買収された後 Adobe 社に買収されました。

「Fontographer」の開発は 10 年間停滞しました。 ソフトウェアの一部は最終的に Flash（動画やゲームなどを扱うための規格）の一部となり、「Freehand」は放棄されましたが、「Fontographer」は [FontLab](https://www.fontlab.com/ja/about/) 社に売却されました。

1990 年頃、FontLab 社は米国とロシアの共同研究として設立され、「FontLab フォント・エディター」およびその他いくつかのツール (TypeTool、ScanFont、TransType) を開発しました。

また、1990 年代初期には、ペーター ファン・ブロックラント、エリック・ファン・ブロックラント（Erik van Blokland）、およびユスト・ファン・ロッスム（Just van Rossum）の三氏が「RoboFog」を開発しました。これは、ユストの弟、グィド・ファン・ロッスム（Guido van Rossum）が開発したスクリプト言語「Python（パイソン）」の利用を可能にした「Fontgrapher 3.5」の拡張版です。

Apple 社で最初に TrueType フォント形式を作成したエンジニアの一人であり、TrueType ヒンティング言語の発明者であるサンポ・カーシラ（Sampo Kaasila）は、自身の会社 Type Solutions を設立しました。この会社は後に Bitstream 社に買収され、最終的には Monotype 社に買収されます。数ある業績の中で、彼は TrueType ヒント用のアプリである「TypeMan」を開発しましたが、このアプリは Microsoft 社が買収し、ビート・スタン（Beat Stamm）によって拡張されて、無料で利用できる視覚的な TrueType ヒンティング ツール「[VTT](https://learn.microsoft.com/en-us/typography/tools/vtt/)（Visual TrueType）」になりました。

2001 年に、「FontLab 4.0」で Python のサポートが追加され、数年後、「RoboFog」チームは「RoboFab」と呼ばれる Python ライブラリを作成しました。これにより、RoboFog 用に作成された実行スクリプトを「FontLab」内で実行できるようになりました。

これらのアプリはすべて商用であり、主に Mac OS または Windows 上で実行できました。

1990 年代の後半、ユスト・ファン・ロッスムは、「[fontTools/TTX](https://fonttools.readthedocs.io/en/latest/ttx.html)」を作成しました。これは、純粋な Python で書かれた、オープンソースの OpenType フォント用解析および操作ツールキットです。

2000 年代の初頭に、元 Netscape プログラマーのジョージ・ウィリアムズ（George Williams）が、最初のオープン・ソース GUI フォント・エディターである「FontForge」（当初は別の名前でした）の開発を開始しました。多くの UI アイデアを「FontLab」と「Fontographer」から借用しましたが、しかし、また、多くの独創的なアイデアに加えて、多様なフォント形式とその技術的側面に対する驚くほど完全なサポートも含まれていました。 Python のサポートも含まれています。

1990 年代後半からは、デイヴィド・ターナー（David Turner）とヴェルナー・レンベルク（Werner Lemberg）が、オープン・ソースのフォント・ラスター化ライブラリである「FreeType」を開発していました。

また、2000 年代初頭に、Adobe 社は C および Python ベースのツールキットである [AFDKO](https://github.com/adobe-type-tools/afdko/)（Adobe Font Development Kit for OpenType）を公開しました。これは、CFF（Compact Font Format）形式の OpenType フォントを構築するためにほぼすべての GUI フォント・エディターで使用されてきました。AFDKO は、元々プロプライエタリ（独自専売品）でしたが、現在はいくつかの部分を除いてオープンソースです。

FontLab 社は、Mac OS X および Windows 用の「FontLab Studio 5」を公開しました（2005）。これは、現在出荷されている OpenType フォントの大部分の作成に使用されていた GUI フォント・エディターです。 これには、VTT、Python、AFDKO のサポートに触発された TrueType ヒンティング用の簡略化された UI と、書体デザインと技術的なフォント作業の両方のためのツールが含まれていました。

Adobe も最近、ラスタライゼーションとヒンティング・コードを FreeType プロジェクトに提供し、ヴェルナー・レンベルクは TrueType ヒンティング命令を自動的に作成する非常に有能なツール「ttfautohint」を作成しました。

2000 年代の後半以降、「RoboFog」と「RoboFab」を支援するグループは、タル・レミング（Tal Leming）とフレデリック・バーラエン（Frederik Berlaen）とともに、ソース・フォント・データを記述する XML 言語である UFO（Unified Font Object）、および主に「RoboFab」と「fontTools/TTX」に基づくさまざまなツールに取り組んできました。

この作業の結果、主に Mac OS X 用の、よりクールな UFO ベースのアプリが誕生しました。それは、「Metrics Machine」、「Prepolator」、「Superpolator」、そして最後に「RoboFont」です。「RoboFont」は非常にスリムな Python ベースの GUI フォント・エディターで、「Fontographer」、「RoboFog」、「FontLab」の部分部分からインスピレーションを得たもので、最小限の機能セットを備えつつ、プラグインで無限に拡張できます。「RoboFont」、「Superpolator」、その他の UFO アプリを動かすプラグインや基盤となるライブラリの多くはオープンソースですが、実際のアプリは商用品です。

UFO コミュニティの注目すべきオープンソース・プロジェクトは、エリック・ファン・ブロックラントの「MutatorMath」ライブラリと「designSpace」形式で、どちらもフォント補間と可変フォントの構築に役立っています。このコミュニティからのその他のライブラリには、「defcon」（GUI アプリで UFO ベースのフォント・プロジェクト処理用）、「ufoLib」（UFO ファイル構造の処理用）、そして最近では「fontParts」（古い「RoboFab」の代替）があります。

数年前（2015）、エイドリアン・テタ―（Adrien Tetar）は「[TruFont](https://trufont.github.io/)」の開発に取り組み始めました。「TruFont」は、「defcon」と「RoboFont」に大きく影響を受け、PyQt で書かれたオープン ソース エディターです。しかし、この作業は停滞しています。《※ 2024時点の最新版は 0.6.6 / 2020.09.28》

同じく、数年前（2011）、ドイツの開発者ゲオルグ・サイフェアト（Georg Seifert）が、Mac OS X 用の GUI フォント・エディターである「[Glyphs](https://glyphsapp.com/buy)」の開発を開始しました。これもプラグインによって拡張可能で、非常に人気があります。 Python のサポートも含まれています。《※ Glyphs は Mac 専用商用版です。》

FreeType にはもともと、「FT Layout」と呼ばれる OpenType 整形処理（特定フォントのテキストに機能を適用し、結果として得られる一連のグリフとその位置を取得する）のための最小限の機能がありました。そのコードは Qt および Pango プロジェクトによって採用されて拡張され、その後ソフトウェアエンジニアのベーダッド・エスファボッド（Behdad Esfahbod）によって「HarfBuzz」に変換されました。「HarfBuzz」は現在、多くのアプリやFirefox、Chrome、Android などのプラットフォームで使用されている、機能を完備したオープンソース OpenType レイアウト・ライブラリです。

ベーダッド（現在は Google i18n〔国際化対応〕チームの一員《※ 2010-2019 在籍》）は、fontTools/TTX のメンテナンスも引き継ぎ、多くの貢献者とともに大幅に拡張して、事実上すべての OpenType をサポートしました。

FontLab チームは、しばらくの間 FontLab VI の開発に取り組んできました。これは、macOS および Windows 用の GUI フォント・エディターを全面的に書き直したもので、コミュニティによって作成された多くのコンポーネント (Python、RoboFab、fontTools/TTX、AFDKO、UFO、designSpace、HarfBuzz、FreeType、ttfautohint、MutatorMath）を多用し、FontLab Studio 5、Fontographer、ScanFont、TransType の最も強力な部分も組み合わせています。

Google 国際化チーム（i18n）は、コミュニティによってオープンソース化されたコンポーネントの多くを利用して、Glyphs フォント形式のオープンソース・パーサー（構文解析ツール）である「glyphsLib」と、Glyphs および UFO ファイルから静的または可変 TTF フォントへの変換を可能にする「fontmake」を開発しました。fontTools/TTX パッケージは、フォント・サブセッター、AFDKO の代替として機能する機能コンパイラー (feaLib)、および可変フォントの構築を支援する varLib を含むように拡張されました。

さらには、JavaScript ベースのフォント関連のツールやライブラリ（opentype.js、fontkit、ufo.js、Metapolator など）も続々と登場していますが、それらの開発は C/Python の世界とはやや切り離されているようです。

上記の内容には、おそらくいくつかの重要な部分が書き漏らされているかもしれませんが、それでも何らかの業界知見が得られることを願っています。

https://twardoch.github.io/fontsurgery-tools/ を見てください。多くのオープンソース・ライブラリへのリンクが見つかります。《※ 2024.02 和訳時： 2017.04 時点の内容です。》
