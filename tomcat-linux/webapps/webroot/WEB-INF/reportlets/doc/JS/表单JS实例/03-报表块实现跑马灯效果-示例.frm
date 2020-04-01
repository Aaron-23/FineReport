<?xml version="1.0" encoding="UTF-8"?>
<Form xmlVersion="20170720" releaseVersion="10.0.0">
<TableDataMap>
<TableData name="ds1" class="com.fr.data.impl.DBTableData">
<Parameters/>
<Attributes maxMemRowCount="-1"/>
<Connection class="com.fr.data.impl.NameDatabaseConnection">
<DatabaseName>
<![CDATA[FRDemo]]></DatabaseName>
</Connection>
<Query>
<![CDATA[SELECT * FROM 销量]]></Query>
<PageQuery>
<![CDATA[]]></PageQuery>
</TableData>
</TableDataMap>
<FormMobileAttr>
<FormMobileAttr refresh="false" isUseHTML="false" isMobileOnly="false" isAdaptivePropertyAutoMatch="false" appearRefresh="false" promptWhenLeaveWithoutSubmit="false"/>
</FormMobileAttr>
<Parameters/>
<Layout class="com.fr.form.ui.container.WBorderLayout">
<WidgetName name="form"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Center class="com.fr.form.ui.container.WFitLayout">
<WidgetName name="body"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WAbsoluteBodyLayout">
<WidgetName name="body"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="label2"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[示例三：冻结标题行，跑马灯示例]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="364" y="344" width="408" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="label1"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[示例二：有插件，不冻结标题行，跑马灯示例]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="635" y="30" width="408" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.Label">
<WidgetName name="label0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<widgetValue>
<O>
<![CDATA[示例一：无插件，不冻结标题行，跑马灯示例]]></O>
</widgetValue>
<LabelAttr verticalcenter="true" textalign="0" autoline="true"/>
<FRFont name="SimSun" style="0" size="72"/>
<border style="0" color="-723724"/>
</InnerWidget>
<BoundsAttr x="80" y="30" width="408" height="21"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<Listener event="afterinit">
<JavaScript class="com.fr.js.JavaScriptImpl">
<Parameters/>
<Content>
<![CDATA[setTimeout(function() {
$("div[widgetname=REPORT2]A").find("#frozen-center").css('overflow-x', 'hidden'); 
$("div[widgetname=REPORT2]A").find("#frozen-center").css('overflow-y', 'hidden');
$("div[widgetname=REPORT2]A").find("#frozen-north").css('overflow-x', 'hidden');
$("div[widgetname=REPORT2]A").find("#frozen-north").css('overflow-y', 'hidden');
$("div[widgetname=REPORT2]A").find(".reportContent").css('overflow-y', 'hidden');
$("div[widgetname=REPORT2]A").find(".reportContent").css('overflow-x', 'hidden');
}, 100);
window.flag = true;
setTimeout(function() {
$("#frozen-center").mouseover(function() {
window.flag = false;
})
//鼠标悬停，滚动停止 
$("#frozen-center").mouseleave(function() {
window.flag = true;
})
//鼠标离开，继续滚动 
var old = -1;
var interval = setInterval(function() {
if (window.flag) {
currentpos = $("div[widgetname=REPORT2]A").find("#frozen-center")[0]A.scrollTop;
if (currentpos == old) {
$("div[widgetname=REPORT2]A").find("#frozen-center")[0]A.scrollTop = 0;
} else {
old = currentpos;
$("div[widgetname=REPORT2]A").find("#frozen-center")[0]A.scrollTop = currentpos + 1.5;
}
}
}, 25);
//以25ms的速度每次滚动3.5PX 
}, 1000)
]]></Content>
</JavaScript>
</Listener>
<WidgetName name="report2"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report2"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR F="0" T="0"/>
<FR/>
<HC/>
<FC/>
<UPFCR COLUMN="false" ROW="true"/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[地区]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[销售员]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[产品类型]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O>
<![CDATA[产品]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="0">
<O>
<![CDATA[销量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="地区"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销售员"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品类型"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
<WorkSheetAttr/>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m<j7_;chOo![=C=QrdI-Wu.DY1:.+*:a:N:9W;N+<-4Y]A$AR3-#3D"7J/CU*e@*lY$[0/_63
u-S`Z'`h)?Pa2,Zl`,TEG[BPZn24$':5[Er->MVcq13Hg''qoohUb0P`oMXL6AmXn>n6m<E$
f`c^n8^,d&7K?\cC]Am'JdK?[lB@!5oW@5do&+5TV\#D6mna8>?)ocO'OL,p1gLD\ue@rp@jm
s.!Pq8N,E]ABl:gI<p>bJ)8?$Pp^@8"3m_pGm@YorSSdTipNYpS]A[T)_V&5l@p@)nM\3.I=oZ
!Cn+rl%pU7d5LH?ltW;CYf6#oZ=#M\h+fju"ga7Z>D'\c%P%[,1<.J)"6"+o,Q]A@9ut,[lJ0
)JD'/W<iIM\S+GeD9u+<+9-r@h4A9t?s>B8h+cX7-iPGCoF2+hI3kE(>)5Kl`6(.s]A-nuFH)
>0qo+/kO3uiASIrM8QpsrjsNf]Ab-djd(b7<OH>peO&(L&OTQ>1u17^CaRP:CVuiQnRTl-3ZQ
f0qV\\$f/@l51))KKBH-3,JU2Q^t3tlq\L>l1V'qh.s).]AGfZJO$</nKmj5]Al8dsU@O56?%c
JseigI6Q)[m]A4^O.3pa3DZYt;sQ/^bJS2bYANe?K6dF7\[U"Y'+C[.5"TFaSB\@PqoRWc1d=
]Al8=!*h"9N'm?u3VSgN14`0`,I3\,MRT#B?G@ajHRUqAs;_M*A!)XZPYe&r#a8n3)cmOk":C
8f4:YQ0u1^OO,lU>uRWbAT1@V3=:-.!$dJj/N0-]A2m=)[/TJo@?I[W,=3U1<`J#`$V8QEPC#
P?foT%^N5ueH1cQ_P5<Nip.&_=B36W#ohf1/]A7a+Z-P^=BQEEZN*+bDnbKOL@2O_?VjaV1M*
Y)^Vj=)r-/HmFsR\$XKT7X3YO@fQ2_B4CinM=&rPrh[*>">@sA=m^R5,(Gf=UbD^S]A\cmgBQ
68\@/OJ<D%;DkgPA^j5`1Sb$981CtaSa8H:u0%fKXW]ATL=Ql9q-Hr@hSUPP;4`,mdbSsbr4C
ldF1Y_kSU>>rS0ZqB]Am_*#@]AWPj$6Du8$Y?J`e=]Af=nYb6I#*1*Kp*N*SYcn;-?6>.j=(4Td
Y90K.J6"?Z5l4G"`085H%'/H#2,cgfk?.$?gfE-8fcFMiS<%p]A$rP(=m(!Gj;[aUMYFn@<b#
em$GpM[j")l_THa;'e@FZh/XOB<*798slUbXUs!s6l1QIUjjQo<&K"-uEY\JcpcaD08WPm[I
q_a4Q_im+VZ+G0.tb$h4h"qhffEmL8@i+lA1q^@)P/Qah9Wgr4.B)Sme644!iY:4<OQM]Ak<<
57R_/LVb5:,8b0X^E]AhR3J;MQ0#47!hl7gHM0$"4Haa*gK'iqFRfSM5+;;6fC&V]A[6sh4n(N
@#_7[/`I#e@9Z0TrfnC%.j7hs=_hD@WFg>puD'<Y\grodNu274a6a(@8/;#f-t-91+hX\7JF
?:#\e%\jL?;+3!>fRI6-Lau4aehl;-hBF3`>kpIqVoUf]A*El=L4VjeUmIEjPpufhrVY5PF/C
0:EYH),J>4/oPO(]AUtTpY]ANR[070]Ao:mV,km,4-:-qjLEEd^DYUd&1On'ZqB`U9(\A\4heQs
o)DBrjaqN.NdnCN$?BuH]A&R.BnJn6S+nRHm(?@c%j2.^&^>Au0/=cVE.e@t-)Z?9OF1_3=K*
=]Ak@p1/iod%t3d;Z1<5d65mm3W?Uq5>(U%iAPjl&0ST-]AkaTRI;414W/Ac[FFuYE?l3r?/=*
#_"!R@5Ns-Lk($lDk(#=Y.<5MIAGIrnOiOH:=En*$9kH_/-:1",a+5.V;@o5I*kFdmo3o!<^
&)@:C/AB5Q_>Pic`p_n+"_GLYX5pkCA*5)am-k"u,o#Kj`C,hi*ch]AG]A"&)e2K+%c6(i%V34
H2Q6T#)2DM['*(gg\)[\uU,VH4Hhjrie;B0'hb4IMI#[rDITMlu\mba`L1Q?6;&N)Q=qH'ZU
B[Q&)FaT$:gp6]AhQ>hd9]AWVtqD7Ja=/(X`2Q.d7]Aa3kh2?f"Q)W>N@sk/&,RAs!QiF+Tou>[
Fk9JaN2&kY%l4n;]AjOe;;4jsM'AJBg^IGIS\/iS0K[?-^kaGP9`QbL8X5?S=V*%*.3<mNI9V
<j;r?SZ/Y8V=hi+\I@i$S`%mE>e5,7ONqHJOOn*O3KAI7=d;bfoV$SUnUPDeseq"@\g`Vb*o
C)>QBc>cW`;JmqbZ8YeB(OS$[%=MYFo8Vi>KQ.t'L(;%V/\I/@^qCC_R-1ikpfMDn[NMe@QF
Iri:80.DFUOEcO*=&8lTT49SZa)VfVH_rHem0@NmSemX3=P*kb[`.\%P54#'Z"5(ZHd#I.)I
Ldd20!Fh==`o%)3&ot)Ke[Cd1inANZ9G/'+Tj>Kf"j-ajMl=1[B<H2e=5Un&Dq<Y5'=)%9-3
9BiLG12cG^(M1j`q<o?7no&X0N_#&O*`37M&V*s`7;L5R'p<!+^Gf@9g)@`$a(6517hZK_PE
c:3"pk4i1F5@1%+oc/m-+;/`%Cp*U"qC(f4Ee1G)s%c[@XVCRVI;d/XG\JYX8dWEp2H*7G$*
;K$f=9.n+Yg-!?VZSfp$D@A7\(%(!c<ZaBDQ-_]AWGU>u3EYd7,C<\afoTo^q%N.ViP%+':&#
X_s6O92#3@BB*Y=.1['aEtLMhg%l8(.gENA2McKYit2pq]Ap0YnQ;XH*:.QKS@%8hia`?Fj:+
q<UMk]A^_Xl>o4NFK$I<F8Qu^t^'_t1@;#&hAqS^6Hi!J`Obb)RgT>D6G[r%E_B.ioXqL\>.r
R8<S>XA-Tp%aehJU0T3JN`UQ=[JII/?\HOicq0FEcLQ$lP7adBSrPqF!E1B#?*7Dn@:/*3GF
f@b4.@*=&nlBilGcuCEb5_M:Se=@j2"IQ@k*VDD9(bR4:CikLc.V!?QWMCgfUpiGjU--uK-&
lfoq7P9e%=s#1gu7?Nm,*^92Y@/"-Am==)OK3W@+G31029T=S+Wc[X\:b:<Tro&tohHBg=@h
_`qA2pOC,,@6Dea2*dhD?GEX*Zk$OH:192OPp:%WQfikn=6QEnV$Dm6>gg[<'im6usl`H8n"
sa0k(]A6t+n!GDddA%h.RV)V4nHm-Q/+m/Gh]AI%[jaVMHZ+*Pqngl:A>?jmS0+*-JO(;.3<S?
Z]AYmjigf(fX0$Xd%@rMJ$\V"VQs%NUph$';d5NE7FW>=<$LcDL.T;Y9+k\uL96nr'eg5L^!*
+r]Ari@%n^NMKDQ`"8(U&M2.!bBFc<.K:V+-`ZnGIU3?FLAb#<FKTp.dV!^G)&G@a\n/o$?dp
6jR-c=%899j/tOTYE<Mdnj1AJWtBkn`5efTY#?2VBecl7R\#)g.Qol`)8`*u/K?ZT):qe.ln
eM`<JiKrF3rkT@^Y.2eA.:K?eLl?pi_I/&rQaX&^\Qh&Vf!Ik#7(U4n"tI>!8Tm'DZr^T<S]A
!ZsY49.]Aa:fBh^W$TQ;7X@jgbNRL![kk?'PQUc*EF*O1pX5$9=/IT:[KQ[*+1Z%`qKB,>j`X
YhDWSr8_b6J!4'I>p"&pd(VP'WV[]A\co[&NjecV1:qIQ=jnKJeE`q.Tld#/^V>TpFbi,IMeC
i(e#i>r9!apKG$R]AsW9Nil#/6*`[&0l5F\4+2C,Tuf[n2BHIZM&i@Dn?`ekrR1&9-1F/E0mN
@D>!c^FK@GiHml3kf@S8&:g@Q8o(iG>``DuR4_YW24]AB>@^G9H:3dL+*!i8*1DX*iME5th&s
d93n:m&nrh'WnTefoBoc;Q:!o_P8$>hl8mRG[AYL4;\)*)qO:`A0t>6h*3Xg1*?_B0G&/B8[
p_Rq7lC'.*N5'@-;g!5e0dnb-)3o]AlgYP+5HO&"7"/>A@`9XVlV`*IAT5j)rV]AIOYlJ1;L%>
eVK>@Pl@3[3\Mser'j3hBUeAgi^">!C<>ubs^m.Rl[kN2Md`8]AX_'eN'H8OjVp7_h)`u!@!q
SmKV*&;l".7q)\/[SX\6\\olr.n]A8^;+WaW7]A[&Vb@bVh(%`uE=0/'L";Q;OL4Hrn8T94C]A$
/WDe0?\=<r%r8c!Bgu7J2'"HKO'5uZ+I[[E9]A<oE),PI>c(X"cl"'!q8?+,00%eQ,BA@h7[r
_]ArfI=Utl2+n,pKcUn@cVG#[`#>?\r4Gt1>3kC02(Zh5/esrs)co#n#P/Y9,!JeDt;5I%:s`
tR`BNOV/c1QZD.o(c%M-V9PEZbm)Un2^RmtsMKgDLJRI`n$0\D,8e6mB)eBq"4KU-*$]AO`p!
S//YPgP>T&oYF6`:1uu]A#h4/0s]A/(s$!)(oV#u"A#XYcZ.>BObNN_XIZ`]AuA!4X>@j=K$QfU
THR[fbZYXNXGeJ$PuWM%duI3$aU.6QuId82'!8m"X3;ISu>-H\Ms!lt'.,g5+tfQ-mDO'cI1
>:huNs8M]A3K-iCcOV,Io\Z%9ZmcX9'JC:ZP%a(g;8u_VZE_O%:%[doCN'Nc6.r0M^f3C)N%d
9uLMa?T`),@RP/L;9g7VZ"i.NL<=$UJ-s%Rhrn/MX"50On(T6WK'sd%L;0"qq+?Z&S#_5`aI
7FWW8/'__=EZDSu7c!Zj]A^q+bF]Ad[==@_\E)3@D43.4%K.Q'l2a3W>%-$ui=q"ZZhI<Hdrm#
%0+eW9TPN';V16R0oG*+%p&SN2QKH(+%j'jeWfJ_!ig&d<*TY?,tk9K&Sro($L^pN+]A!9l,H
]A9o`Em"_HST0$XA+)OX9-U4Dd3<7G:$[Pap;!3T[)_qs4%fKTB4u_h,cZT`DbdI9S.YQfE!*
ajP!m&kr:a9Z87p1h)PJ'&Ms$h-c]A`jjk@V_g*PZ88lk/=X4keCYLB2aa=;<[Q'gJ@0'oDUe
9SIrahYiatVYOWM&r!PVY-uldkWCZ=Vr2:P.Vf->"d)QKBme8q[M)TW+,3?.?%OH;^TiKD&O
NSP^(PMqS[4.iHS$^#7,%<2=bK>*l0V"@GnekJ-XC'H*K]A@hKFk&.F6m@HA5$1f6(qn9n+Ml
/oGMh3mLmpJu_ufC3V]A6U%g*Ma!:5`h.E>$UeJp&$jq@GH@6OPV/g[ie1@SP;,s)#"7$C^`k
;LNXnQLe#di"Mm4KOaq3::5@?7Gkm`f(4TrL5V8Anb)s`+G<e%pO&d+*ZZ<f<hi&_k)"g>o^
S's)=?RaiNCS;G,I__u^`b7E2eC1TSLpic=X]A5cm;jCk=%3grSQ!<?!LRj_B53c[crtUm7YN
+Zl)B*"#'-&uTZBc&P+n;G1E[q#RqD8L4+Yq#g#O%r@\Mn-\'i'![2k9AS#PjGBC:\b>B:?<
;NJ`tcH)APn*6ZCWQ$@'I^=mt`3\IOBlPD=X3l$&,WDheNdW3!TCTRnOkX&rAW9&9a.Xm=R8
5<kndZfrj!CIsC_HcNWq<"&2D*a5(M2"=3TG"Z]AKj;@SRbCZ+AuX=kQs(BT`Zl3TM_:AU!Hc
`^0%R=N.RdME?rH6G<ZN*;Bs8kedWl.Q=04]AL`j[Qf+S3DLf%<n[Q_ihf2DsOuWG:4"BFLkZ
Wnler`'keQ5FB'),bI<LYI**31B<sN?+%)1S_PG?[l3.R"Vo^@[RS#;A+=tQjWD$FpR]ARn`Y
4A7I03;Xrk)p78&ZhjpVQ53@_X^_/]A02KY$4NNKML/cY3->#q63rt2p+\`oFT13UV7ODr+Mh
c2$EIpH&>I+Xrbu%Y&-4`mTLn'dCaR9MW_/HCIq4HVoCJGI<k>,@%K:mP,#8hM>9"XfudfdN
Mf,F')L$Emo"c'?/5PcL+oTQT,ri[B_c[U1(%/D&f8rfojP]A8.&3JVbsq`hmJBS6!>tb6.>N
J8KWf4!#@DVJSGsd"j3rgc0W42M%D!Z(CW&UXmu<D?=l"I+dG;h6P4#iOQZ>7`%7Os)DGuqO
<%_L<7bjV_>.\)$s#e/HVPHtr^k:OP$J4g_)*Ga[2]AC#C)h-]Ai<<]AfJESMk+^9`V'#&cY!W`
uql,tQS%h'i`sC?[l57I+Q8YOAhT1Roa)HHI^.7dN]A/^B^RM(KYW?S0j*^MRr3F\L.#*1@R^
u_5#8@T5/EB)%jH5_dZYZM]A,[X4.^b2\ht#2VXu3jX7b41B-gaZiY;2aiA?1t%>I5DZc.u>p
m,36nC>C7BqI0&0p6.,s"s-*%ia$,Kuhd505U'WMn$C7p)/N/cY8$?s)E/\hM&oF"+hWK*WG
U0dZ_F$()!2g)eL]Aj<5\,l+5u)'#&]AhE/,)]A?1Za)@^2sU"@P_Y#>W`9`@[f\S,3aP$?Lg:U
cW"\<@?hdK43Ut8EMq\G-qt"MLZnbhn2Or.kVH^C2AKN<L*p4G8Bhssbg,+:0Uj3%8$h6>;L
cVBpoC['mZj]AmL7&Fc$?L@`c!\u7+lDKo>AFsQTRK!B:D:_',EhX\D8oc(qZIbT,u8Lb,,3(
f3'b;X#Re$\XYK^5oq7_,fsV]Aa"]AY4e-l&Fs`GZmKoXATO8.0HW9-X@f>S8E%p?t]A"?d!c"T
Y7m?1Z2=>)3sqtpf/l\$C7SRJW/CRdp6KWTbj!17d",ZS:r.NPW<T;/N+d;;*Cu-:-N)J1-=
U"Kh*oi\X@bGA[lS9dj!:uH-[`,ZP&[S-6mS6s/$S/%1l2HAR>t%.G:*mJV*!BUm[ED7+k;L
,X[FWN5P\>Knb(#lktSM,Pmfp1njq\84:)Fl0lD^/1R'1C2r<>RtY3+]A^u^mKgX%,5cCs5Ml
AIl@3Ci6SeXCe5Z8hsWT'f42+Vm#PllJZ6J9TrR88*a+#i\e]A!+E5kCohUL0n?erWSM[_L+r
%+j)NooO*K]A_.D_p2Ap0g,_&OC-O_k;L#scF`IUQD#.!rd*<Sk9,`N!gaq1q05.S/=f$;#MZ
$s^4rYEAR!35-Zj7*b[SNfPTDkumsVWP'n4Vr8h3h5qsl:Q4]A!O>H^ZS9FE1;J_)76rPA,/C
Y'E#pfnhS54-72uBl&dN^c=7HZ7/uiCI-fmQ?*7'G&3Z4R7>:K,?/nDc7<aK_=U8Yr9!=8rK
j@Xq!?\R_C!fEMg[S%gRCW(Yt/1A5sd^CNRO?$f?ot(l<;08]A$3`!VEqYq+f]A'Za_:R)C(^j
7cK[(RsN7-?15M$PlqY=#J?HVnml'FAmU=p2G=fiOb]AiJhjn68O8`aigXMco<#i%RfZ;9HNS
9GU^!sqrr1VP\3G-#%tj9@7Z[3rE6F/O=Qp*i>PUYbAY;j%GAGc+4Op]A*;4f(VMC7"]Af0%YA
e\P0%dhh5U<FmT/`SDrn^>sL7:]A$^.tN9d3[>V^3%aZOF1lE\kF!^HF["$L3Eh5iOe_`kbJo
a5/phl?D.bOUbjjNYS8:DqA:$'"LBoe^"m#$^Bq@$PRR[3N=g=oH2<;nd?flB@iBc5[iuWFH
.1<6S+L)d,Lk[:M+_EQ+H!F&j,WQ(h1.9=bY?6RRds?9:Ca_`2+ntn<Sp*_s&aQLd:MH7$AD
%=2/<&fZlDV5I?89Z\HIA>Q$'W;N+1N#rL2DDoCWs+Z)F,?R1dD*_HJ0c#@%qe25U0eM"J]A.
ebhDSdN?"S:,AgZBjWNDSZ@81*J^ne::T-1T;'Kq?N)s]A/d*oSJRhk\OYSE8Q*CGDP0&%OPC
V(NeH@KgHHaGE"ccL8?-dK)u%s!oAnCdbRAmsD7XT/<QFj2=jp!-eCA;m92:eC>P$gcq&LmG
CZL?^'.B0Mu!=2@]ApJ$f==A:m;u:B);<$X&YDPcoATg+1K2.0%g-8pg&-2osPV>%`B2)q6lb
1Nh>Ak05uWY(p$2/n?E^fs::s>:%U"-.B=q[''U!?;>'uJRNrX%S-SVP$RY,0FTE&Lsk[I4d
d[=r;2"O-=5EAAjK=r[$Wi3gV:SLQ=!5Yn4O&D8,q%?3Q1/aA,eC=n-`-:'?Eg=%#p2)T.n7
#IWpc=*72(c\R`rEAZ(?`Yg2acO.jR`P=^LR0*7a'%`+tgs"AsT8H/"tG8(9nKY_Vf&700#=
*<^ecupY@DhquNLHs1A&:EZ'-1*.n<Q:&q:Or=b%ehTr4;&?Uq?]A<A4n&S>!::LM@Q-UBeNu
/^KC_,MZ3`o^%MJH%511)ogMo(ALtQke14Z9L1K?a[q[)NFPCepe:S-J3IX8([F2)X\jjuR$
%9WI>qaj&ZXLJ<$Q^N=d+\rVANkEcGCkj:WV@TXfn)fis@CB=8hiO2M0gX\JFJ6>-d5%pfTs
*-C[b@@<Sl.TR!^*&Eo4KVC4$O$:LlT(f'jAc,BGtt@:PP49PKD/`<fUdl_FF:EBhPg]A,ERd
f@ltVOKN1(fVOd#=5df:j/TC#_D0$6:i]An;b/0l%#KKTX'l(3udZ3/blc[1Mp<huY72,B8)A
.AnWJ5p:0%)9oW"X3*;IlUK+\r1op1:2Le;k=&b[cYi^dP<jdd(RasqQdA0#i/]Ag&=C`]Ak]An
=InZD23OmFPFrP,m;CZ6j+S+`G2H?&=a^cF-M^81Me_6<k1C5bed,43_sVt2:F+)8<BW8S^=
\]AWb?DTKq+K8b]At,q$N*Y<VqdG=V%qi_0:M0_bB-/UgCKb&V,U5IT/g@YN/h0WgWsXZ/OBer
\0(WWA.''&Od\N+C0an^8in4SW;[B00@IF;k*)5:BM@_%PUo<rLps3eCjJd'Rs9+LP0`1*#m
(qF3JRC)eJ_6=SdXRqAM\P=`,>_q7B+2-D6T6:h"<K;UQ8MjW_AmZG\/SccFdD?k<u]AM"r3:
&W/Al8:c)oPsasbj[jMhT>+*W:(qJOq6;Hf@1%lGNmB4c?YS*2U@_`o;K*F4(G=`A,<[M1mJ
LZ1SFU4Fp+5YTW*L":rcDeRP7WIao1DT5T&"F&0*,74jp\0CA;"p^eUJ.?c9#U\*Y@!bJ`XN
,Y6!kafnMi!10m@49J%8`6`*bi*/*H\Nsd%QNU[\>l*?,6RDH@$4qK[EJ)QR1;a%]A,NMK7aH
6EcrdH0Z+PhuBJQ6U^AomX20nSJLr?^3<JLehP>K8'mJ4)qA0\i(Sh&.&#^TbR.m:D)GZM*^
>JNrV,h=tmH4$,Y+56~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="250" height="150"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[地区]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[销售员]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[产品类型]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O>
<![CDATA[产品]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="0">
<O>
<![CDATA[销量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="地区"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销售员"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品类型"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
<WorkSheetAttr/>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9+4,;eNPI1QQ%l<,8\37jY(2:YWq--+,.W5Vfcj]AL:_;oGkdL;6cd%5`?luP!,qL[KT7))A
Fmq(,FB37$%tjA?8D1>TsK3&43B/Oq8a@FqV*uhV[!`6e-#!_i12dW/!UufpD/3hg3ndf"9N
4qEMla:&Etcrc-A^8^g]Aks*2ea8\[V?9mWMr`BW9^I\tD/R5F.1bDM@II$.@VY795-hgXY=L
;#6.*S36rrLi#>iLK.7pL3`ocahKu`:69A5JOJo1Z'''ekCBEVWcG/jm,8a<X`/XfWTeHb?s
*^cu&15QlSdQ7V3s^/^&f@kEnSr.>j.)8BknS8I]AT(.f>Al)[Vf4-X[/L^MBKJ1WCN^KNejj
P`oG9,Dt;+%j"t@".u4H;37oK7!N4o8B,d!Z@Gk==Y3<$0t,nF4?)\`7.9@V<XXg1>VGoI0B
H%B@l[K?P%/@Y09P*uLJo=I0"*;UE@UhfZH<<<TuOlplP)jR_rO7BnYEIRo4RX=!8\FWrH7$
M&Te0.UiM^J<]A:f;a0[9]A@l)%$hDr^4T^11l;?ZAXA*;u;Pk)t)GZO38P.b.8N%`gmU>AG2&
HE&C2cT"u%9Q_/_P:!<9c[;8i31t+i;#h-<rSM/.BW*\ihl$rWkB,6k"=6f0AV2*gJ0(2:XM
YS]Aj4YRMNhDI@UDmo/J"Sj*F[(fqo0/r+)YHOHMMea$%jUmKf$6Xf2EC\&pb@/<)iOO<4rVA
KGqIc.c2O0>u+G"T_@mZU(Gc+K8gW'cJa9)U=a(jPB12dM6GFMad_,9RTqCq.`Jj98luBUXh
4+WDr*W;$gDFFD9]A2B`rEMkY:lcWb86b&WU&^fg%&1J0CFMJ<=Q#&,o?_.H*a#^JdP-(<mcF
!#X;&)]AY7;IC*Jp?6BQRD`ti0JD_:[T&n#Q04L8C2n!"i/bZMq=VMMck=V&9]APm4Z$2!c:93
k]AP@m_4p9aO@X.d0R:eUuC;_N\)FMmRhH8'e%ZC80AP/Z@M@0GR-OFf;.t6A$^#8qu(cuO``
!nJuLj\14T$1h"7(;<KQ4Xm55+fcQ-n>9e>uKYQh!V5h79L".V^0q^&$e6-/#<F\!_RVk9:6
)]Ap\JREEXPDJ\-,9F9o\-C@oKD#o9n?nrcbE-nG0GU9ERaR(:c'(,oIEt9RI4+G<I8"rj7bB
laR4,Wgc_f$#*e(g!R8s;mHZOm^bN=?C>AZ5?`6H]A6<AlcdJ_.)c=YNOLZ%dkKkdCo;ciVIX
W@uH*<[qu2(447up^FKrSqc.?h2j%,Ia1(taS-gb9GkdmL-e&5+E"^E:gB'7/)D<$:*M5'-i
^<)(c)eJH!EIh_`mj?Rb;_B$eE/HqAD%so),bj_YWi`FrZ]A`:ZZ:7I1!XJp)?I2.ZNnZTgnk
,=KoI8gkRaU"p$"K''qs<O4;-kB;!XA/kLL)lGpOq^=Ka<[@^+M9Yg2l=F32MKIJ[`I).B??
FrKkV=4?O-BHY3@MEUt&hC02*$<Xh+DuP1l8mC^F%b4%h+\Q/8?6>Ej3&0>Ylh/G@MC*9-&V
9."d[%KLR@Tg\+t;-BmN9saD&_6Ym(6lmjHR7qL\jL<X\>_oG3+<aAV?AmPcfZ)1b.uA[6Xt
ak@\"ab(.-Qe?pg_l(K^%mcE>MQV;*gk&Pd[cYQ>QF=_#_X5UA*-dN]A9)>B!^:g&YXj`K7$R
(aG?8@"$GTlbYTWE0*=b]AS"e[9nJL6mIE#pj]A"8prOsgT(IbjVmAlpNlL/+5U',sDOeG':U/
Gr>K]AXJ$t&,$R<C^qg+*6",L&*(nh-#&e)VG.YbTTo-kRlS?2nqZYJ@'"Sl)\S?TEeej6@=e
,]AeP#qpNKRrG?U4;2^oYi)D;oF?Go9[d9`4nX@YZ+PI0HBI7db.YAVa@j+Ena_4\-`1?M_FO
Boi8.l;Sjlo`fWQpPZ<L`*nM#KLK/P!Mfn-4B8d'XWT>%^^lKA^0e,OAm-mnhPZ&8;:69HSS
hJ1b!S2)6H!FEj/LUM\fH4"O^QPBu!Z^1\HbqA747j\o+C35,e7paLD=P2$On]AdD2alWrgu<
`c-ar,hg1&a4<lP,q-FC-JN:dmjcb%Uf_eKkC)8o/*\Ame;o.49&iXXjp7uA!:HrW1]As@(Fm
.VASZ#qdVd%+4"S[&_o]A,tAXM(b0d\(4(HeG%]A?<+OYXJF5rpScA89QPif<rl6'NU!bV/YL;
aXW&A[d'CS.r)))li\MomLk(YaEo$hJPpr9]AGQ&Y:.sJgmf//6]AM:nSQa$cJ0D%]ATP#Mh&fh
YZk=?gl&Z^lDcApeJQ,fgT!$&"a#acd\H%g^l2:SMO$bI?B,]A]AK>m"MI$+[)PtmV44EW\%Da
lU-#9;/Nl;X.t(W<p"!p_Kqo`4L'Ha`=[MKB/s>PUVK"F:-l)Z:4VJdq+CcX0)aMZIJ;kH?$
_:<GRsb3_-W`T2PXb\'o<hTGVUQne`</jV4mr*p^=M3AHuo-CD0C]A`al"rF^p$;fmpNk[Fr*
\:C)dkEHk,$X0B,UbTKD&V!:B[#3H&d#m:JqN%Vq1eH&eBTm9I<nQn@);,c9?LZ]A7?&*+Lah
!o-q8BiKYWMjo_F@,U89o4p$7F0n$(4sSh:ad)]A")g&g>%Zr:&@qf-j@(i(bTk'(//?@A.qI
8OP)$^Zq#MJoTD7bKf$F<`rGSd#,9q.ZDDT\rVb-Q5YUIX+[R9^,_aGA=^6]A[dR\^A]A\8s%O
RG-Z0rTDgt[aLudg()JbTeA3bA>%r(VC1]A=n9b"+S!u3i;_ORm?94:;![ZKZh?+Ob$G(?5[m
l:Ueq#_$@>XEj7>kcAblgPHa(^IbYfN>R$!P^,:&r-&P@8'Mh74`e`X]A*2pqDfjJ($736*Pk
@DIk=clMesNBbHoeA`o+U@=1diER[B3farsLCSX%"\;:0*S9X!2q0ag@nS.5oc]A,t7e9?=8G
ViT@_0T.^'SLHVV:n$I;hM+'k^aKYCX@VZHICgf\djQldkt'6E;b0$OhK"?$A8Kr0G&(E5@0
6tonj-D:=o)@Q<h%)hp9>)J<M@Of_W5<.jD=cJ0F_/0'G`lso?Y&Pq4iYK7lauHN)dd!99p!
J!&D\oRO9>tc8fpLiRP0B&*bbe/'=#6]A_'Z8Bq,KE>SC#5go8B7R*(u-11c,+bF:Z13+/!d?
TVaNTi9(MEI]AaHbgb9B,oNQ"*=_$9,GVVK-8910cGs&8=JR8lp)8\J*20N&&UdK%;L@fA)dJ
/.W(8"<f`clr"^M2qo[S-<VEtkc6jFFhm?1jiN4QLI@_P)Ro.dh'T>I1-e:)>"1Wl9C&Gk=1
=)oj^IY*.)OPA[M9iY_b^0D1Fe3:D$X\nc2/FA9;P?uo11rq>2(7kF7*K'=j?Z>qt'22efgm
MbCP=m@a\uO]AV!TuaRqhub?>m)pqdm`2<<$LD9-0Jm17Xn+H,Q@/W@B[n24k7$VfC7X?hLtS
5823-Ko,9D#OJeCVU:^8)B-`ETQl`(bKCSV31jOU<kG4*f!b]A<?EB'10W:LR4?S-!39URY]AP
=^#OmT;@a]A.QC0/A9,_O1i0,-[)%8JePO`m=W,*ZXua>.Y,4X[Hm.LD3m8J16oKiJcs]A\k,t
J12_al")8/[t4%*J]A!NNVQEpD37-ESF0%ujK!6iu'=ph^uk7K6#@TLQtV<VNTE/<nm@SVC9l
VE1k2a/rA\]AY!tT6*+!43/$@1*7l>(Is[:4nD$%<#^Q"g+hR@]A8jbVBqc0?OLa#eM/(jl`G$
uF'!E[=h+R>o6eBa'iKK,mRLsMW1<qbTeg4WglN2mu.4JK`)nFY`1eGMrYY[$tUeOT0k9OR%
9X"HO-&aZMN%s3'_G);:EQNI.$h$W:SGE@\6K!'>31rj+:6'4pep5XCQSA8qS(^_pMWOWZsW
^)$@g@HMf?05l#Jd@9naECh#52mdt;+VoZFoR@a/$Gqf0Oh*Km[N'a=2"G&1BUNa*`fH3kE_
9E@/]A-RH:5@DUF*,rK.Z?9g)M;inhKdW<"n=c"RF`)3^TQ8,VYUp<$8;3$<-aAG=E*O4I4lO
k<1BP".",pF;GHrHT_fjLT=E_O[mX>_t-lIam+@6<:Mkkab1WqY#MW8qf&3I[.O$HY`$7#S'
Hm6WJ4?59Q84k*@C7t"HFa\Hit53(D3ar`40S7_A"R8$"I%.i"J47X]AB!>7Q&dF]A'4,>TBe+
Wd)1ONh.d!k7O#tX?;X!P6kgc=K!(4EO#T@a$Zk8IrM`'.m-''?ir$]AXe.]AZ:jR!M1M`;ZB5
JIW$>0Y/WfNh@\I8QU"ED'oq_7C#,Q<tm$i2KhaD,&tF?'D3R"@aVp3*hlX#[K4_?6+p,hrf
X[p3?#1_9+Pn[O\LZUsAd6Jn*dT"KF3AcAdQPd+)n)%$0%Q4cNf8`<7iH7;\[sQDMF)=CbL@
Q7)P7e_>cO/C"ZjMa3`OZg'9tRg/LSO,V/!0pG_g>"l_"kPh5=Z"K1SKh6dS]AQjnJNSUkn-C
ro_)F55QeA9"EIH9,K7KT,DY8!S,ML2r,`Q_;H/Cj:eZDW#M!>Qn6H)>"C`%9.['9pUIlaGQ
F0^liA4"I7oTX[*>96rLiZ,[Z_es_2BG<+h"_di4W7Q-np9gfmcTH8F!l%E037p(B'#*iB[2
ZugpdRnum'AUiI4/q5R,Y7.#;GdsO4I8Fo'.AR4$'!X$n-2F^gB;4Kp_+dsDk_fG/"!>&6'-
9tn#XG`=IFq-OhPL5h8%nS(g"SpP%S02"HcM#NC[MKm6nR&FH*8A/>Buu@<#6aTpkr^P/cQ3
$(h`K)1pRbl%b,\!ZP!&8S)peR#$(-1)8;H5"ac%,a05a-p1]ANf@2<dU.nZ+m*)FP&</S*45
:>YW56^@:JaI>Jmp!JN?i$R1"!KW<9^MC1M&X6W#,6%HSrO9I6ua!:)Pa3:'A'p@tI?IP*iK
P<C'@AQ\jc,NnJsC?RQ&ZPsZ^aEU$]A8."jI,2':"[PM5sJU$MH9A,Y@CrCTk).f>C9a;";':
!?[=E_Scp2EUO<5rKC?;)'/ddBG"gl_PsS3_ki95Yu7c]AIBuKR\6Hu4\S]AaN=RsECW1l`kj/
8PAl#@;q?B.GoE;#u-bp%mT*Q8uf.^[2kFe-%d053@L]AoVk:ieft+3MNs);tRD4qXiU+Hn"@
KU2tb/,opM!JdbK0PB?59V+Kt)P19W:Y)M:fBT2+4X]A]AJ5G+TrfO,;)h$BF[isElHl80+@Za
Ia%Llbd2ptVgGB[&T`$G0D3/bUC4;oegneLUeP!@),UpU1-9'Z$lSV`c/<58G;j`6=+bD<Id
K+UQ6.AY]A-4<:fJ1jcK92!k[O`DV5RnA#]At[\8Sn9$!+4V^p6H%oV:V.Qa[0>r)k0,;2[qlc
`\*BFNP]Afh#ZcqH5/gl\F8"/\;CR)J%4^<6;"s#>52JRG_eupnb4po8h=Bp0g40Ka1Urp$S#
hk#_.Us?mE!CUc\3VRf;NE>UbsdNCGHH>pj7k7$T+M&[uuQZ-b8dRXH/'\36EE-Y/khD.P'/
ULDC:GS&f"Yn9T>M_W]A`"\\1$A8Go?1nf8q7p.;I4.1#I2T-<<(`I#+2cc6N8+U(np+Ybdb/
K*q_/[(/*rH6&Wba<+I0R#bFZuZsZ,`3Rco6b!nI)R?*Gi0h#]A_BA[XikC.*7D7%Y;ZhP'h_
e)sE(%p^$b@Mo[2R4[5ET_LYD@7rTi7A"j;S-.S=gC?]AY"jl0q)oqt`8>0WnQ#rG+^5,NN=7
ml)_MhpFC^/$"W8>K#+)IR`S1>NTd5/q?9'nQ16cpbq,M8[e368`:3:Ob_2)(L[$ofO^$r9S
[k^hm=)(#C+R/i&3_jlT;,oD5%41$ID+0njm2J9YM26k`<jAe06"V@rKK%n-n+rIu[6nr-nl
7.?]AG55*=c8Crq1:0/!McUBhC[:4LH*eNemg/>@P"=TjOD.p]A_cBPZ>DQ-.gKnE5iMA4Vn,=
F/sG(=695,OBd[aZMnhn(_l@+I=5jj_QL56E`CV%Lqa3bE>Y$,-m3%K#\%hu!2mP/o9iFmAt
)i[(rWhiD/qZFV#&ELA/acuZk@6BmuVee?lVO_]A7V&2F&dq,R-=N<W[p'+I3f.nu[<o*!dHh
W.'J(@gug]A5VW`fS)kj3mt'\C)TZ`FVT*l'C=pf-*Bte-5ls@B-#hI3/sNeVaeH0#HSNFSYI
9f9Z$g1/.MWhoY^?orso~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false"/>
</body>
</InnerWidget>
<BoundsAttr x="364" y="385" width="408" height="223"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<Listener event="afterinit">
<JavaScript class="com.fr.js.JavaScriptImpl">
<Parameters/>
<Content>
<![CDATA[setTimeout(function() {
	$("div[widgetname=REPORT1]A").find(".scrollDiv").css('overflow-x', 'hidden');
	$("div[widgetname=REPORT1]A").find(".scrollDiv").css('overflow-y', 'hidden');
}, 100);

window.flag = true;
setTimeout(function() {
	$(".scrollDiv").mouseover(function() {
		window.flag = false;
	})
	$(".scrollDiv").mouseleave(function() {
		window.flag = true;
	})
	var old = -1;
	window.interval2 = setInterval(function() {
		if (window.flag) {
			currentpos = $("div[widgetname=REPORT1]A").find(".scrollDiv")[0]A.scrollTop;
			if (currentpos == old) {
				$("div[widgetname=REPORT1]A").find(".scrollDiv")[0]A.scrollTop = 0;
			} else {
				old = currentpos;
				$("div[widgetname=REPORT1]A").find(".scrollDiv")[0]A.scrollTop = currentpos + 1.5;
			}
		}
	}, 25);
}, 1000)]]></Content>
</JavaScript>
</Listener>
<WidgetName name="report1"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report1"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[地区]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[销售员]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[产品类型]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O>
<![CDATA[产品]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="0">
<O>
<![CDATA[销量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="地区"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销售员"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品类型"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
<WorkSheetAttr/>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9=p>'5,n*gS\h2C!4!?n$?=l>IWpI'hkSnX$EuVNHSU(gKTP?dOk_>\Hu,N+dq0[Ze"f4Z7
Q@tafJC:'Ho>r7"chn<)O/b:fNqfP![)Ta@/XeOA'7u#8!nG\drZ6muMYjLZb'ChY4\GGCJ`
Qc?XEu$X7'^r;"4%c^?TP_<7Fps5KP/5=+JV\``hf5:)rS+8_UBcCC.15JR2A0,G\<pMS8\$
CC_OO!g5nX3.RZbC6Jf=k<%V4+=a=kWS147AG?W:F:@:6.BBPSh@_V/+-bfN,dCoC2L^M$U.
`#5.l*gZ8\PJ<BuDP(a%2ad`-65W5f8H\?I]AX!Jm,Y7Tt_gEcmGZSaK_$5K(WXBC%?+6Ce5h
ckdEFF9ROOi>YT#XL']AZmn2Jb,heA`_:T/;O6`g+8!YafMpVFE+*jTYf@!]A3F]AI>_)IH6pYH
NQK^s8TMM:M`f=<MD%<S(r1f#1%I_,M9LZTI$KZM97'2<Kt?r<rB2n3RHrPDe>^$:Q%#^sMU
1dP(,W5c,$%Na#u,W0gh[Iu"1Hm7_;KXLjB6ZRa;d8oodBML+4%M8bOrn[pWO>D&!B\]Auf@#
A,T;W(#@:YI%M4T$:UOG&"R,RX6XdY\ms90J-%T)^ikmJ2%Z4Q:cK+K6M>HA!o!T!8\K8!4b
MOT>f"-"p=g.$JaTs:%BV.#K0cdV=\.95*2*5'?LpM3Vg`tH1?W^EC\IQ#E_X]AgZ$9r=2&>s
PalXUm93u6EA?>kITW4u\u`,=VPtX1b5L@L]Ai\^DBs3(S%Qh+qWTDdQWef3J4cEJT`o.Bhaf
65`]ASpVBn873)oNgHIfaf&nr[83JnF;@#?34+r2=c'RM8=ksJ[^)p=)re+B<lH\]Agd3P6N3o
6jUh:r'Ga"[L(hXhA@;UD`5]AK.fo01IIOQj.&_>V-k"a6hl,!:MM(i.2]Aj_jtOF'U10r3?B0
$4`hS7HjNbQ't=7!p"-T/^l:jqXi^XO4:)%dC4=g*Ktj8"``i!)(TW[adX6`eBC-i``0ai[>
e;^`!O9WUWZ8!Y:7#C8eM1%mb%iAMa61,BcTAF\r?C:S4Bd,1lB::qZkSo69S7Lf@e2Nu0gf
>B%Ge9j-L]AWAfPOb0(:WDaCQ*3LIRUa]A?k:n_&Zg'k0WkhE3`mF_.INhF#/^Z:t'5M<:@ppT
C$B'u_3uci:NJEuFRVIWdhKDMq^fdYBZu=]AC!.!r.5agG-Pn_dpEkdm_pGNSjf3lB/n"+Tr9
?A<_LOa\A8eegQ;%j4\3ok,7R$[=6=+4OZ?@jm_8?rd_C1mB\6J*06"55+ac*Z37_""$C_l1
!-qbdtXq/Vfs_`k"B@[1c[b4`BaP)[k+:Gip94]Abu>T[<DoAIC^CJr9+t/]AME(B.:e>-9ih<
BBPY2d&?;1)@*&':K^uIAk/;"=4jSAH40..ObJ&3?9[81qe!,#R(<F90Y@7@SeLEegHfC/&\
oIX^j:ibu#Nq7nZR)HisFh+f%WUeT"n@X#&#,i\<ARjj[-(NX.O(dYP-]A]A.U%;,="nuFd(rp
b_Amq-.u)^nBEikJ<o:>Jg&8P?o`AHVAKh>HnRK1i(e"c>99_M!l.:t.Vh"YN<_prB,%Q]AlG
+285QZ3g%?:<X&/P2@AqH/uSZu+Cd\=U?PI37qaVq9*KQPDPmI#XlCBFGFb3^nBcu?an6K9N
OWbnqgUh2pJ[pPSR]Ak;O"ukus#;a7#k<qS8&E0,cDiF=!GUcZR-muQ)Q#L>`+rO5CjK&.Qo[
nj/.K&]A?UXf\UDBDtWJo@Y4gkCC&!`(`]A"^'-Y&)?#P5I@.h90SCj5-_2<9u/dK$5;S7[@['
8/\CYD$q[XUg;!;FaWnHdC0([Z`a96#0rKBYnB@g9(LRo+4l!k`T:@,ORCW1AAk-/]A&n<E1p
;`p@(4FndurUE0V1'V2XLDOPtF!>r<C9'I@eBXi$BTdh\i7DAn48!Q$/s>TKik8B"/LY?KER
'C,5FRDJYq3]A)ukl=[1AsB9mY?7`W2p72PD6r]AgcT?-q+F1(#(J%MIQ<e!d?54,:U7&VI7#5
Dl\pWFO:.IiSCL^-OnT1V^.FN&2p8!q.1YL%Vt=N6UEN2q;22s#gGgCsOSgg%@7:"tURGN?$
kD<nJ3b$*,Q/UIS*a]A^1@R)3ECZFmGq8^/;'+>Ykq1bqjZKP$p<PXaK3E&n)GJpY6Gl@i:oQ
[_gE?6^EO$8K=$Lai8XP#Q#:@q,'I`'e<R.l?X]ARI$30JV5#+;Mtehkkq+?s?LBD9jpf'((2
HL.:4pI^70"&9G/40>(b6J[*jKWZfcP+A3;h.6q'g1*nf)-W0d\/PZe)o5Dk3]A#^5+,gg&0^
7aVq!HV<RL$VlO7O'TpqZ1>pB'.R1_qE57."[:'T&ktM?E`t%Yn`f/ss%is,D.adBuHVC,+-
`u>dE<p@=>i%gF-K!uF]A=J;b.#6`SQG"W;bE>>]A2d?u/).H,68*Z66/pVR\;q_>L[l%M?'[7
F';/2D2J^J#M!<I-5Mgho;5BT\Gc6_U!45GN-!M6dn%$?>,@!9,Y"SW5/GM7]AKOqD=V2Fa)!
TGuuLXT*V#<eQJ**mAS83;F^P"<6\$)O8\A2N)*(d'U:,<K8fe#Pd'QQ_/Q!an`1t%lCJ,3q
XX`jqcmf;J\UcJf:GdK<?30lQ>?9LaCKjTTtkQ?)ip&ZI/"UZ7EQ=R=AZ^Wn2H1&esbTr?*M
-7/P`9gl\GAYuckj6iHqiOe]A<3/Z_/sRhqgIq(0Q.+@>,0FKRXL(,WMiD>##r)e5[GHQ:-+`
4\V[jGO?804Z6OQ"m8&6!Y>=/t5QLO&kh:k"SGshd$>tQbf8WaRbB*0q1hY#i&cB[H6OL2Hh
+c!Z='%,c_rcKtIgr\ia16qC?#k<*TJgKB8^*6Iu=?`XM3lo8\s$:YP$Pa4>K-3k=*))._jj
^Om#:LW7so?crLI?]AVlC8tD%.$c"TA6GBooj#;Nsq5rjCF[QK;gH+"J0H2%WB%O$RchX`oRU
.8`]Am/M=X@C9X;?CBhjpI,S:-[0o\6UB":9kEACb]Ah3F]At/%b;*G5<h.DmUHMk;3;]ANRll#+
9^*%bP!8e8RKe%P12N;RcblTCWBF0J^FU7K"WK!60^Sh5c,>N2aLMid"G2N*"NO$)Wd:FoIG
)>-c^*DpS6-?5KC>fOQ3:inhT_`npG::&4U=bHb/=iMK$iX3teNVb`(.;11S[d<KS#N]AEK\+
9gY.-khk;lX,0tO'<<[Y\eH^b`$N:>b>[i[9l?N`@c+.FcSL4RnWVu0_O%YoGF#C/=GeAdKK
9qZY#5s!-fl%$[p0oHlY,p0)Wm)m3YljYid0<Ls6_T!dJ2kI[JU\/C164_LJi5]Ab:mrkc#1[
e0BE[OE=p.)D06ga4WHjLEM6KY+U=LPZ)N.KAGA4(]A3SEY:jI`i\Z%O3d@>[N4kQF>e/!f5g
cR?-J@<5/u-'"h0>2Xd[o%F/(ONqdBc%L1^]A4^@34d-l/mGmitDWK_f@2`h>H`Lj9OaRq\bQ
QJ5#68cuOf5@,['kptqRS,"1\6@XF7s4tZ]AgClMF40elK9+fgTagsXl,ugTeK@HPMN_IIBro
Yp_*XO)B;G80;11(LSHsi`%5U:.<Hto,9b=#4[lN>Dk`c+@JQ]ArJnQWW*m7ks.-MpoY;CVj7
[Sej;`%Z\3+EBZI(\Mf/G)6cgo"]A0!lqqZQf<bZqG5a57RglD(qZf"*DuR-]A_:NTnMQ[!HX&
g#E;2!=BdPb0J)e*a_jO>\h9^*-UXG]A_GH',6#jn?[=(\WWn[RJS$-b(JGHDX*VZrWWhOM5T
B*hWGm[XR;G?_!Eueufld8Mi"m<SoI<Us@WY[_tN&mQk5EBhHUnD,7j=;stSf&I6T8rVD4NR
cD/lQf=^HS\f@.ILDFkA>=<iVVgg'OC*3Bn'(:]ASON"u;uO`tgjj,kb:SF?[$"lV]AX?Ot/]A5
j<*%(hKBa[+R=1@VU&3C59dUtes4EHA#9UNB--c1&_TE)@q$'S&h@Q%Y8Wa1Rom\BV^s2f<2
_PJoL#Ai=*-)!SVNn2s\YlV@m[r;8ka.IKZf<.A[S2=&gfR.l$3'd(6'JpR\2]AssB@',AjIT
O"]ATVHj;qXub'hh)$fXV5-k]AVd8lL%NVQ_pP*IcO@UeO8*R9$IW3;S$7eBLSH&01_?-EfMdf
QG>N5q>'d^GY(eK=OA4oKiR\Tn:N4At>`QN5&6W(N.5:-"GBN5lFEl]A'0n)[N[`AH@?e=8n2
b@-qT"005<CZn@,4\=)&CN%@">'0tLStY'a:3e`CTO?d'HQJ/9oa6o4[\aY;o>f"rfHXno1r
$:c'BCk7I65j2)%`V'Q9!7Rnqb6RjaFDYd9NR9?qshZKZkD0(@g?3oIW7,:+Z_>]AF#lN_0D3
\cA"72UXZ\ko7J#j,)($I>IAZKXYK"Z0>oD)r->)/%Sa8Ze7-m&sQt\B4D7T/^UCN;igcMM_
1&Pr+V^PMf-;Y5XQs"$Urh;[<HpO>Ag4ZD9jW,G6!m9Y;n;>#C99V2VHpBD??4M`Bj:I+:X_
_)r"qm[TT$VHA\dZg^4P\!CtV[O-oWR,IIso^jV-kb;%/i]AuRR1-\o4E!VdQG)j9g%J(V0pG
$g%P[XB?L`jU#&Cmsn!Fl'sF)/ZJ@-)D2=>?tbS,T^SCndHO`e3.'IUOo1%OSl@rNDb7Il0[
o"5[U!/G2,\"_-d7e-Q^;U<qqSQ?'J?GA?G8`U3*jnnD3Gb-Sq%;*?g!!&8Y'lftr8=HF41)
!0[4.o(Y/pc<t_@s&%9W.VlbZWt^1A!l9Z*(KQ<]AQqX-OBJ,!6f,s"-;In>H[IjtHn>q-+8Z
egEFYC^2/&K[$H+me=o[OWgdX=F+!Kt/QJ?uZ<i3+1s9Xop^gNWT\V9t^)F.#DJ0sdp>)u\K
d4D[C/(T)sbJOI)->Bc2:r\XVM;?EAdifOL&Y6D4H1o($Y$6dFf4r*?e_6X1d/Nc915_>FTl
i0>FDag>h]A[LQQ/>ME'm=0^FBp8ZFCJ4plNrmo]AdT_-U>k9sUn,Nh>n!a=6bS0c4rs-,R#G(
kr^6DqhJ\r]AG",q@'S*f5I7WDDc8sHEdb+(;(I=OL]AGiR#-MQ_8ApmN9P>!7JC@e^nHdW4h-
CYA>.$WVmfN`KBD&[6R^b%2sE"S=Gn3ae?joenKVQ^W;`D@8l;*`%gDY(qo`?N&edZd"]A9=d
Sn0.`Z):)FYT.bTj!0\OaLZW((h=Z4SJaI]A/KG<[,OmfoA>]A.4lbXC^h\m`sGeA[F6QYDPpi
*oZk4b/UTD^0c?Afp1iu!&X1,L9P-H,<:Jd!aGik[K(mXE"(TS]ATi<a!k7IKt!.Kem'F"3Z/
ArEU';G']A5)uV=nB-jnLt+EGa9s.j6P;F@l@+?E"]Ab9;_Rg/]AA)>h7:iQ:r"B2[Y9[tRBNEU
\e.XG&HAHft]Ap>Mil\ac(en[:,n-t&&pd5:lba7.,lGi)5:m:*<XckBCQ,RPJP_((bLWRP.m
Eg1<2+2'ljOQrq9dqQ>-<c6Jk:HA+nmBX`d?TAB\[JuC6o0aoJdP1Em3&[&k[[-H+pmG9)-%
E:lr0A;kD$sLZOr[N5KgYWn7$o8S=VL&Ih'(=ofUVe\5JB4CYjjdg:SYn`9l[M93%kB>c:T[
cr`Q7PG+'CIG9e<e`r^;4:7/`F&V`W'FiP<2;_1LmJV+!nn3m\I'4[1;MZ_="e_pUe4I@V8I
ddaje\dD[rJ^1*r*V"+`?TK0f2\BZ^Lmf%'S.N#7N</9qWgK#o9?%4&>1g;e(-gbC,6?jAjj
Y8d[*C>GSQeF%I,=E?Br(qa4McWAEU@&!:m'94;FQ#S*VfJ_e+1\DX`FVb'CtBjrt+3*r]AOL
nHHn9@PdOUa&5IW8p/B'K\=l0Nu-A!0u1N4.SG8=E^#&=o.<]AijH<E[o6[:%J!1=Uc;EDXl0
p?]AP,N,d909:U@eQ]AOTb=-@FrSW'C)&Z$beBTCA]A0''?@6L)VIDE<=A:[+e28F*._52(Q]A%i
,GL"mAP.f@m'CYNO<0LmMW^2XI'K0Q.?t2i1V(eF(&iV685%ingCoS8f9sYarnLp<M(oe,k$
_>;HL73;XUpC4=NT)G4b8L?ZM=gFIR4\u`1'-3Y3HgiXKOhJH6kkH+Y:_2Dr;TN*TE\&Pg:$
L?.c"3.f-VLrq]A<3d/"R8K$I^7g4KhjX,t$B("RZ$8\p<$BUMCA8n+dDsf%7*RrQTfn~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="250" height="150"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[地区]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[销售员]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[产品类型]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O>
<![CDATA[产品]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="0">
<O>
<![CDATA[销量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="地区"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销售员"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品类型"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
<WorkSheetAttr/>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9+4,;eNPI1QQ%l<,8\37jY(2:YWq--+,.W5Vfcj]AL:_;oGkdL;6cd%5`?luP!,qL[KT7))A
Fmq(,FB37$%tjA?8D1>TsK3&43B/Oq8a@FqV*uhV[!`6e-#!_i12dW/!UufpD/3hg3ndf"9N
4qEMla:&Etcrc-A^8^g]Aks*2ea8\[V?9mWMr`BW9^I\tD/R5F.1bDM@II$.@VY795-hgXY=L
;#6.*S36rrLi#>iLK.7pL3`ocahKu`:69A5JOJo1Z'''ekCBEVWcG/jm,8a<X`/XfWTeHb?s
*^cu&15QlSdQ7V3s^/^&f@kEnSr.>j.)8BknS8I]AT(.f>Al)[Vf4-X[/L^MBKJ1WCN^KNejj
P`oG9,Dt;+%j"t@".u4H;37oK7!N4o8B,d!Z@Gk==Y3<$0t,nF4?)\`7.9@V<XXg1>VGoI0B
H%B@l[K?P%/@Y09P*uLJo=I0"*;UE@UhfZH<<<TuOlplP)jR_rO7BnYEIRo4RX=!8\FWrH7$
M&Te0.UiM^J<]A:f;a0[9]A@l)%$hDr^4T^11l;?ZAXA*;u;Pk)t)GZO38P.b.8N%`gmU>AG2&
HE&C2cT"u%9Q_/_P:!<9c[;8i31t+i;#h-<rSM/.BW*\ihl$rWkB,6k"=6f0AV2*gJ0(2:XM
YS]Aj4YRMNhDI@UDmo/J"Sj*F[(fqo0/r+)YHOHMMea$%jUmKf$6Xf2EC\&pb@/<)iOO<4rVA
KGqIc.c2O0>u+G"T_@mZU(Gc+K8gW'cJa9)U=a(jPB12dM6GFMad_,9RTqCq.`Jj98luBUXh
4+WDr*W;$gDFFD9]A2B`rEMkY:lcWb86b&WU&^fg%&1J0CFMJ<=Q#&,o?_.H*a#^JdP-(<mcF
!#X;&)]AY7;IC*Jp?6BQRD`ti0JD_:[T&n#Q04L8C2n!"i/bZMq=VMMck=V&9]APm4Z$2!c:93
k]AP@m_4p9aO@X.d0R:eUuC;_N\)FMmRhH8'e%ZC80AP/Z@M@0GR-OFf;.t6A$^#8qu(cuO``
!nJuLj\14T$1h"7(;<KQ4Xm55+fcQ-n>9e>uKYQh!V5h79L".V^0q^&$e6-/#<F\!_RVk9:6
)]Ap\JREEXPDJ\-,9F9o\-C@oKD#o9n?nrcbE-nG0GU9ERaR(:c'(,oIEt9RI4+G<I8"rj7bB
laR4,Wgc_f$#*e(g!R8s;mHZOm^bN=?C>AZ5?`6H]A6<AlcdJ_.)c=YNOLZ%dkKkdCo;ciVIX
W@uH*<[qu2(447up^FKrSqc.?h2j%,Ia1(taS-gb9GkdmL-e&5+E"^E:gB'7/)D<$:*M5'-i
^<)(c)eJH!EIh_`mj?Rb;_B$eE/HqAD%so),bj_YWi`FrZ]A`:ZZ:7I1!XJp)?I2.ZNnZTgnk
,=KoI8gkRaU"p$"K''qs<O4;-kB;!XA/kLL)lGpOq^=Ka<[@^+M9Yg2l=F32MKIJ[`I).B??
FrKkV=4?O-BHY3@MEUt&hC02*$<Xh+DuP1l8mC^F%b4%h+\Q/8?6>Ej3&0>Ylh/G@MC*9-&V
9."d[%KLR@Tg\+t;-BmN9saD&_6Ym(6lmjHR7qL\jL<X\>_oG3+<aAV?AmPcfZ)1b.uA[6Xt
ak@\"ab(.-Qe?pg_l(K^%mcE>MQV;*gk&Pd[cYQ>QF=_#_X5UA*-dN]A9)>B!^:g&YXj`K7$R
(aG?8@"$GTlbYTWE0*=b]AS"e[9nJL6mIE#pj]A"8prOsgT(IbjVmAlpNlL/+5U',sDOeG':U/
Gr>K]AXJ$t&,$R<C^qg+*6",L&*(nh-#&e)VG.YbTTo-kRlS?2nqZYJ@'"Sl)\S?TEeej6@=e
,]AeP#qpNKRrG?U4;2^oYi)D;oF?Go9[d9`4nX@YZ+PI0HBI7db.YAVa@j+Ena_4\-`1?M_FO
Boi8.l;Sjlo`fWQpPZ<L`*nM#KLK/P!Mfn-4B8d'XWT>%^^lKA^0e,OAm-mnhPZ&8;:69HSS
hJ1b!S2)6H!FEj/LUM\fH4"O^QPBu!Z^1\HbqA747j\o+C35,e7paLD=P2$On]AdD2alWrgu<
`c-ar,hg1&a4<lP,q-FC-JN:dmjcb%Uf_eKkC)8o/*\Ame;o.49&iXXjp7uA!:HrW1]As@(Fm
.VASZ#qdVd%+4"S[&_o]A,tAXM(b0d\(4(HeG%]A?<+OYXJF5rpScA89QPif<rl6'NU!bV/YL;
aXW&A[d'CS.r)))li\MomLk(YaEo$hJPpr9]AGQ&Y:.sJgmf//6]AM:nSQa$cJ0D%]ATP#Mh&fh
YZk=?gl&Z^lDcApeJQ,fgT!$&"a#acd\H%g^l2:SMO$bI?B,]A]AK>m"MI$+[)PtmV44EW\%Da
lU-#9;/Nl;X.t(W<p"!p_Kqo`4L'Ha`=[MKB/s>PUVK"F:-l)Z:4VJdq+CcX0)aMZIJ;kH?$
_:<GRsb3_-W`T2PXb\'o<hTGVUQne`</jV4mr*p^=M3AHuo-CD0C]A`al"rF^p$;fmpNk[Fr*
\:C)dkEHk,$X0B,UbTKD&V!:B[#3H&d#m:JqN%Vq1eH&eBTm9I<nQn@);,c9?LZ]A7?&*+Lah
!o-q8BiKYWMjo_F@,U89o4p$7F0n$(4sSh:ad)]A")g&g>%Zr:&@qf-j@(i(bTk'(//?@A.qI
8OP)$^Zq#MJoTD7bKf$F<`rGSd#,9q.ZDDT\rVb-Q5YUIX+[R9^,_aGA=^6]A[dR\^A]A\8s%O
RG-Z0rTDgt[aLudg()JbTeA3bA>%r(VC1]A=n9b"+S!u3i;_ORm?94:;![ZKZh?+Ob$G(?5[m
l:Ueq#_$@>XEj7>kcAblgPHa(^IbYfN>R$!P^,:&r-&P@8'Mh74`e`X]A*2pqDfjJ($736*Pk
@DIk=clMesNBbHoeA`o+U@=1diER[B3farsLCSX%"\;:0*S9X!2q0ag@nS.5oc]A,t7e9?=8G
ViT@_0T.^'SLHVV:n$I;hM+'k^aKYCX@VZHICgf\djQldkt'6E;b0$OhK"?$A8Kr0G&(E5@0
6tonj-D:=o)@Q<h%)hp9>)J<M@Of_W5<.jD=cJ0F_/0'G`lso?Y&Pq4iYK7lauHN)dd!99p!
J!&D\oRO9>tc8fpLiRP0B&*bbe/'=#6]A_'Z8Bq,KE>SC#5go8B7R*(u-11c,+bF:Z13+/!d?
TVaNTi9(MEI]AaHbgb9B,oNQ"*=_$9,GVVK-8910cGs&8=JR8lp)8\J*20N&&UdK%;L@fA)dJ
/.W(8"<f`clr"^M2qo[S-<VEtkc6jFFhm?1jiN4QLI@_P)Ro.dh'T>I1-e:)>"1Wl9C&Gk=1
=)oj^IY*.)OPA[M9iY_b^0D1Fe3:D$X\nc2/FA9;P?uo11rq>2(7kF7*K'=j?Z>qt'22efgm
MbCP=m@a\uO]AV!TuaRqhub?>m)pqdm`2<<$LD9-0Jm17Xn+H,Q@/W@B[n24k7$VfC7X?hLtS
5823-Ko,9D#OJeCVU:^8)B-`ETQl`(bKCSV31jOU<kG4*f!b]A<?EB'10W:LR4?S-!39URY]AP
=^#OmT;@a]A.QC0/A9,_O1i0,-[)%8JePO`m=W,*ZXua>.Y,4X[Hm.LD3m8J16oKiJcs]A\k,t
J12_al")8/[t4%*J]A!NNVQEpD37-ESF0%ujK!6iu'=ph^uk7K6#@TLQtV<VNTE/<nm@SVC9l
VE1k2a/rA\]AY!tT6*+!43/$@1*7l>(Is[:4nD$%<#^Q"g+hR@]A8jbVBqc0?OLa#eM/(jl`G$
uF'!E[=h+R>o6eBa'iKK,mRLsMW1<qbTeg4WglN2mu.4JK`)nFY`1eGMrYY[$tUeOT0k9OR%
9X"HO-&aZMN%s3'_G);:EQNI.$h$W:SGE@\6K!'>31rj+:6'4pep5XCQSA8qS(^_pMWOWZsW
^)$@g@HMf?05l#Jd@9naECh#52mdt;+VoZFoR@a/$Gqf0Oh*Km[N'a=2"G&1BUNa*`fH3kE_
9E@/]A-RH:5@DUF*,rK.Z?9g)M;inhKdW<"n=c"RF`)3^TQ8,VYUp<$8;3$<-aAG=E*O4I4lO
k<1BP".",pF;GHrHT_fjLT=E_O[mX>_t-lIam+@6<:Mkkab1WqY#MW8qf&3I[.O$HY`$7#S'
Hm6WJ4?59Q84k*@C7t"HFa\Hit53(D3ar`40S7_A"R8$"I%.i"J47X]AB!>7Q&dF]A'4,>TBe+
Wd)1ONh.d!k7O#tX?;X!P6kgc=K!(4EO#T@a$Zk8IrM`'.m-''?ir$]AXe.]AZ:jR!M1M`;ZB5
JIW$>0Y/WfNh@\I8QU"ED'oq_7C#,Q<tm$i2KhaD,&tF?'D3R"@aVp3*hlX#[K4_?6+p,hrf
X[p3?#1_9+Pn[O\LZUsAd6Jn*dT"KF3AcAdQPd+)n)%$0%Q4cNf8`<7iH7;\[sQDMF)=CbL@
Q7)P7e_>cO/C"ZjMa3`OZg'9tRg/LSO,V/!0pG_g>"l_"kPh5=Z"K1SKh6dS]AQjnJNSUkn-C
ro_)F55QeA9"EIH9,K7KT,DY8!S,ML2r,`Q_;H/Cj:eZDW#M!>Qn6H)>"C`%9.['9pUIlaGQ
F0^liA4"I7oTX[*>96rLiZ,[Z_es_2BG<+h"_di4W7Q-np9gfmcTH8F!l%E037p(B'#*iB[2
ZugpdRnum'AUiI4/q5R,Y7.#;GdsO4I8Fo'.AR4$'!X$n-2F^gB;4Kp_+dsDk_fG/"!>&6'-
9tn#XG`=IFq-OhPL5h8%nS(g"SpP%S02"HcM#NC[MKm6nR&FH*8A/>Buu@<#6aTpkr^P/cQ3
$(h`K)1pRbl%b,\!ZP!&8S)peR#$(-1)8;H5"ac%,a05a-p1]ANf@2<dU.nZ+m*)FP&</S*45
:>YW56^@:JaI>Jmp!JN?i$R1"!KW<9^MC1M&X6W#,6%HSrO9I6ua!:)Pa3:'A'p@tI?IP*iK
P<C'@AQ\jc,NnJsC?RQ&ZPsZ^aEU$]A8."jI,2':"[PM5sJU$MH9A,Y@CrCTk).f>C9a;";':
!?[=E_Scp2EUO<5rKC?;)'/ddBG"gl_PsS3_ki95Yu7c]AIBuKR\6Hu4\S]AaN=RsECW1l`kj/
8PAl#@;q?B.GoE;#u-bp%mT*Q8uf.^[2kFe-%d053@L]AoVk:ieft+3MNs);tRD4qXiU+Hn"@
KU2tb/,opM!JdbK0PB?59V+Kt)P19W:Y)M:fBT2+4X]A]AJ5G+TrfO,;)h$BF[isElHl80+@Za
Ia%Llbd2ptVgGB[&T`$G0D3/bUC4;oegneLUeP!@),UpU1-9'Z$lSV`c/<58G;j`6=+bD<Id
K+UQ6.AY]A-4<:fJ1jcK92!k[O`DV5RnA#]At[\8Sn9$!+4V^p6H%oV:V.Qa[0>r)k0,;2[qlc
`\*BFNP]Afh#ZcqH5/gl\F8"/\;CR)J%4^<6;"s#>52JRG_eupnb4po8h=Bp0g40Ka1Urp$S#
hk#_.Us?mE!CUc\3VRf;NE>UbsdNCGHH>pj7k7$T+M&[uuQZ-b8dRXH/'\36EE-Y/khD.P'/
ULDC:GS&f"Yn9T>M_W]A`"\\1$A8Go?1nf8q7p.;I4.1#I2T-<<(`I#+2cc6N8+U(np+Ybdb/
K*q_/[(/*rH6&Wba<+I0R#bFZuZsZ,`3Rco6b!nI)R?*Gi0h#]A_BA[XikC.*7D7%Y;ZhP'h_
e)sE(%p^$b@Mo[2R4[5ET_LYD@7rTi7A"j;S-.S=gC?]AY"jl0q)oqt`8>0WnQ#rG+^5,NN=7
ml)_MhpFC^/$"W8>K#+)IR`S1>NTd5/q?9'nQ16cpbq,M8[e368`:3:Ob_2)(L[$ofO^$r9S
[k^hm=)(#C+R/i&3_jlT;,oD5%41$ID+0njm2J9YM26k`<jAe06"V@rKK%n-n+rIu[6nr-nl
7.?]AG55*=c8Crq1:0/!McUBhC[:4LH*eNemg/>@P"=TjOD.p]A_cBPZ>DQ-.gKnE5iMA4Vn,=
F/sG(=695,OBd[aZMnhn(_l@+I=5jj_QL56E`CV%Lqa3bE>Y$,-m3%K#\%hu!2mP/o9iFmAt
)i[(rWhiD/qZFV#&ELA/acuZk@6BmuVee?lVO_]A7V&2F&dq,R-=N<W[p'+I3f.nu[<o*!dHh
W.'J(@gug]A5VW`fS)kj3mt'\C)TZ`FVT*l'C=pf-*Bte-5ls@B-#hI3/sNeVaeH0#HSNFSYI
9f9Z$g1/.MWhoY^?orso~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false"/>
</body>
</InnerWidget>
<BoundsAttr x="635" y="66" width="408" height="223"/>
</Widget>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.container.WTitleLayout">
<Listener event="afterinit">
<JavaScript class="com.fr.js.JavaScriptImpl">
<Parameters/>
<Content>
<![CDATA[setTimeout(function() {
	$("div[widgetname=REPORT0]A").find("#frozen-center").css('overflow-x', 'hidden');
	$("div[widgetname=REPORT0]A").find("#frozen-center").css('overflow-y', 'hidden');
	$("div[widgetname=REPORT0]A").find("#frozen-north").css('overflow-x', 'hidden');
	$("div[widgetname=REPORT0]A").find("#frozen-north").css('overflow-y', 'hidden');
	$("div[widgetname=REPORT0]A").find(".reportContent").css('overflow-y', 'hidden');
	$("div[widgetname=REPORT0]A").find(".reportContent").css('overflow-x', 'hidden');
}, 100);

window.flag = true;
setTimeout(function() {
	$(".reportContent").mouseover(function() {
		window.flag = false;
	})
	$(".reportContent").mouseleave(function() {
		window.flag = true;
	})
	var old = -1;
	window.interval2 = setInterval(function() {
		if (window.flag) {
			currentpos = $("div[widgetname=REPORT0]A").find(".reportContent")[0]A.scrollTop;
			if (currentpos == old) {
				$("div[widgetname=REPORT0]A").find(".reportContent")[0]A.scrollTop = 0;
			} else {
				old = currentpos;
				$("div[widgetname=REPORT0]A").find(".reportContent")[0]A.scrollTop = currentpos + 1.5;
			}
		}
	}, 25);
}, 1000)]]></Content>
</JavaScript>
</Listener>
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<LCAttr vgap="0" hgap="0" compInterval="0"/>
<Widget class="com.fr.form.ui.container.WAbsoluteLayout$BoundsWidget">
<InnerWidget class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[地区]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[销售员]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[产品类型]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O>
<![CDATA[产品]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="0">
<O>
<![CDATA[销量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="地区"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销售员"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品类型"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
<WorkSheetAttr/>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m<a1^;eNOfJ0Iumk#@Cd,s"uJ=9V<rj\AY;3#+;fWV%Z+lqi\!^i7'M!^i6XW+"s;+IC#iJF
Q)s,V]AE7X\,NW&jQaH,[3ReJWN8n?k[QB)lHH5R-jA$4O-oUnqU#bqY9bfhtO9th):$Pft;d
bN.j&a.+G>Zs7juS.+B2=.$X++hjan#oB+3^=X_d[`?0T:k4>t>+W:+R&37%;A@c=%hY3bN^
)m1-0"_([rcE=VI+APOC/<^-)JD3DVB:,rA&IKe7GOXpS19#(B%a>Wf_1aq,4r`kbAY8kD-S
u/?g%>G]A2!b0n9]AFeC(,7&2Yu-5qVbQsIhH(u9aGkh$B2BcY;QL@s"8_dVU-hjcjeP.&q-;h
hnQo_OBb3oe5tVK^/"-Z,b#$Pk(<5sens?%5Cf#*==e\n0WS`HT6F27U:W[^?>Z'@D"B@:3d
/G*hd3\KqeEsi,D$2KC$EsE6u:3GC4"?HH\3jIo/Sj@g6+\Y9=CE1^s4MJYtla%4Pm>*Q&45
oe`+SZLBK*YM/cg@?G"%sFQeLjO11NZgRo5($dLhMa&WGGgRro8o1P5kpQf;Q/QhmC`?_m=r
YE7J]AVI8k4K*/kKN]Argf,8"X[s>?hh*2n@pAXFU[<Cn5+BSJP;Fc%9U%tH:BDek,l,9M/0[i
$!(l85^#(1R,-ftRK[Ij2Y?hW02.Q&]AacK*aS:JLNcQ>,eH*:q3?#PK27JQUo8fVUk]A^a`ij
HS8>DabR(,()Z5PCLg+'b`P9RgpePjr\Ug8k2No#OWM*D=U$=QHbn]A65OT!%*W"6:YjT;tV'
!OR*r3;k[="e,o7C"^UZ7_KB(qmVd@&GC![fq1qDX.$m6rt"k<D.lcA"@S%3Xh#75Cu$I=#l
E]AF3u9pKERbk"+SUQ>)E6Ym$K)hW;lM_Tn+dn.n]A15pt0$>d3':.oP`!'fup^0,R>gl92dqZ
1k#/aSh2^EFXG_9]A-)lA\g+.GBj3tqrm)="Lk@)6Q69r]AImlXln(eWLKSpb]Ar1TOr41fdS&D
b_<jAjE-;g5_ZZ1N2)S)r@"!8&I4ai(HTjFYB`1?b7*^6%fBqO=m",kn31`Q/oSuK/kpMV%o
N.S/S;doR/m6q]A/>_T3>(:L&X(S</(0M=K`qnTmOn2VS5r<fT^mG6Lumo+oYgo/GUg('Dg]A&
9#>$6ON5.!%f`ANQnuNCV)a,@;7!/G3&k@lN?+Cl*idIS/WJi/3%rd6:Y+.(TdJTSCVks#K&
j_4gYm4n\$#ng#R)Dl5cRe`MLtdm&Ad=hX21.Ml$gGQLj`D<#K[Xuc]A+&?]A8b\`6fVml+kT[
`*pq!<laHYjTGeOj^[[I\p=Dq._nu"Z=Z=QX&L<;EECnH!2`YnQ?pe[k=i<I4Mp6pU#-uq-e
nVmXjnI+=VK/B"uUP7\>(im/-3=FCagXg>1e1%]AoHI[E>j8Wo&ggC.n<uIg.adOhRtAHUmAL
e,dGh^V^+;`Wtn<hf!nZ'dk&<*3^65$0(SuGWUCG=)=lsm+JTf2Fr&GBgEI2EIMAt,[dEe"Z
>kSFg9QQ]A9Y8`li-^5Wm&el\$nTdAU)7lV+9o;iFhV(r"Uf5e'j>Lom^12\hGei.<%<Jh)BM
')p[>\V"70B>ba:h#8T^b7HP=Irc4pGE$J0jUl8.(BPZ[fY_[H3=NiuAS[Q9heWQ6gN/)$#I
i*b\n"iLJ!\]AIZ012XoN-iEm1VEB<^QCkX#G!\S#QW_q.:39n:2LEsY3(hb4n+J/60.90Z^H
q7J8Hk;"l\s<Nq>"QpY#DGRa>&;C6pu,K^E5DYg<9KBf5T.2Z?+$[(#Y(b``dUb9gp'o6j'M
J;,Ud;c`Gq4#f9W*3kX=p;6u.&Y5U?-]A^L<M-p2FVscYOK8W0p[@QYX6YP_]Ape;5)'uk*KX$
o5HL!_.7'38\hf"QL:O@lffF3m+?bF*;Ea4hj?fiM`r_PkgZU'$TO9#.uK\JW6rd3/Q0iHF;
3n,mP@<sg!>;G0?T`OTUS"X^8C5-6]AD(=mLSBHr(iep,(Dd&M0cl3Ym%1/QsEM38#NQX2u.`
]A(>Wq=[---$j)fE:0_AQWiEdq^u7Rq77$fOV+\O5<1VT9ITYKT5r4//&coRYIj1>1;suh?V+
r!rF'su/ekt)l076TfD*uI)U:<A;Bf"N@>>[%S*3ZOBlHeukn7(,/GJeK)1p2Aq<N_&3msob
*D"u5:(2a6qi3J@YcXFuibpeMMBn'/Y5H]Ap8aoq\jL&GQ4-%^2/eW<ikdJfq'Bo+XLER7(jD
]A)?VY&GSP?C0+_=$dX0&p*!Ii=r#BuO#eMdd[PDlUHoLo>M(L6d3.G]AUasK`^-c`TQ6=W/U?
-1CcNd#H/tZ(d2#VKk='r]A,V$lT4aGIme#B,7#U"k^c=U]AXBi(j^\9L=;K?3E*;%CBc'FtXQ
L]A6Y^)PI1X#Sol]A%VA;%J28q4hk#f%eGG$oCL\"!e2nsZL/YQ+$7gR=HYgAdj9'b&c9MO0G;
rYEa?N:*RM:J#7UAA'PkX"6?>LqQ'@:ZED6aH!XkMs)2>Khf&q3XKQ9i)asOW`U^GOo8>$lF
<L6m6[N)WTB^M#E6I9.Xr)9I?c#TU!AhS8J>\b*$;qRQD5'*M5,;oda!`PD%A`@08P+'M<r,
,\I7$EUR[;eK?=nFsbiaD50Rc=GHe]AEr:8arJLfdVrf&))qtV;q1u8VcY$BCP4ZW_jX$9.Tt
DE_b>H66',*dR,7M@e(YGhR"1?s!-\'+)6u"^*&@:jmbs.q>@ruf>^Y?mK#c;'g_f.!fu<$/
.3\>;kRH+?>e7ZQhHOt#2WJe=WmDALVA`TQ`!H&GR'skG&hNM4rmbh#Pdr1QPobNO%'Z2?(/
tC*KKbD[iO_m69Fo$bC'/ni!=jRU`W$1n>=,$T5eZGHN/r%d]AYmAK]A^kU!T3h=TC-lcNCA(8
DEf^=*WAXH<\I4n2nAA50[0i'B3s:P624=%bOO;0N2]ADa-7GY']Ai$7$;TVNH8U1=47LA\$9V
`btfI`]ATKuHE/5?LeQ96`&tn=LN`k0X%iMcEmf-WBe-H]Ae/dVBu,:bgK"S\7HtK7Z>8U)LcC
AH]Ah*[QV^tN-(fD-AB:%Foi4"b6=sSb`IXS'e`&C=Qk>f2-1!UJf5:OB$.KXYDj<^T#BS#*K
SYpjB-=E$A'\kkBT5!/"b=^I"E@G`BZi.RqM\hJ+2NU'T1hF"R!/!W3I)dn1EiL'^iu$T\4^
aq*Xe0pPn9p;NEBa1)l8WBX>in*&?h*he1*Ho6Y?gN^g*?s3`.(T)>?uDYp(qc0.)4+K"6Od
Pbq[u-M#5'HrN)RX(DU\f`h$0P0?4BKc;Bs2nDJY`5\i?B\%JpI=u5V)!W[^;MmJt2VQ<S1P
pC0GtaZX8PV'@15oM=9X=j@R!&_*T`JXXA&D7V9SFt7+h",t-L(#n'&a*91nl1s'lLht?\qQ
2]At<f<<"Mj;4iq9u,ceCTTh_F)]AHLD>0XnoIE?nViSdCd.OU245RU?IG$so'b`nS`_#4u#u8
n0mM+X]A.0Tjpuj\]A0eH+;9FbYlIk/dI7A9>S9QAKFF1.@=?IQl53s&E\LW^#`h1u>X8H!a0)
et[O%Di)f>rZ%5&-q((HB@f\]Anq:?__MaWW1Z-HYbPDC#d8#QI<2i,pKgj?`2QNM%.7;B0e/
QYtGB<eRe9(+L,bT*n7OG_93IjEbZ,)YjEMQm3?7]A$PoGE<i-+'\XB.CPW+J[n0^LM75U@'d
*f?FjO9uWNB_gOR`E*F(]A7Z[>2p/.)1<IB/Mtic2e>nM1a]Ac7%/JIBC.D6rX"i-J$MYt!J"r
(U#0Lg[X2hR;?mi(hbm^$jn:9N9<'0TYVAhCP$oCNeX-PHR5EqER`+!U0fu^TebTJ"A#us)p
J,VLAoHEDE7lUKkgCZ6hZ#ql_p[4+7<eAD;<:umGo'2a4A9lIO>'@f,AS:?AiH%7[RGsaC()
E$]AnQVGLoHPH5Y!0ihF`<.!_L)doH#F@*6-DK@r@SmOpB4]A=K]A5(8K.IF,?_:[k;3iFSgH3"
pr-kec?3NOTdu^hk-J5-n(l*]Ao;XL&.?NKlSpK*>[3o!drS[@W>Y!bMF!u)&:_]AQQV,jlY1C
o20%*Dk@G1>u,:Tm5#CHb/P2QYJCUWK8WdM@emR=uMQN8'C2*iA;EkcS?9-`*\4DmIKD2MXq
FBt_Q_=RP[_athD'\RN\`*j"6]A*goV?-t;EeFps!e/eXnQogWEhm(ePY.JH_X-#Zcp#4+CrA
TelOG2HFf=iB3knN'd`,&O8K>K04kN>Hh6MKReYG)Cl8iH7Y:;ou<pm8i)9X%e(p9RSCK&OQ
*MT(qai5?*BI9.cRlMrGpHVo?6tRdkE$cTT+T'sW;CUFs.3,j$"3UhGCt,8O!g]At%41)To?n
+CQ8P6+2u>XJOGpaT-1-10KsGaW/Nj7H&P#litD+[:]AJ,IgX0U>9]A@IDQ3-oO,kK9#-Oe[18
f_C+jl#+$VV%QgJLU'`cN%n5C1"[^:"1<3F!I6#B6HFPq%`(]AqoR&f.8jtp$^d_4OH0V&n1c
kBC$]AHZM\".-=Ke(f8LMJ#(NV9kl_]A5B`YShdT#g(L4n&L1O:`,d_J</K[j8+]A]A6BNKERiHl
;VE4R<2p:35hjJ8/kl:UtTQ$]AT,o+gMmklh+NFU:k;1N[`-LhH>mjV-MG)Ccde,H^JjCn\d'
Y#ij_QjZG(e!Y,[>E4"ls>&CSJ7RdXH5R]AtqoXYH2:D)`2RaQ"33HpR`HK8JWR7FJRlNSGLk
Ig#QJr(.mK^0fj9PqBl&R#3G@hBc<q(/*-,X2e!iV#,^?WdMHGIoi^QA?q(8\b6OAS\!?Ud%
,`_L<Kof>d&!Si>/YB>OklLX9^-*:Icl\9bTZo:Y0mt&K<@M94:NP9Om#uo,'l3.DdP4,ASY
ld1%Q#-\'#]A)!CG/mmpZQl]A!&%VnKunJ5IL*R`d:p%=c85DiBRu1s1:<>mdRE+q=seo]ABT(A
sR]AV__PN8UST62=FSnEL_<3!]AFO0&5r'/"D-2HGeC1oZW>:nGjS1^-=-N@qNd;P4e<YQPOi"
t@dXS#9lgDT*EN;F_C&S-KXIsZffGG[:P.T0CU;oM4`utaogpn\_',A\p$V'SMq,S#pRq<1C
gurUB;5,e4q*CL.0>AOW4'\_TS4qhJ(Wh'pNrYK_]Ar/8sNuir"*A9?ha,N7[D^V/;IGC?N6q
E`L$qet>jW"RCl@\4(?G%_G[>^jiK;pme+5iUQJ2%/L@`IhK`E@KeVWee&6BfEiab-;XC/Yp
9+!XMAp/Wu-=S5MqJVU(&`?HeG3.iGCRVMo.Bra[a8f!@4b"X0W,fi&<kK5(-AXT<hWHB[B$
hs.NATX/(*b,="i%T;Nr_srl^s_G9ATelb_bh4<q?6`L!2IY'J&TmdHoB-dq[3Q.:`YP^?^u
XIqe1]Al'.;P:nBNBZ2]A`^-RsE*0FMp6N_K%44->#6"GKFrR&U\.Lo.<YLbZKnfJu9aFZ?Td%
FjJDS,/,g?N/]AVpWgjAS+dq:ehK#OgjC?e@4Dc_HDHWQpDpI9T4&1TWQc3VkH8!g0VTgCAo#
cQ8B\AZmERA-m=pmrJ/0]Aee?hKBdYrGJ?6=YfuH+q<F<36W?*=Pl,'VeaGEF,4D+5JiH)D0n
d+;7917-lqI&jpp,<qtCsM^Udjcpcr8GktI0q[L%nO$>s6j<ZqWf/LN$7=\>@!1lmo]Ao:fVr
PD,POFF;VrC[t%W[gFfARbo)0=bna;k58*M9aJCgOY-\dkgp7:FZYDpb1pq;&1l-_"e)D#^9
$OpT.Qk^ReigB,!j]A:ZajeBEHtf8I6;"ni<Il[1(\[`-l'sO2kAGM#SBqWmd&?-6pIX8=>j#
G8DR`jNIML%nkf"P,YLpJ&Bfq;U(&"3dAM_X[j?"k4GlP;27;YQUq7f]Aa#q%LHYOLe_[d:@N
4/1#^iqc'(U->re^sf%rCu>9*i.jH3T8h5'+snT[70OZ8/+d."*5MI$4C63dmdV<\aT4/KT]A
+H,4HB<WC:@4=XsUZK=;ko1-ORL*VEsc>TiRMmhXhS3^BC<FkuVM=+`_0O6c9c\"kNpO(:WO
Il6&h<e_H1>+@(TjD.\g7?m0WSHI^g1OjU;<`e;Bp#of=(PAQHffpP.-YNJ_P"91`9OTW<:+
9cT2CkNlp]A$5<ZT2r,>0UJNMrgb`QgRkO.1UO/$"hB?.&21oVbJZ*upZ:S\I4Z4<W,N-c>Ih
a0-!Q$f(1,JsXW7W=.Ylo<MnVjJ`^/)kEprcQX"p0;J&J(*B"&DR[_Kf4+^F)Db5&BEUeak,
^n$A]AcilFgfk-.pB$Z8Wm4`0S#99K+V+*RrTWs5sfKu.BbP+Dod)fe77PT1`c,_[AitRKQ'3
ro3i53k_[O+FY2tV1#Lg95<qt52@6DQVX=s,(]AD68T:-MRJX#pdL0gu5ZL1-`bBM5>(9b3ID
)fZI_3C(dX*"oH&aS4Z@7at]A]Ak6D.KpgC:Qs'E;mO=Jc1D"eN5qjL[d.Jg%h>1li.4:neJ&D
VmRV4!GVuN_(>tsq2U,K_ToW*Z/+>80E,,.LJK'G7u@(AfE*+lVJRi'=N(OF_e,H.ln-4+'F
Kh+fE/`/QgbfZ'J,5mcD_0!VOKbso@Fi(XYDh-Z,fY@Hi]A$QYP#ldfU0QePM%b7ue6WtWg70
W'-8piJ6fon^/@D/@BO-IDf3msdBdua/7"b`o+O!*&'1gSa6`&)ca7sU,E5.A"ps#W)R8^ru
arD*^,r=Z6=[%]ANhl+_9'q2+J5BtlD\?^15(HdQ`u__!<:=`Y-`&VQJ+m:P1@5f41ib:#Z"N
OB2/JZ5pKM\1P$U`#`A:c)dQ\^pU$e"U<Tf.$?m@QatYB/T-Y#SgI$86E!3K%M.YJa^D'9cE
(dH,5D1FJga50[7;PBe%AMk6[:A-1Lcn?Jk'Ic_u;06Em:)oO)-V3Pdp-*rQDY1LDIJrX[T3
447@0qp#Y]AEsdb[!?Y6eN?.b'[AK:Cga=7?b=CnL:UKW^Keh`5i1[7s^J?7C`8NH/NU]AdUK8
5QL6q9-B%;.E#*lM/c8gEFN1dmV?#6J-BQ%$8uCN\m:`g`_RnBR$n6@Hb3f]A#tFHAHBc.U56
i&PgDjGul5sh0Nu]Aa=Vh)8.["u;1S6'f-5F9,>m^S4-NmNHH+HeBi'Q/rCqBgomou%U*<7Md
LEekMq;*S"q>O\Gjjs/q^"nD+)GpOF<<g8WDR.)SDmY>HSU+<<&9Z7j><@0Cm$!D5Or;SH;P
>\pZ3T-1!(!g867![_KM0FKTB7#NeUh.B\>J,YLr)=n!*9pUkkO'6Wj,p6h6*?2%^L#)JTi8
T7Y^61Fblk\b8AX!F`q<k(JWfccI6*G9YYC_OsE*7L/6NK?dNF.E!D2*I6AK#%Kks"ke"VO_
@l:O(hP,nT'U/?dBt!$6f/F%uUjT9,uu+Ta\J/f/cP9&m?c]AWkrV8Vs`S$kokXuFpoRRIWSi
[@Dd(Tkf,cS>9]A$W7meYMJiQb'@c/4P;"ss9)OmP<f3&(Q#jYG,lU.EJ]A+MmT]AsK1u?GO3]An
J^^Fl(i$fAMh]A^hj2aK[hgWCE<F@?#"pR_Y&P>"8]An^AP-n@tG>S:P*L'*!k*q1/P:@`+(cN
_6=/Y>f':Cf?7]A^YB+V_3dD]AenVf<(4fXcd>3BIuVX6@:fd4NtY`G"%5C\;j6^TM@./*`66m
DGTEj3W;5DT07OjGmJ[R]A0@t=i.'b2Q5:hEl&QBRZ@<qi2"rjYGc>MH\r\\0QaG]AJo:IhXd9
i@h+GS>>mc;A:LMSY7DPn?MQB*lbS-Ul<8$jLH8[k9aEMr-49o/Uhcra\A95QWc,QocD%Sd2
<65?f^FRSQ=rp(`S.q1Yhk=%!$?ASYA)u4o@CMj3A]Ahh-`DkA1?mR_fm82g[6&A8.h@JWCGV
O.o5S8Nq?4;Sk-h]A\_C"c\.>fj9;HarrGKOhaO[2G'l_6hbZ=Jc?=$k3KLg?QLBe;;Y4&]ASm
1?"#adhZ/K4)-,Q0:odK6)miVrDFn)]Ap\6/b=.*XTQpj'3jqD_\gF!'tBKnK]A!-l'e4%/DcM
Ll#10F2AUC]A,C7Sp6s650fErt%Y0L^Vh*VY@2'IJ'r#?J_RYGh'90M6%Eu&l\,=URQ$EWgd9
Mm>m`/*:-!U,:9]A1m=NUoS<m0r;HkUqP2:a@1G6B>Mm#\"qn/338[`YZDX-,*h^+$t<<drUs
cF>-S"/lQR#dU<FL=n!/8Vcl8W&;@ULL5KrU?<]AddkSha.qDl78M=b@5q)Q,7<6!9S1`dCjN
:9#Y;)%Bk^.iD(WFW..:.<K7pF0L<(#E&@5<nVpD\pDQ'daS):NnpJEl[.9(A)bCTu8tL4+^
2G76]ASuYs$o%i%Nf"X6i<u*rk[XnQqX%7Zm`Bia7KpX+sMCIsc:?-cFb<\]A-B&W4BisHJe%\
5Lj:_/8E:2:Fkq`06NL1adW/:r>pB\'[.'4]Ato/p\3(Yt5S&.;qCg4,'U7M0ca:U1qgq$m*E
B_hS]A2P0O5O0q*O]A02/!]A'Fc7Qjecq=Y0iCF?=lj#$jI;u,%S_nX%Ipr!i[+?<%ord!5H>`)
44j0t-N\S8EaMhDl;(T2j;`eBNU`heG`IG:q0$Yb99`uj_<(=ROo/5OLD+]AlV;mlHdEU0e_c
%..]A0U"L(7cH^)%%2t8P3F?qh`fqKN\;F)f-;oZ]Ac-7)K-AnYeK=qjJnqf77]A5gS<=d3jfpW
V+LlfT=*CTSIP,ua^+eF8_K$^?+p1<PkDAg<'R+<^==8ogMaT$qo&T"2gi\UYiC$AETpG/OZ
htZs+ci;nkAm22:]ArCHD4&^bVVo\d()m&WtAj&4YQelY;?m.j(CnkYa#/<Z]A4Sj6L(ttchms
p">5$k_oUWTu+s73o~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="250" height="150"/>
</Widget>
<body class="com.fr.form.ui.ElementCaseEditor">
<WidgetName name="report0"/>
<WidgetAttr description="">
<PrivilegeControl/>
</WidgetAttr>
<Margin top="0" left="0" bottom="0" right="0"/>
<Border>
<border style="0" color="-723724" borderRadius="0" type="0" borderStyle="0"/>
<WidgetTitle>
<O>
<![CDATA[新建标题]]></O>
<FRFont name="SimSun" style="0" size="72"/>
<Position pos="0"/>
</WidgetTitle>
<Alpha alpha="1.0"/>
</Border>
<FileAttrErrorMarker class="com.fr.base.io.FileAttrErrorMarker" pluginID="com.fr.plugin.reportRefresh" oriClass="com.fr.plugin.reportRefresh.ReportExtraRefreshAttr">
<Refresh customClass="false" interval="0.0" state="0" refreshArea=""/>
</FileAttrErrorMarker>
<FormElementCase>
<ReportPageAttr>
<HR/>
<FR/>
<HC/>
<FC/>
</ReportPageAttr>
<ColumnPrivilegeControl/>
<RowPrivilegeControl/>
<RowHeight defaultValue="723900">
<![CDATA[723900,723900,723900,723900,723900,723900,723900,723900,723900,723900,723900]]></RowHeight>
<ColumnWidth defaultValue="2743200">
<![CDATA[2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200,2743200]]></ColumnWidth>
<CellElementList>
<C c="0" r="0" s="0">
<O>
<![CDATA[地区]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="1" r="0" s="0">
<O>
<![CDATA[销售员]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="2" r="0" s="0">
<O>
<![CDATA[产品类型]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="3" r="0" s="0">
<O>
<![CDATA[产品]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="4" r="0" s="0">
<O>
<![CDATA[销量]]></O>
<PrivilegeControl/>
<Expand/>
</C>
<C c="0" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="地区"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper">
<Attr divideMode="1"/>
</RG>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="1" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销售员"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="2" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品类型"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="3" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="产品"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
<C c="4" r="1" s="0">
<O t="DSColumn">
<Attributes dsName="ds1" columnName="销量"/>
<Complex/>
<RG class="com.fr.report.cell.cellattr.core.group.FunctionGrouper"/>
<Parameters/>
</O>
<PrivilegeControl/>
<Expand dir="0"/>
</C>
</CellElementList>
<ReportAttrSet>
<ReportSettings headerHeight="0" footerHeight="0">
<PaperSetting/>
<Background name="ColorBackground" color="-1"/>
</ReportSettings>
</ReportAttrSet>
<WorkSheetAttr/>
</FormElementCase>
<StyleList>
<Style horizontal_alignment="0" imageLayout="1">
<FRFont name="SimSun" style="0" size="72"/>
<Background name="NullBackground"/>
<Border>
<Top style="1"/>
<Bottom style="1"/>
<Left style="1"/>
<Right style="1"/>
</Border>
</Style>
</StyleList>
<heightRestrict heightrestrict="false"/>
<heightPercent heightpercent="0.75"/>
<IM>
<![CDATA[m9+4,;eNPI1QQ%l<,8\37jY(2:YWq--+,.W5Vfcj]AL:_;oGkdL;6cd%5`?luP!,qL[KT7))A
Fmq(,FB37$%tjA?8D1>TsK3&43B/Oq8a@FqV*uhV[!`6e-#!_i12dW/!UufpD/3hg3ndf"9N
4qEMla:&Etcrc-A^8^g]Aks*2ea8\[V?9mWMr`BW9^I\tD/R5F.1bDM@II$.@VY795-hgXY=L
;#6.*S36rrLi#>iLK.7pL3`ocahKu`:69A5JOJo1Z'''ekCBEVWcG/jm,8a<X`/XfWTeHb?s
*^cu&15QlSdQ7V3s^/^&f@kEnSr.>j.)8BknS8I]AT(.f>Al)[Vf4-X[/L^MBKJ1WCN^KNejj
P`oG9,Dt;+%j"t@".u4H;37oK7!N4o8B,d!Z@Gk==Y3<$0t,nF4?)\`7.9@V<XXg1>VGoI0B
H%B@l[K?P%/@Y09P*uLJo=I0"*;UE@UhfZH<<<TuOlplP)jR_rO7BnYEIRo4RX=!8\FWrH7$
M&Te0.UiM^J<]A:f;a0[9]A@l)%$hDr^4T^11l;?ZAXA*;u;Pk)t)GZO38P.b.8N%`gmU>AG2&
HE&C2cT"u%9Q_/_P:!<9c[;8i31t+i;#h-<rSM/.BW*\ihl$rWkB,6k"=6f0AV2*gJ0(2:XM
YS]Aj4YRMNhDI@UDmo/J"Sj*F[(fqo0/r+)YHOHMMea$%jUmKf$6Xf2EC\&pb@/<)iOO<4rVA
KGqIc.c2O0>u+G"T_@mZU(Gc+K8gW'cJa9)U=a(jPB12dM6GFMad_,9RTqCq.`Jj98luBUXh
4+WDr*W;$gDFFD9]A2B`rEMkY:lcWb86b&WU&^fg%&1J0CFMJ<=Q#&,o?_.H*a#^JdP-(<mcF
!#X;&)]AY7;IC*Jp?6BQRD`ti0JD_:[T&n#Q04L8C2n!"i/bZMq=VMMck=V&9]APm4Z$2!c:93
k]AP@m_4p9aO@X.d0R:eUuC;_N\)FMmRhH8'e%ZC80AP/Z@M@0GR-OFf;.t6A$^#8qu(cuO``
!nJuLj\14T$1h"7(;<KQ4Xm55+fcQ-n>9e>uKYQh!V5h79L".V^0q^&$e6-/#<F\!_RVk9:6
)]Ap\JREEXPDJ\-,9F9o\-C@oKD#o9n?nrcbE-nG0GU9ERaR(:c'(,oIEt9RI4+G<I8"rj7bB
laR4,Wgc_f$#*e(g!R8s;mHZOm^bN=?C>AZ5?`6H]A6<AlcdJ_.)c=YNOLZ%dkKkdCo;ciVIX
W@uH*<[qu2(447up^FKrSqc.?h2j%,Ia1(taS-gb9GkdmL-e&5+E"^E:gB'7/)D<$:*M5'-i
^<)(c)eJH!EIh_`mj?Rb;_B$eE/HqAD%so),bj_YWi`FrZ]A`:ZZ:7I1!XJp)?I2.ZNnZTgnk
,=KoI8gkRaU"p$"K''qs<O4;-kB;!XA/kLL)lGpOq^=Ka<[@^+M9Yg2l=F32MKIJ[`I).B??
FrKkV=4?O-BHY3@MEUt&hC02*$<Xh+DuP1l8mC^F%b4%h+\Q/8?6>Ej3&0>Ylh/G@MC*9-&V
9."d[%KLR@Tg\+t;-BmN9saD&_6Ym(6lmjHR7qL\jL<X\>_oG3+<aAV?AmPcfZ)1b.uA[6Xt
ak@\"ab(.-Qe?pg_l(K^%mcE>MQV;*gk&Pd[cYQ>QF=_#_X5UA*-dN]A9)>B!^:g&YXj`K7$R
(aG?8@"$GTlbYTWE0*=b]AS"e[9nJL6mIE#pj]A"8prOsgT(IbjVmAlpNlL/+5U',sDOeG':U/
Gr>K]AXJ$t&,$R<C^qg+*6",L&*(nh-#&e)VG.YbTTo-kRlS?2nqZYJ@'"Sl)\S?TEeej6@=e
,]AeP#qpNKRrG?U4;2^oYi)D;oF?Go9[d9`4nX@YZ+PI0HBI7db.YAVa@j+Ena_4\-`1?M_FO
Boi8.l;Sjlo`fWQpPZ<L`*nM#KLK/P!Mfn-4B8d'XWT>%^^lKA^0e,OAm-mnhPZ&8;:69HSS
hJ1b!S2)6H!FEj/LUM\fH4"O^QPBu!Z^1\HbqA747j\o+C35,e7paLD=P2$On]AdD2alWrgu<
`c-ar,hg1&a4<lP,q-FC-JN:dmjcb%Uf_eKkC)8o/*\Ame;o.49&iXXjp7uA!:HrW1]As@(Fm
.VASZ#qdVd%+4"S[&_o]A,tAXM(b0d\(4(HeG%]A?<+OYXJF5rpScA89QPif<rl6'NU!bV/YL;
aXW&A[d'CS.r)))li\MomLk(YaEo$hJPpr9]AGQ&Y:.sJgmf//6]AM:nSQa$cJ0D%]ATP#Mh&fh
YZk=?gl&Z^lDcApeJQ,fgT!$&"a#acd\H%g^l2:SMO$bI?B,]A]AK>m"MI$+[)PtmV44EW\%Da
lU-#9;/Nl;X.t(W<p"!p_Kqo`4L'Ha`=[MKB/s>PUVK"F:-l)Z:4VJdq+CcX0)aMZIJ;kH?$
_:<GRsb3_-W`T2PXb\'o<hTGVUQne`</jV4mr*p^=M3AHuo-CD0C]A`al"rF^p$;fmpNk[Fr*
\:C)dkEHk,$X0B,UbTKD&V!:B[#3H&d#m:JqN%Vq1eH&eBTm9I<nQn@);,c9?LZ]A7?&*+Lah
!o-q8BiKYWMjo_F@,U89o4p$7F0n$(4sSh:ad)]A")g&g>%Zr:&@qf-j@(i(bTk'(//?@A.qI
8OP)$^Zq#MJoTD7bKf$F<`rGSd#,9q.ZDDT\rVb-Q5YUIX+[R9^,_aGA=^6]A[dR\^A]A\8s%O
RG-Z0rTDgt[aLudg()JbTeA3bA>%r(VC1]A=n9b"+S!u3i;_ORm?94:;![ZKZh?+Ob$G(?5[m
l:Ueq#_$@>XEj7>kcAblgPHa(^IbYfN>R$!P^,:&r-&P@8'Mh74`e`X]A*2pqDfjJ($736*Pk
@DIk=clMesNBbHoeA`o+U@=1diER[B3farsLCSX%"\;:0*S9X!2q0ag@nS.5oc]A,t7e9?=8G
ViT@_0T.^'SLHVV:n$I;hM+'k^aKYCX@VZHICgf\djQldkt'6E;b0$OhK"?$A8Kr0G&(E5@0
6tonj-D:=o)@Q<h%)hp9>)J<M@Of_W5<.jD=cJ0F_/0'G`lso?Y&Pq4iYK7lauHN)dd!99p!
J!&D\oRO9>tc8fpLiRP0B&*bbe/'=#6]A_'Z8Bq,KE>SC#5go8B7R*(u-11c,+bF:Z13+/!d?
TVaNTi9(MEI]AaHbgb9B,oNQ"*=_$9,GVVK-8910cGs&8=JR8lp)8\J*20N&&UdK%;L@fA)dJ
/.W(8"<f`clr"^M2qo[S-<VEtkc6jFFhm?1jiN4QLI@_P)Ro.dh'T>I1-e:)>"1Wl9C&Gk=1
=)oj^IY*.)OPA[M9iY_b^0D1Fe3:D$X\nc2/FA9;P?uo11rq>2(7kF7*K'=j?Z>qt'22efgm
MbCP=m@a\uO]AV!TuaRqhub?>m)pqdm`2<<$LD9-0Jm17Xn+H,Q@/W@B[n24k7$VfC7X?hLtS
5823-Ko,9D#OJeCVU:^8)B-`ETQl`(bKCSV31jOU<kG4*f!b]A<?EB'10W:LR4?S-!39URY]AP
=^#OmT;@a]A.QC0/A9,_O1i0,-[)%8JePO`m=W,*ZXua>.Y,4X[Hm.LD3m8J16oKiJcs]A\k,t
J12_al")8/[t4%*J]A!NNVQEpD37-ESF0%ujK!6iu'=ph^uk7K6#@TLQtV<VNTE/<nm@SVC9l
VE1k2a/rA\]AY!tT6*+!43/$@1*7l>(Is[:4nD$%<#^Q"g+hR@]A8jbVBqc0?OLa#eM/(jl`G$
uF'!E[=h+R>o6eBa'iKK,mRLsMW1<qbTeg4WglN2mu.4JK`)nFY`1eGMrYY[$tUeOT0k9OR%
9X"HO-&aZMN%s3'_G);:EQNI.$h$W:SGE@\6K!'>31rj+:6'4pep5XCQSA8qS(^_pMWOWZsW
^)$@g@HMf?05l#Jd@9naECh#52mdt;+VoZFoR@a/$Gqf0Oh*Km[N'a=2"G&1BUNa*`fH3kE_
9E@/]A-RH:5@DUF*,rK.Z?9g)M;inhKdW<"n=c"RF`)3^TQ8,VYUp<$8;3$<-aAG=E*O4I4lO
k<1BP".",pF;GHrHT_fjLT=E_O[mX>_t-lIam+@6<:Mkkab1WqY#MW8qf&3I[.O$HY`$7#S'
Hm6WJ4?59Q84k*@C7t"HFa\Hit53(D3ar`40S7_A"R8$"I%.i"J47X]AB!>7Q&dF]A'4,>TBe+
Wd)1ONh.d!k7O#tX?;X!P6kgc=K!(4EO#T@a$Zk8IrM`'.m-''?ir$]AXe.]AZ:jR!M1M`;ZB5
JIW$>0Y/WfNh@\I8QU"ED'oq_7C#,Q<tm$i2KhaD,&tF?'D3R"@aVp3*hlX#[K4_?6+p,hrf
X[p3?#1_9+Pn[O\LZUsAd6Jn*dT"KF3AcAdQPd+)n)%$0%Q4cNf8`<7iH7;\[sQDMF)=CbL@
Q7)P7e_>cO/C"ZjMa3`OZg'9tRg/LSO,V/!0pG_g>"l_"kPh5=Z"K1SKh6dS]AQjnJNSUkn-C
ro_)F55QeA9"EIH9,K7KT,DY8!S,ML2r,`Q_;H/Cj:eZDW#M!>Qn6H)>"C`%9.['9pUIlaGQ
F0^liA4"I7oTX[*>96rLiZ,[Z_es_2BG<+h"_di4W7Q-np9gfmcTH8F!l%E037p(B'#*iB[2
ZugpdRnum'AUiI4/q5R,Y7.#;GdsO4I8Fo'.AR4$'!X$n-2F^gB;4Kp_+dsDk_fG/"!>&6'-
9tn#XG`=IFq-OhPL5h8%nS(g"SpP%S02"HcM#NC[MKm6nR&FH*8A/>Buu@<#6aTpkr^P/cQ3
$(h`K)1pRbl%b,\!ZP!&8S)peR#$(-1)8;H5"ac%,a05a-p1]ANf@2<dU.nZ+m*)FP&</S*45
:>YW56^@:JaI>Jmp!JN?i$R1"!KW<9^MC1M&X6W#,6%HSrO9I6ua!:)Pa3:'A'p@tI?IP*iK
P<C'@AQ\jc,NnJsC?RQ&ZPsZ^aEU$]A8."jI,2':"[PM5sJU$MH9A,Y@CrCTk).f>C9a;";':
!?[=E_Scp2EUO<5rKC?;)'/ddBG"gl_PsS3_ki95Yu7c]AIBuKR\6Hu4\S]AaN=RsECW1l`kj/
8PAl#@;q?B.GoE;#u-bp%mT*Q8uf.^[2kFe-%d053@L]AoVk:ieft+3MNs);tRD4qXiU+Hn"@
KU2tb/,opM!JdbK0PB?59V+Kt)P19W:Y)M:fBT2+4X]A]AJ5G+TrfO,;)h$BF[isElHl80+@Za
Ia%Llbd2ptVgGB[&T`$G0D3/bUC4;oegneLUeP!@),UpU1-9'Z$lSV`c/<58G;j`6=+bD<Id
K+UQ6.AY]A-4<:fJ1jcK92!k[O`DV5RnA#]At[\8Sn9$!+4V^p6H%oV:V.Qa[0>r)k0,;2[qlc
`\*BFNP]Afh#ZcqH5/gl\F8"/\;CR)J%4^<6;"s#>52JRG_eupnb4po8h=Bp0g40Ka1Urp$S#
hk#_.Us?mE!CUc\3VRf;NE>UbsdNCGHH>pj7k7$T+M&[uuQZ-b8dRXH/'\36EE-Y/khD.P'/
ULDC:GS&f"Yn9T>M_W]A`"\\1$A8Go?1nf8q7p.;I4.1#I2T-<<(`I#+2cc6N8+U(np+Ybdb/
K*q_/[(/*rH6&Wba<+I0R#bFZuZsZ,`3Rco6b!nI)R?*Gi0h#]A_BA[XikC.*7D7%Y;ZhP'h_
e)sE(%p^$b@Mo[2R4[5ET_LYD@7rTi7A"j;S-.S=gC?]AY"jl0q)oqt`8>0WnQ#rG+^5,NN=7
ml)_MhpFC^/$"W8>K#+)IR`S1>NTd5/q?9'nQ16cpbq,M8[e368`:3:Ob_2)(L[$ofO^$r9S
[k^hm=)(#C+R/i&3_jlT;,oD5%41$ID+0njm2J9YM26k`<jAe06"V@rKK%n-n+rIu[6nr-nl
7.?]AG55*=c8Crq1:0/!McUBhC[:4LH*eNemg/>@P"=TjOD.p]A_cBPZ>DQ-.gKnE5iMA4Vn,=
F/sG(=695,OBd[aZMnhn(_l@+I=5jj_QL56E`CV%Lqa3bE>Y$,-m3%K#\%hu!2mP/o9iFmAt
)i[(rWhiD/qZFV#&ELA/acuZk@6BmuVee?lVO_]A7V&2F&dq,R-=N<W[p'+I3f.nu[<o*!dHh
W.'J(@gug]A5VW`fS)kj3mt'\C)TZ`FVT*l'C=pf-*Bte-5ls@B-#hI3/sNeVaeH0#HSNFSYI
9f9Z$g1/.MWhoY^?orso~
]]></IM>
<ElementCaseMobileAttrProvider horizontal="1" vertical="1" zoom="true" refresh="false" isUseHTML="false" isMobileCanvasSize="false" appearRefresh="false" allowFullScreen="false"/>
</body>
</InnerWidget>
<BoundsAttr x="80" y="66" width="408" height="223"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="label0"/>
<Widget widgetName="label1"/>
<Widget widgetName="report0"/>
<Widget widgetName="report1"/>
<Widget widgetName="label2"/>
<Widget widgetName="report2"/>
</MobileWidgetList>
<WidgetScalingAttr compState="1"/>
<DesignResolution absoluteResolutionScaleW="1920" absoluteResolutionScaleH="1080"/>
<AppRelayout appRelayout="true"/>
</InnerWidget>
<BoundsAttr x="0" y="0" width="960" height="540"/>
</Widget>
<Sorted sorted="false"/>
<MobileWidgetList>
<Widget widgetName="body"/>
</MobileWidgetList>
<WidgetZoomAttr compState="0"/>
<AppRelayout appRelayout="true"/>
<Size width="960" height="540"/>
<ResolutionScalingAttr percent="1.2"/>
<BodyLayoutType type="1"/>
</Center>
</Layout>
<DesignerVersion DesignerVersion="KAA"/>
<PreviewType PreviewType="0"/>
<TemplateIdAttMark class="com.fr.base.iofile.attr.TemplateIdAttrMark">
<TemplateIdAttMark TemplateId="f56e2aa9-d566-4b5f-9be8-af72f64a8ee4"/>
</TemplateIdAttMark>
</Form>
