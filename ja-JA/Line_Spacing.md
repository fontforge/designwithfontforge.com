---
published: true
layout: bookpage
weight: 39
category: workflow
title: 行間
---

単語間のスペースと「n」と「o」の文字セットが完了したら、行間隔の検討を始めることができます。しかし、行間隔の完全で最終的な決定は、大文字と句読点が完成するまでは、できません。

## 意識して行間を考える

文字や単語のスペース同様に、行間隔のスペースも大き過ぎたり小さ過ぎたりすると、実際の使用時にフォントがぎこちなく見えます。何にも増して、適切な行間隔のバランスを見つけることは、それについて意識的に考えるかどうか、最終的な決定を下すまでにさまざまな選択肢を評価するかどうかの問題です。

一般に、ほとんどの新人フォント・デザイナーはフォントの行間が狭すぎるという間違いを犯す傾向があるため、確信が持てず迷っている場合は、大抵スペースを追加すると上手く行くでしょう。

また、行間を考慮する際に、現在作成しているプロジェクトがどの言語まで対応するのかを考える必要があります。もしアクセント記号を持たない文字だけでフォントの行間隔テストを行なっていると、アクセント記号を付ける場所のない狭い行間値に設定してしまいがちです。そのフォントが、アクセント記号のある文字を絶対に用いないことが確かであれば、それもでも構いません。しかしながら、そのフォントが、アクセント記号付きのテキスト用に設定される可能性はゼロではありません。その場合、行間が狭すぎると、ある行のアクセント記号がすぐ上の行の文字の下部と重なり、読者にはテキストの読み取りが（不可能ではないにしても）し難くなります。

フォントの行間隔がアクセント記号付き文字に対して適切であるかどうかをテストするには、いくつかの言語のサンプル・テキストを使用することです。

<img src="../en-US/images/Selection_043.png" alt="" height="100" width="472">

<img src="../en-US/images/Selection_044_1.png" alt="" height="96" width="481">

[発音区別符号](../ja-JA/Glossary.md#diacritics-発音区別符号)が多量に使用される言語 (チェコ語など) では、行間隔を発音区分記号を使用しない言語よりも広くする必要があります。上記の例では、チェコ語（上）と英語（下）をかなり広い同じ行間隔で表示しています。

## FontForge でフォントの行間隔を試す

FontForge では、「フォント情報」ウィンドウ内からフォント・プロジェクトの行間隔を設定および調整できます。このウィンドウを開くには、**エレメント・メニュー** から **フォント情報** を選択し、次に **一般情報** のタブをクリックします。FontForge が 「高さ（Ascent）」と「深さ（Descent）」に設定した値に注意してください。この二つの数値を手動で既に変更していない限り、この数値は、二つを足し合わせると、すぐ下の行に記「されている「[EM の大きさ](../ja-JA/Glossary.md#em-エム)（Em Size）」の値と等しくなるはずです。

<img src="../en-US/images/fontinfo-generl.png" alt="">

では、**OS/2** タブに切り替えてください。ほとんどすべてのコンピューターでは、フォントの行間隔は、このタブの **メトリクス** 見出しの欄で入力する「高さ Ascent」と「深さ Descent」の値で決まります。

<img src="../en-US/images/ascents-descents.png" alt="">

この「高さ／深さ」の値には次の三つがあります：　「Win 高さ／深さ」、「組版上（Typo）の高さ／深さ」、「HHead<sup>※</sup> の高さ／深さ」。これらの「高さ（Ascent）」には、すべて**一般情報のタブ**のところで指定した「高さ値」を入力してください。同様に「深さ（Descent）」にも、すべて**一般情報のタブ**で指定した「深さ値」を入力しますが、ひとつだけ重要な例外事項があります。それは「組版上（Typo）の深さ」値が **マイナス**（負）になることです。数字自体はそのままに、数字の先頭にマイナス記号をつけます。最後に、「オフセットを指定」のチェック欄をすべて外します。

>> 《※ 訳註：　FontForge 日本語版の「メトリクス」ウィンドウでは「hhea の高さ／深さ」との表記になっていますが、原文では「HHea<u>d</u> の高さ／深さ」。

ここでの設定は、作業の開始点として妥当なところでしょう。設定した行間隔からフォントのテストを始め、見た目に心地よくなるまで徐々に調整していきます。

もし行間が狭すぎると思われる場合で、しかも垂直方向のメトリクスを広げたくない（あるいは広げられない）ときには、グリフ自体を縮小して、行間のスペースを増やすこともできます。