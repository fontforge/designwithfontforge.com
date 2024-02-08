---
published: true
layout: bookpage
weight: 69
category: Appendices
title: FontForge に問題が発生したら
---

FontForge は GitHub で開発されています。問題点やエラー、改善のためのアイデアを協議するために、FontForge のチームは GitHub の「Issues」タブを使用しています。提示された問題に対して誰かが解決策を開発し、それを「**プル・リクエスト**」の形で提案するのです。

GitHub の詳細については、「[Git と GitHub の学習リソース](https://help.github.com/articles/good-resources-for-learning-git-and-github/)」を参照してください。

## サポート料金を支払う

驚くかもしれませんが、問題が発生した場合には FontForge のサポートに料金を支払うことは可能であり、推奨されます。

FontForge と同じような総合的な機能を持つ他のフォント編集ソフトウェアが数百米ドルもするのであれば、私達のそれぞれが最も厄介なバグを修正してもらうために FontForge 開発者に同程度の金額を支払えば、FontForge はますます優れたものになるでしょう。

[FreedomSponsors](https://freedomsponsors.org/project/220/) は、気に掛かる問題をタイムリーに解決する FontForge 開発者に料金を支払うための透明性の高いシステムを提供します<sup>※</sup>。
>> 《※ 訳注： このサイトが 2024 現在稼働中かどうか不明》

1. 変更したい内容を記述した「FontForge Issue」を作成します (以下を参照)。 この「issue」ページの URL をクリップボードにコピーします。
2. FreedomSponsors にアクセスし、先程コピーした URL を使用して、この問題のスポンサー（資金援助者）になります。
3. 再び「issue」ページに戻り、FreedomSponsors の問題ページへのリンクを付けてコメント（この問題の解決に向けて報奨金を提供する旨の個人的なメモ）を追記します。

## バグを報告する

1. [FontForge GitHub Issue Tracker](https://github.com/fontforge/fontforge/issues) にアクセスし、GitHub にサインインします (まだアカウントを持っていない場合は、アカウントを作成した後になります)。
2. 「Issue」の検索ボックスで同様の問題があるかどうかを検索し、あなたが直面している問題がすでに報告されているかどうかを確認してください。すでに報告があり、あなたの問題と関連しているが全く同じであるとは言えないときには、その問題についてご自身の見解を添えてコメントしてください。
3. まだ報告されていない場合は、新しい「Issue」（問題報告）を作成してください。緑色の「New Issue」（新規問題）ボタンをクリックし、質問内容、その問題を引き起こした状況・操作、あるいは改善のためのアイデアを記述します。

以下のような、詳細な関連情報も含めてください。

* 使用しているオペレーティング・システムとそのバージョン 
* 使用している FontForge のバージョンとその入手先 
* **問題を引き起こすまでに、何が起こるか、を段階ごとに** 
* **どのようなエラー・メッセージが表示されたか** および
* **あなたが期待する動作**

スクリーンショットや他の画像を、「Issue」ページにドラッグ＆ドロップして、直接貼り付けることができます。

問題を簡単に報告する方法は、解決したい事象が発生するときに、画面の動きを録画し、それにナレーションを入れて YouTube にアプロードしたあと、そのビデオへのリンクを「Issue」に報告する事です。

問題を再現するために、あなたが作業中のファイルを開発者のコミュニティーと共有できると助かります。もし問題を再現するのに必要なものだけを含む小さなファイルを作成できる場合は、fontforge のリポジトリをフォークしてそれらのファイルを [/tests/fonts](https://github.com/fontforge/fontforge/tree/master/tests/fonts) に追加し、プル・リクエストを送信してください。また、自分の Web サイトやファイル共有サービス (MegaUpload、DropBox、Google Drive など) にファイルを一時的に置くこともできます。最後に、ファイルを公開したくない場合は、あなたにコンタクトできる電子メール・アドレスをFontForge 開発者に伝えて、そのファイルのプライベート・コピー（非公開の複製）を作成できるようにすることも可能です。

他の人の「Issues」は「クローズ（close）」にしないでください。問題が満足に閉じられた場合は、問題を閉じるように依頼してください。問題が提示者の満足するように解決されている場合は、その人に問題の「クローズ」を依頼してください。

## クラッシュを報告する方法

クラッシュを報告するのも他の種類のバグを報告するのも、新機能や質問を報告する場合と手順は同じです。FontForge の開発者に適切なクラッシュ・レポートを送信することは、開発者が全利用者のためにプログラムの安定性を大きく向上させるのに本当に役立ちます。こうした問題を報告するのに尻込みしないでください。報告がなされないクラッシュは、修正される見込みがはるかに低いクラッシュなのです。

もし FontForge が使用中にクラッシュするのであれば、上記のように「問題報告 Issue」を作成してください。クラッシュを引き起こしている特定のフォント・ファイル（SFD、UFO、OTF、TTF など）があれば、 それを自分で新しい GitHub のリポジトリーに (あるいは Dropbox や別のプラットフォームに) アップロードしてそのリンクを記載するか、開発者に電子メールであなたへの連絡を依頼し、個別に非公開でそのファイル・コピーを手渡すこともできます。

あなたの説明内容に基づいて、FontForge ソフトウェアの開発者はそのクラッシュ事象の再現を試みます。上手く再現できれば、プログラムのどこで問題が発生したのかを突き止め、問題の修正が行なえます。 

「問題報告 Issue」に対応した「プル・リクエスト」がマージされる（修正内容がプログラムに反映される）と、それ以降の新バージョンを入手する必要があります。それには次のいずれかを行ないます。

* 最新版の GitHub ソース・コードから再コンパイルする（詳しくは「[FontForge をインストールする](../ja-JA/Installing_Fontforge.md)」を参照してください。） 
* 「デイリービルド（毎日更新版）」があるかを確認する（しばしば、[Mac OS X](http://fontforge.github.io/en-US/downloads/mac/) では公開されています）、または 
* 次期公式版の公開まで待つ（しばしば、数週間以内）

### クラッシュ・レポート（問題報告）のお手本

開発者が、何が問題なのかを見つけ出し、その修正方法を**実際に**理解できるように、もう少し報告内容に手を加えて、「**バックトレース backtrace**」を作成してみましょう。バックトレースには、プログラムの動作停止場所に辿り着くために、どのプログラム関数が他のどの関数を呼び出したかのかを示すリストが含まれています。バックトレースが関数の行番号も含んでいる場合、最も役に立ちます。

「バックトレース」を作成するには、「**デバッグ情報　debugging information**」を含めて、プログラム・ソースからインストールする必要がある場合があります。`type` と `nm` コマンド使用して、fontforge バイナリへのパスとステータスを見つけます。たとえば、

```sh
$ type -all fontforge;
fontforge is /usr/bin/fontforge
$ nm /usr/bin/fontforge;
nm: /usr/bin/fontforge: no symbols
```

この例では `no symbols`（シンボルが表示されない）となっているため、デバッグ情報を含めるようにインストールを更新する必要があります。

#### Fedora への「デバッグ情報」機能のインストール
>> 《訳注： この項は Linux 版に関連した記述です。》

Linux Fedora 版では、FontForge の「デバッグ情報」を簡単にインストールするコマンドを標準リポジトリで提供しています。（【注意】依存する debuginfo パッケージの多くがまだインストールされていない場合、次の処理で数百メガバイトのダウンロードが必要になる可能性があります。）　これをインストールするには、次のコマンドを実行します。

```sh
debuginfo-install fontforge;
```

<!--TODO: Explain how to include debug information from compiled sources-->

バックトレースは、〔UNIX/Linux 系の標準デバッガである〕「GNU プロジェクト・デバッガ」（`gdb`）を使用して生成されます。すでに実行中の FontForge に「gdb」をアタッチすることも、「gdb」セッション自体の中で FontForge を起動することもできます。後者の例を次に示します。

```
$ gdb fontforge;
GNU gdb (GDB) Fedora (7.3.50.20110722-16.fc16)
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-redhat-linux-gnu".
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>...
Reading symbols from /usr/local/bin/fontforge...done.
```

次に、「run」コマンドを使用してデバッガを実行すると、FontForge が画面上に開きます。

```
(gdb) run
Starting program: /usr/local/bin/fontforge 
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
Copyright (c) 2000-2012 by George Williams.
 Executable based on sources from 14:57 GMT 31-Jul-2012-ML-TtfDb-D.
 Library based on sources from 14:57 GMT 31-Jul-2012.
```
ここからは、FontForge を通常の方法で使用できますが、FontForge に発生する可能性のある問題を効率的に捕捉して報告できるという利点がこの方法にはあります。

「gdb」内で FontForge を実行する場合の大きな違いのひとつは、どのようにクラッシュが明らかになるかという点です。「gdb」なしの場合、FontForge がクラッシュするとコンピュータのスクリーンから消えてしまいます。「gdb」内で FontForge を実行していると、クラッシュした FontForge はウィンドウもユーザー・インターフェースもともに開いたままなのです。

もしインターフェイスが応答していないことがわかった場合は、「gdbを実行したターミナルに戻ると、テキストに「`SIGSEGV`」のような文字があり、続いて「`(gdb)`」プロンプトが表示されているかもしれません。「`(gdb)`」プロンプトが表示されている場合は、FontForge は既に動作していません。

ここで（ようやく！）「`bt`」コマンドを実行して「バックトレース」情報を取得し、次に「gdb」の「`quit`」コマンドで「gdb」から抜け出してクラッシュした FontForge を閉じます。以下に例を示します。

```
Program received signal SIGSEGV, Segmentation fault. 
0x00007ffff74a7c01 in ?? () from /lib/x86_64-linux-gnu/libc.so.

(gdb) bt
#0  0x00007ffff74a7c01 in ?? () from /lib/x86_64-linux-gnu/libc.so.6
#1  0x00007ffff6389a80 in copy (str=0x900000008) at memory.c:82
#2  0x00007ffff7a4aeb5 in KCD_AutoKernAClass (kcd=kcd@entry=0xe80c40, index=2, is_first=is_first@entry=1)
    at kernclass.c:236
#3  0x00007ffff7a51405 in KCD_FinishEdit (g=0xeb0fe0, r=1, c=, wasnew=1) at kernclass.c:2020
#4  0x00007ffff5effe2d in GME_SetValue (gme=gme@entry=0xeb0fe0, g=0xe94760) at gmatrixedit.c:988
#5  0x00007ffff5f00554 in GME_FinishEdit (gme=0xeb0fe0) at gmatrixedit.c:997
#6  0x00007ffff5f01c1a in GMatrixEditGet (g=g@entry=0xeb0fe0, rows=rows@entry=0x7fffffffcf78)
    at gmatrixedit.c:2214
#7  0x00007ffff7a4ea3c in KCD_Expose (event=0x7fffffffd1e0, pixmap=0x83ae00, kcd=0xe80c40)
    at kernclass.c:1446
#8  kcd_e_h (gw=0x83ae00, event=0x7fffffffd1e0) at kernclass.c:1762
#9  0x00007ffff5eabe8f in _GWidget_Container_eh (gw=gw@entry=0xe7f040, event=event@entry=0x7fffffffd1e0)
    at gcontainer.c:269
#10 0x00007ffff5eac385 in _GWidget_TopLevel_eh (event=0x7fffffffd1e0, gw=0xe7f040) at gcontainer.c:734
#11 _GWidget_TopLevel_eh (gw=0xe7f040, event=0x7fffffffd1e0) at gcontainer.c:606
#12 0x00007ffff5ef86ce in GXDrawRequestExpose (gw=0xe7f040, rect=0xef72b0, doclear=)
    at gxdraw.c:2687
#13 0x00007ffff5eea075 in gtextfield_focus (g=0xef72a0, event=0x7fffffffd2e0) at gtextfield.c:1888
#14 0x00007ffff5eaa857 in _GWidget_IndicateFocusGadget (g=0xe94760, mf=mf@entry=mf_normal)
    at gcontainer.c:143
#15 0x00007ffff5eaac97 in GWidgetIndicateFocusGadget (g=) at gcontainer.c:155
#16 0x00007ffff5f02b1e in GME_StrSmallEdit (event=0x7fffffffd670, str=0xe10e60 "A", gme=0xeb0fe0)
    at gmatrixedit.c:890
#17 GMatrixEdit_StartSubGadgets (gme=gme@entry=0xeb0fe0, r=1, c=c@entry=0, event=event@entry=0x7fffffffd670)
    at gmatrixedit.c:1472
#18 0x00007ffff5f03d69 in GMatrixEdit_MouseEvent (event=0x7fffffffd670, gme=0xeb0fe0) at gmatrixedit.c:1499
#19 matrixeditsub_e_h (gw=, event=0x7fffffffd670) at gmatrixedit.c:1735
#20 0x00007ffff5eabd98 in _GWidget_Container_eh (gw=0xeeb2e0, event=0x7fffffffd670) at gcontainer.c:393
#21 0x00007ffff5ef6555 in dispatchEvent (gdisp=gdisp@entry=0x769a50, event=event@entry=0x7fffffffd9b0)
    at gxdraw.c:3475
#22 0x00007ffff5ef7d1e in GXDrawEventLoop (gd=0x769a50) at gxdraw.c:3574
#23 0x00007ffff7ad353a in fontforge_main (argc=, argv=) at startui.c:1196
#24 0x00007ffff736676d in __libc_start_main () from /lib/x86_64-linux-gnu/libc.so.6
#25 0x00000000004006e1 in _start ()
(gdb) quit
A debugging session is active.

       Inferior 1 [process 19196] will be killed.

Quit anyway? (y or n) y
```

開発者は、このバックトレース例では、FontForge が「`copy()`」関数内でクラッシュしたことを確認できます。「`copy()`」関数は、それ自身が「`KCD_AutoKernAClass`」関数から呼び出されていました。バックトレースは、これらの呼び出しが行なわれた正確な行をソフトウェア開発者に伝え、また、「`copy()`」関数に渡されたパラメーターが無効 (範囲外) であったというヒントを利用して、コードの何が間違っていたのかを解明します。
