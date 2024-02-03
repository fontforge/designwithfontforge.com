---
published: true
layout: bookpage
weight: 72
category: workflow
title: デーヴァナーガリー文字書体のデザイン
---

*このページに多くのアイデアを提供してくれた Adam Twardoch、Erin McLaughlin、Neelakash Kshetrimayum、Dan Reynolds、Pooja Saxena、Dr Girish Dalvi の各氏に感謝いたします。*

新しい独創的な [デーヴァナーガリー](https://en.wikipedia.org/wiki/Devanagari)[<sub>〔日本語版リンク</sup>〕](https://ja.wikipedia.org/wiki/デーヴァナーガリー) 書体デザインは、新しい独創的なラテン文字の作成手順とよく似た手順に従います。リブレ・フォントの「**リブレ**（自由）」というユニークな利点は、最初の作成者が思いつかなかった新しい目的のためにそのフォントを変更して再利用できることです。たとえば、デーヴァナーガリー文字をデザインし、既存のラテン文字フォントをそれに合わせて調整することなどです。

## デーヴァナーガリー文字のグリフ

デーヴァナーガリー文字のフォントには、以下のような異なる種類のグリフが含まれています。

* 子音字 (36)
* 独立母音字 (28)
* 母音マートラ<sup>※</sup>（vowel maatras）
* 語間隔（word spaces）
* デーヴァナーガリー数字 (10)
* ラテン数字（新書体、あるいは既に書体が存在する場合は純粋なデーヴァナーガリー・テキスト内で機能するように調整された書体）
* ヌクター付加記号（nukta composites = [Nuqta?](https://en.wikipedia.org/wiki/Nuqta)）
* 半字形（half-forms、《訳注：中国語版訳語「半形式」》）
* 結合文字（conjuncts、独自の合字グリフ）
* 異なる長さの「I」母音マートラ
* デーヴァナーガリー文字の句読点、符号、記号類
* ラテン文字の句読点、符号、記号類（新書体、あるいは既に書体が存在する場合はその調整された書体）
* ラテン文字
>> 《※ 訳注： maatras = 異なる母音を表す二次的記号。[参考記事](http://eli.tiss.edu/phases-of-word-reading/)》

こうしたグリフについてやインド語系文字の字形形成エンジンがどのように機能するのかについて、より詳しく学ぶには、以下を参考にしてください。

+ 『ユニコード 第12章、インド語派書体について』[Unicode Chapter 12 on Indian Scripts](http://www.unicode.org/versions/Unicode8.0.0/ch12.pdf) 、
+ （『デーヴァナーガリー文字　ユニコードのページ』[Devanagari Unicode page](http://www.unicode.org/charts/PDF/U0900.pdf)）、並びに、
+ 『デーヴァナーガリー文字のオープンタイプ・フォントを作る』 [Microsoft Devanagari OpenType Font Development page](http://www.microsoft.com/typography/OpenTypeDev/devanagari/intro.htm)

書道を行なうとか、筆記マニュアルを詳しく調べて、筆記文字がどのように機能するのかを学ぶと、どの文字が他のどの文字と構造的に同じになるべきかを理解するのに役立ちます。この [Aksharaya のデーヴァナーガリー文字書法マニュアルからの二頁](https://groups.google.com/d/msg/googlefonts-discuss/XRYMYHZpUVc/_mLQWbr8rp8J) は、ペンの角度や文字のバランスに関する参考情報として利用できます。

## 最初に何をすべきか

デーヴァナーガリー文字とラテン文字書体をデザインする場合、まずデーヴァナーガリー文字の横にラテン文字を描くことが重要です。初期段階では、「主要な」グリフをデザインし、基本的な形状と間隔を通して（ラテン文字では「adhesion」や「videospan」のような文字列で）その書体の個性を確立させます。最も背丈の低い、あるいは高い「文字高さ」のグリフも早い段階でデザインします。

書体の質感と規模の評価するには、たくさんの母音記号が必要です。

インド工科大学ボンベイ校のタイポグラフィー教授であるギリッシュ・ダルヴィ博士は、博士論文の中で次のように述べています。

> この研究の結果から、अ इ ए ख त भ द ध थ ष の 10 文字が残りのデーヴァナーガリー文字の形式的特性をほぼすべて捉えていると推測できます。これらの文字の中で、अ इ ख भ द ध ष の文字は、大部分の文字の特徴を定めるため、最も重要なものです。したがって、最初にこれらの文字をデザインすることをお勧めします。残りの文字はこれらの文字から導き出せるため、デーヴァナーガリー・フォントのデザイン作業は、学生にもタイプデザイナーにとっても簡素化できます。

Erin McLaughlin [^1] は、最初の一歩として次のグリフを提案しています： **पाव ＋ क्मनुफु ＋ भर्सगढ़ ＋ रमों डडु （高さ方向の極大値）＋ यथधःचद … 文字列が続きます** 、そして「Au」母音記号 ＋ [レフ](../ja-JA/Glossary.md#★-repf-レフ)（reph） ＋ [アヌスヴァーラ](../ja-JA/Glossary.md#anusvara-アヌスヴァーラ)（anusvara）の組み合わせに注目するように言いました。「Ma」の字（म）は後世のためにただそこにあります<sup>※</sup>。

> [^1]: Erin McLaughlin：　南アジアの書記体系を専門とする書体デザイナー兼コンサルタント《[参考](https://fonts.adobe.com/designers/erin-mclaughlin)》

>> 《※ 訳注： この文の意味不詳。Maの字が、後世のラテン文字「M」やインド語系文字に繋がっているということ？》

高さの極大値のグリフは、垂直方向の距離と、二つの異なる書記体系の文字を連携させてどのように拡大縮小するかを決定します。Adobe 社では、さまざまな正書法に対応する非常に大規模な書体ファミリーを公開しています。これらは共通の一般的な比率を持つファミリーに分けられます。「ミリアド・プロ Myriad Pro」フォントにはラテン文字、ギリシア文字、キリル文字が含まれていますが、ヘブライ文字、アラビア文字のデザインは**修正された**ラテン文字デザインを含む別のファミリーとしてパッケージ化されています。

次の事例では、Myriad Pro フォントのラテン文字と Myriad フォントのアラビア文字を並べて掲示しています。

<img src="../en-US/images/myriad_pro_vs_arabic.png" />

（Adobe フォント・デザイナーの巧妙な判断に注目してください。「Myriad アラビア文字」フォントに入っているラテン文字の「[キャップ・ハイト](../ja-JA/Glossary.md#cap-height-キャップ・ハイト大文字の高さ)（大文字高さ）」は、「Myriad Pro」フォントに入っているラテン文字の「[エックス・ハイト](../ja-JA/Glossary.md#x-height-エックスハイト小文字の高さ)（小文字高さ）」と同じ高さになっています。）

「ロヒット Lohit」フォントの文字セットでは、一番低いグリフは「フォーム」で、これはベースラインからかなり下にある文字の下に配置されることに注意してください。

（「Vattu」は「レフ reph」の基本字形の下部につく記号の形。詳細は、[Microsoft terminology](https://docs.microsoft.com/en-us/typography/develop/convert-a-devangarai-font-to-unicode-otl)［マイクロソフトの用語］のページを参照してください。）

理想的には、これらは、左側の例のように<sup>※</sup>、垂直方向に重なった結合文字の一番下に付ける必要があります (Lohit フォント例は、完全には垂直方向に整列しませんが、右側にあります<sup>※</sup>)。

>> 《※ 訳注： この部分には何らかの事例が挿入されていたものと推測されますが、リンク先が不明です。》

## 文字間隔の取り組み

ラテン文字フォントのデザインでは、通常、次のような一連の文字間隔検証文字列が必要です。

> HHxHOHOxOO  
> nnXnonoXoo

この例では X が文字間隔の調整を行なっている文字を表しており、ここではこの文字と隣り合う、側面が平らな文字や丸い文字との関係を見ることがその目的です。

つぎの例は、Pa、Va または Da に相当するデーヴァナーガリー文字の場合です。

> पपXपवपवXवव  
> पपXपदपदXदद

プロジェクトを始めたばかりのときは、ストロークの太さ、[カウンター](../ja-JA/Glossary.md#counter-カウンター)の大きさ、間隔の適切なバランスを得るために、ページ全体を 「Pa」文字で埋めることから始めます。

> पपपपपपपपपपपपपपपपपपपपप 

「Pa」文字が適切な「色合い」に整えられたら、次のような他の基本的で一般的な文字を追加し始めます。

> पपपवपपपपपवपववपपव （「va」文字、ランダム配置）  
> पपपापपपपापपाप （「Aa」マートラ、ランダム配置） 
> पपपदपपपपपदपददपपद （「da」文字、ランダム配置）

その後、グリフをさらに追加するために、上記で示した文字間隔検証文字列の使用を開始します。

> पपरपदपदरदद  
> पपकपदपदकदद  
> पपलपदपदलदद  
> पपपीपदपदपीदद

などなど!

画面上と印刷物で下方にスクロールをしながら、あるグリフを別のグリフと較べられるように、このような長いリストでこうした文字列を考察したいと思うでしょう。縦方向の検証を行なうことは、長々とした連続するテキストの行だけを確認するよりもずっと効率的です。その理由は以下のとおりです。

垂直列の字間検証文字列を考察すると、対象の文字の直上直下の行と文字間隔を簡単に比較できます。完全に両端揃えで設定が不適切なテキストの「流れ」を簡単に認識できるのと同じように、一定の間隔の文字列と比較すると、間隔内の白い隙間や暗い部分が見易くなります。

上記の字間検証文字列を使用すると、全く異なる形状を比較できるため、(すべての丸い文字が間隔を開け過ぎたり狭過ぎたりするのではなく)間隔が全体的により均一になります 。

中央の四つのグリフ、Pa/Da/Pa/Da を使用すると、Pa/Da/Pa または Da/Pa/Da だけを見ると、検証済みの文字を二つの三文字の組、すなわち、Pa/Da/Pa または Da/Pa/Da と比較することができます。

<img src="../en-US/images/deva-spacing.png" />

母音字と子音字をいくつか描いて文字間隔を調整したら、作成した文字だけからなる限られた数の単語でき、自分の文字デザインを実際のテキストで検証できるようになります。

## 作業分解図

どの書体デザイン・プロジェクトに於いても、「作業分解図」の概略を作成することはよい考えです。

非常に経験を積んだ人であれば、デーヴァナーガリー書体の最初の細字体（light）と太字体（bold）は凡そ 4〜6 ヶ月でデザイン可能です。

以下は、非常に経験豊富なデザイナーによる、やや単純な「サンセリフ体」の、立体および斜体の九つの太さを持つフォント・ファミリーの作業予定例です。

|週|目標|グリフ数|
|--:|:--|--------:|
|1|7〜10 の主要グリフのデザインを完了します|10|
|2|デザインを調整し、最も背の高いグリフをデザインし、標準体と太字体で高さと太さをラテン文字と一致させ、ttfautohint 機能を使用して画面上のレンダリングを検証します|20|
|3|その文字の母語の読者からのフィードバックをもとに文字の釣り合いを調整します|40|
|4|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|100|
|5|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|200|
|6|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|300|
|7|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|400|
|8|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|500|
|9|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|600|
|10|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|700|
|11|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|800|
|12|母語の読者からのフィードバックを貰い、調整や結合文字を追加します|900|
|13|太字体を作成します|1,800|
|14|母語の読者からのフィードバックに基づく、調整、カーニング、検証|1,800|
|15|極細体や極太体への展開と調整、斜字体の生成と調整|3,600|
|16|展開された書体の調整|3,600|
|17|全フォント字体の全般的な文字間隔、カーニング、検証|3,600|
|18|最終調整|3,600|

利用可能なソースがなく、バイナリ OpenType GPOS/GSUB テーブルのみがあるフォントを使用したい場合があります。そのようなフォントを Adobe FEA 構文<sup>※</sup>に変換できるツールは FontForge を含めていくつかありますが、各ツールの出力は手作業で再加工する必要があります。

>> 《※ 訳注： Adobe FEA syntax = Adobe OpenType Feature File Syntax》

Adobe FDK には、以下のように使用可能な「spot」ツールが含まれています。

```
spot -t GSUB=7 Font.otf > GSUB.fea
```

Noto フォント・プロジェクトには [dump_otl.py](https://github.com/googlei18n/nototools/blob/master/nototools/dump_otl.py) があります。

「Fontlab Studio」および「OpenType Master」の有料アプリケーションにも独自のコンバータがあります。

## 便利な情報源

### はじめに

* [Devanagari &mdash; Linotype](https://www.linotype.com/6896/devanagari.html)『デーヴァナーガリー書体』

### ひらめきやアイデアを見つける場所

〔デーヴァナーガリー書体の〕字形の変化についてのひらめきのために、[Indian Type Foundry](https://www.indiantypefoundry.com/) によるものや、Google Fonts を通じてリリースされたばかりのデーヴァナーガリー・フォントを考察してください。
 
〔デーヴァナーガリー書体の〕実際に使用されているフォントを確認するために、ヒンディー語の「電子ペーパー」新聞サイトで検索するもう一つの良い場所とは：　広告です。そこには通常、より多様なフォントが使われています。 [Jagran 紙](http://epaper.jagran.com) は、非常に広く流通しているインドの電子版新聞です。

Flickr は画像に関するアイデアの優れた情報源でもあります。

* [Nagari Script (Sanskrit & Hindi)](https://www.flickr.com/groups/devanagari-script/) 「ナーガリ文字」
* [devanagari script](https://www.flickr.com/groups/37703106@N00/) 「デーヴァナーガリー文字」
* [Indic & Indian scripts](https://www.flickr.com/groups/indicscripts/) 「インド語派・インド系文字」
* [Devanagari](https://www.flickr.com/photos/pauldhunt/sets/72157603715699186)「デーヴァナーガリー文字」

#### 史料（歴史的文献）

H. M. ランバート著『デーヴァナーガリー文字入門』（オックスフォード大学出版局 1953 年）と、B. S. ナイク著『デーヴァナーガリー文字のタイポグラフィー』（3 巻）（ボンベイ言語総局 1971 年）を手に入れましょう。

さらに、ヨーロッパの 19 世紀活字に関する一般的な情報源で注目に値するものが、少なくとも 2 つあります。それは、英国製の活字書体とドイツ製の活字書体（主にライプツィヒの）です。 これらの〔デーヴァナーガリー文字の〕活字は、ヒンディー語のテキストよりもサンスクリット語のテキストの組版に多く使用されました。

インドの活字鋳造工場の 19 世紀と 20 世紀のテキスト活字書体のサンプルも探してみてください。ご推察のとおり、これらの活字書体は欧風化が余り進んでいません。19 世紀ヨーロッパのアカデミックなサンスクリット文字には、20 世紀のインドの活版印刷にはまったく見られないような正常でないことが起こっています。これらのインドの資料を西側の図書館で見つけるのはおそらくより一層困難ですが、多分エリン・マクラフリンはより多くの手がかりを持っています。
たとえば、マシュー・カーターの 1970 年代の Linotype Devanagari（ライノタイプ・デーヴァナーガリー）は、ニルナヤ・サーガル鋳造所の書体をベースにしています。この鋳造所の活字とボンベイ活字鋳造所の例は、いくつかの欧州の大学や国立図書館で入手できるはずです。また、Monotype（モノタイプ）の Devanagari（デーヴァナーガリー）と Linotype Devanagari（同じ名前が付いただけの 1935 年のオリジナル版ではなく、1970 年代の版と 1980/90 年代の改訂版）も検討する価値があります。

オランダの Typefounders (Charles Enschede、Harry Carter 1978) にはデーヴァナーガリー書体はありません。 間違っても、1818 年のマニュアル<sup>※</sup>にあるボドニの書体を見ないでください。
>> 《※ 訳注： 18 世紀イタリアの印刷工・書体デザイナー Giambattista Bodoni（ジャンバッティスタ・ボドニ、1740-1813）の著作『Manuale tipografico（1818年）』〔英語版 「Manual of Typography」〕》

H. Berthold AG 社が製造したドイツ製のデーヴァナーガリー書体の一部は、Reichsdruckerei（ベルリン、1924 年）発行の『東洋と西洋のアルファベットと文字』（p. 45-47）で見ることができます。

### 記事

* Sarang Kulkarni 氏の著作 [「Issues with Devanagari Display Type (PDF)」](http://www.typoday.in/2013/spk_papers13/sarang-kulkarni-typographyday2013.pdf) （デーヴァナーガリー表示活字の問題点）2013
* Yashodeep Gholap 氏の著作 [Designing a Devanāgarī text font for newspaper use  (PDF)](http://www.typoday.in/2012/spk_papers/yashodeep-gholap-typographyday2012.pdf)「新聞表記用デーヴァナーガリー文字フォントの作成」 2012
* Vaibhav Singh　氏のレディング大学 MATD（MA Typeface Design）学位論文 [Devanagari in multi-script typography](http://issuu.com/typefacedesign/docs/vaibhav_singh_dissertation) 「複数書体中のデーヴァナーガリー文字」

### ロヒット 2 デーヴァナーガリー・フォント

ロヒット２デーヴァナーガリー・フォントは、そのグリフと OpenType Layout のコードを用いることによって、新しい OFL（オープン・フォント・ライセンス）フォントの基礎として利用できます。このフォントは、[original FontForge sources](https://github.com/pravins/lohit2/tree/master/devanagari) や、[UFO zip download](https://github.com/frank-trampe/lohit2/archive/master.zip) から入手可能です。

### OpenType Layout について

* [Microsoft Devanagari OpenType Font Development page](http://www.microsoft.com/typography/OpenTypeDev/devanagari/intro.htm) 「マイクロソフト社デーヴァナーガリー OpenType フォント開発のページ」

### デーヴァナーガリー書体の詳細について

* [TDIL Devanagari Script Grammar (PDF)](http://www.tdil-dc.in/tdildcMain/articles/82170Devanagari%20Script%20Behaviour%20for%20Hindi%20%20ver%201.4.10.pdf)<sup>※</sup> 「TDIL (インド言語技術開発) のデーヴァナーガリー文法」　《※ リンク応答なし》
* [Two pages from Aksharaya's Devanagari Calligraphy Manual](https://groups.google.com/d/msg/googlefontdirectory-discuss/XRYMYHZpUVc/_mLQWbr8rp8J)<sup>※</sup> 「Aksharaya のデーヴァナーガリー書道マニュアル」から 2 ページ。ペンの角度や文字の比率の参考として使用できます。　《※ リンク応答なし》
* インド工科大学ボンベイ校 IDC（米国のマサチューセッツ工科大学メディアラボ相当）のギリッシュ・ダルヴィ教授（上述）は次の記事 [Devanagari Anatomy article (PDF)](https://web.archive.org/web/20130913220315/http://www.idc.iitb.ac.in/resources/dt-jan-2009/Anatomy%20of%20Devanagari.pdf) を発行しています。「デーヴァナーガリー文字の構造分析」2009

デーヴァナーガリー文字に馴染みがない場合は、ラテン文字とは異なる伝統的なカリグラフィー・ペン圧の強弱を認識することが重要です。以下の動画では、ストローク角度と、伝統的なカーブの太さの出し方を簡単に実演しています。
ラテン文字の一部を切り取って貼り付けるよりも、このような太さの原則に従って曲線を描いた方が、作成するデーヴァナーガリー文字のデザインは、「ラテン文字化」されているように見えなくなり、一層自然になるでしょう。

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/_P-Ty512SyA?rel=0" frameborder="0" allowfullscreen></iframe>

[デーヴァナーガリー文字の Unicode ページ](http://www.unicode.org/charts/PDF/U0900.pdf) には基本文字が表示されますが、結合文字は表示されません。

### 検証ツール

>> 《訳注： 以下の記述は 2015年頃の内容に基づいている可能性があります。各ソフトウェアの最新アップデートの内容を確認してください。》

Adobe 社のレイアウトデザインソフト「InDesign」による非ヨーロッパ文字用の OpenType フォントのサポートは、Creative Cloud でのみ信頼でき、[the World Ready Composer 段落オプションを有効にする](http://blogs.adobe.com/vikrant/2012/05/indesign-cs6-indic-support-and-preferences/)<sup>※</sup> 必要があります 《※ リンク応答なし》。最新バージョンで改善できる可能性はあります。
無償の [harfbuzz](https://freedesktop.org/wiki/Software/HarfBuzz/) と Microsoft OpenType の実装はほとんど完了しており、そのため Windows と Mac OS X の両方では、最新版の Chrome、Firefox、Microsoft Word で作成した自分のフォントを検証でし、文字形状の不具合が、OSの描画エンジンではなくフォント字体に起因していることを確認できるはずです。 

[Pablo Impallari 氏のデーヴァナーガリー文字テスト・ページ](http://www.impallari.com/testing/index-devanagari.php)（[ソース・コードはGitHub に](https://github.com/impallari/font-testing-page/)あります!）には既製のテスト・レイアウトがいくつか用意されており、OTF または TTF をページに直接ドラッグ・アンド・ドロップするだけです。

[Pooja Saxena の Type Tools](https://anexasajoop.github.io/devanagari-type-tools)（[ソース・コードは GitHub に](https://github.com/anexasajoop/devanagari-type-tools)あります！）は、文字の組み合わせの検証用テキストを生成します。

[Adhesion Text Devanagari](http://www.adhesiontext.com/devanagari/) は、Miguel Sousa 氏によって作成されたツールの特別バージョンで、すでに作成したグリフで記述できる単語のみで作られたダミーのテキストを作成します。作成したグリフ（अआईईउऊ など）を挿入すると、検証に使用できる単語候補がいくつか表示されます。

アルゼンチンの書体デザイン会社「Huerta Tipografica」の [Devanaguide](http://devanaguide.huertatipografica.com/) は、さまざまなデーヴァナーガリー・フォントを表示および比較するためのオープン・ソース・ツールです。また、入力したテキストをすべてのフォントで同時にプレビューすることもできます。「**Devanaguide**」には、
デヴァナガイドには、検証テキストの作成に役立つ[デーヴァナーガリー語の語彙リスト](https://github.com/andrestelex/devanaguide/blob/master/deva-dictionary.txt)も含まれています。


### その他のリンク


[Books & References for Devanagari typography Projects](http://dsquare.in/devft/en/books.php)<sup>※</sup> （デーヴァナーガリー・タイポグラフィー・プロジェクトの書籍と参考資料）は、ほとんどのプロジェクトの研究要件の大部分を満たす情報源のリストです。インド工科大学ボンベイ校 IDC（米国のマサチューセッツ工科大学メディアラボ相当）のギリッシュ・ダルヴィ教授 編纂。 《※ リンク応答なし》

### ディスカッション・フォーラム

Typophile（「フォント愛好家」）

* [Adobe Devanagari](http://typophile.com/node/95460)　《※ メンバー限定、パスワードが必要》

Google Fonts Directory Discuss（グーグル・フォント・グループ）　《※ 以下、すべてリンク応答なし》

* [A note on conventions for the placement of shoulder line, descenders, ascenders and so forth in relation to the latin?](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/TaX0NKHket4)
* [Starting from Lohit2](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/VAhs5MnjZ30) and [pdf](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/_3gtTalzKUQ)
* [Adobe Glyph Lists](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/q8CQHVxVZ0Y)
* [rVocalic and rrVocalic](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/eYmmBQENBb8)
* [Devanagari Character Priorities](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/7dtNw8wwJzI)

