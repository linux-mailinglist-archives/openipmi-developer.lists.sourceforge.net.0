Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAB0113B0E
	for <lists+openipmi-developer@lfdr.de>; Thu,  5 Dec 2019 06:12:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1icjRN-0004F7-0h; Thu, 05 Dec 2019 05:12:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1icjRL-0004DP-4M
 for openipmi-developer@lists.sourceforge.net; Thu, 05 Dec 2019 05:12:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OcGOcjgbjDbXhRFRmTxXVWekMCp8pr9sY/eGCy50+pc=; b=l8ppTtKGHvM75MEaybes1xa9ic
 gJhA0usqlsbi5W+bmbdibm+pqsIZlpiEWJNVQ0S65aAnpejvEvdnAFwNwGw6k8HuBkTY1Sd+oQnYx
 IY5q5QMSsfRrB8HJxPQSe+pN5xY84Wdzp22Hw+cDm5vF/Sbbwk4rloZVzydS+a2wDLUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OcGOcjgbjDbXhRFRmTxXVWekMCp8pr9sY/eGCy50+pc=; b=KGxapc3sHYQH9rZGyCR9nYZTXg
 5dCHQs9DfQyUdqka139VW0FfFHH5jfwwr6F+4AbJ2SXCHYYvA8ZJRKpn03xjeVQqFyRN4klX0jVJZ
 w6e9Io6bT0ZkP6l77YUg+f5qnd9IBLcY1+be7ZRUKV9kt9i1ageuNhr8S8akf5GjCJKk=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1icjRI-007hct-RR
 for openipmi-developer@lists.sourceforge.net; Thu, 05 Dec 2019 05:12:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 38BB51139;
 Thu,  5 Dec 2019 00:12:25 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 05 Dec 2019 00:12:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=OcGOcjgbjDbXhRFRmTxXVWekMCp8pr9
 sY/eGCy50+pc=; b=IGgGGX6nygzYeMRAuPtYZw3fiM0jvZb9PtW2O25Fg0pmjgn
 UVQC50cgtaBSI6cLxgZ3A+TbwgAd02qhI5z9bLJLsfAUipsJx6TChIwebpF9UUab
 cJJZ+oWYn5bkgosbpuoupFO5JqycFjcK2IewpP07vYnu6uF9nrwvVXYv0l/fkJcF
 skfECRNxr15xRbLyrpnJl9tzeg+vUrhA2NjV1VK3z7s7SrFmd4A5T2bsC4PKGe3+
 YsIA9Vp4cMhPdFZ3O82yrr27GoP35csRuMxY4wpcyfMbvta6Za1e5LABYpJXOyp7
 B9xfz3qQqd/sz/kj26hUot9xtgh76Mb0QphLfyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OcGOcj
 gbjDbXhRFRmTxXVWekMCp8pr9sY/eGCy50+pc=; b=VME74QkLeVUgjLL9EdP3nx
 jdqmJ4I7jplAb8AZesVe4aXcvuy6a3pKBHXLd1u98LA39Io4PVTbDNhFInPvlNFN
 DAQ7tvSiS7BfG3YJlc2GLbvTtYAykQGbN57Neznky3DeDImYdQ8fnHrn9CYI4nwq
 qt/8BCJtutVQ7sO5ERTAB6IjhtvU+Q+cFrg43QeR5BKC0EPfBLxYUYK+FQYGuMS5
 Mfs1ev+/SUnfd+Mp2A4pVOVt1gOCyfflw/79wIEU8p6YI3ZnJofqt9bUR9jrrZ4n
 vm/CvPurJeo1yyLcUpjnEG8kj11zxDeSnRNhqYu81KIV6v9Rqncbmr/3SToREmuw
 ==
X-ME-Sender: <xms:tpHoXfXjBfrqitweBu_-Tfd0tpSNTD4h1miiFV-cuezKlF39kZE4OQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudektddgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:tpHoXSHV5wVpzIItG4V38koyhb_ASsPS4z9k_qsNJdKgxI1gm7ovQA>
 <xmx:tpHoXYUCwyuGwkEtBOqooG_cUGip6TrD3Xydw6XW5ZGQK5DmIu0aNQ>
 <xmx:tpHoXdBXVJqyMAvZ45t7UFh-lrsgR2Eb89qrk2hHZ-bY4Y2i2Bq6Iw>
 <xmx:uZHoXbComF-gtYvPAgGU0gUiRS5vnTGEAE-EbbQ6OY-x9yzhM1x0Pg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 740ECE00A2; Thu,  5 Dec 2019 00:12:22 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <40d554c0-de62-4d45-bbcc-dd3a3aa12a65@www.fastmail.com>
In-Reply-To: <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
 <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
Date: Thu, 05 Dec 2019 15:43:39 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh+dt@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1icjRI-007hct-RR
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_1/3=5D_dt-bindings=3A_ip?=
 =?utf-8?q?mi=3A_aspeed=3A_Introduce_a_v2_binding_for_KCS?=
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, openipmi-developer@lists.sourceforge.net,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Wed, 4 Dec 2019, at 01:01, Rob Herring wrote:
> On Tue, Dec 3, 2019 at 6:36 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The v2 binding utilises reg and renames some of the v1 properties.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
> >  1 file changed, 14 insertions(+), 6 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > index d98a9bf45d6c..76b180ebbde4 100644
> > --- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > +++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > @@ -1,9 +1,10 @@
> > -* Aspeed KCS (Keyboard Controller Style) IPMI interface
> > +# Aspeed KCS (Keyboard Controller Style) IPMI interface
> >
> >  The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
> >  (Baseboard Management Controllers) and the KCS interface can be
> >  used to perform in-band IPMI communication with their host.
> >
> > +## v1
> >  Required properties:
> >  - compatible : should be one of
> >      "aspeed,ast2400-kcs-bmc"
> > @@ -12,14 +13,21 @@ Required properties:
> >  - kcs_chan : The LPC channel number in the controller
> >  - kcs_addr : The host CPU IO map address
> >
> > +## v2
> > +Required properties:
> > +- compatible : should be one of
> > +    "aspeed,ast2400-kcs-bmc-v2"
> > +    "aspeed,ast2500-kcs-bmc-v2"
> > +- reg : The address and size of the IDR, ODR and STR registers
> > +- interrupts : interrupt generated by the controller
> > +- slave-reg : The host CPU IO map address
> 
> aspeed,slave-reg

I don't agree, as it's not an aspeed-specific behaviour. This property
controls where the device appears in the host's LPC IO address space,
which is a common problem for any LPC IO device exposed by the BMC
to the host.

> 
> >
> >  Example:
> >
> > -    kcs3: kcs3@0 {
> > -        compatible = "aspeed,ast2500-kcs-bmc";
> > -        reg = <0x0 0x80>;
> > +    kcs3: kcs@24 {
> > +        compatible = "aspeed,ast2500-kcs-bmc-v2";
> > +        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
> 
> What are the other registers in this address space? I'm not so sure
> this is an improvement if you end up with a bunch of nodes with single
> registers.

Put into practice the bindings give the following patch: on the AST2500:

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index e8feb8b66a2f..5d51f469cbf0 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -399,22 +399,22 @@
                                        #size-cells = <1>;
                                        ranges = <0x0 0x0 0x80>;
 
-                                       kcs1: kcs1@0 {
-                                               compatible = "aspeed,ast2500-kcs-bmc";
+                                       kcs1: kcs@24 {
+                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
+                                               reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
                                                interrupts = <8>;
-                                               kcs_chan = <1>;
                                                status = "disabled";
                                        };
-                                       kcs2: kcs2@0 {
-                                               compatible = "aspeed,ast2500-kcs-bmc";
+                                       kcs2: kcs@28 {
+                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
+                                               reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
                                                interrupts = <8>;
-                                               kcs_chan = <2>;
                                                status = "disabled";
                                        };
-                                       kcs3: kcs3@0 {
-                                               compatible = "aspeed,ast2500-kcs-bmc";
+                                       kcs3: kcs@2c {
+                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
+                                               reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
                                                interrupts = <8>;
-                                               kcs_chan = <3>;
                                                status = "disabled";
                                        };
                                };
@@ -428,10 +428,10 @@
                                        #size-cells = <1>;
                                        ranges = <0x0 0x80 0x1e0>;
 
-                                       kcs4: kcs4@0 {
-                                               compatible = "aspeed,ast2500-kcs-bmc";
+                                       kcs4: kcs@94 {
+                                               compatible = "aspeed,ast2500-kcs-bmc-v2";
+                                               reg = <0x94 0x1>, <0x98 0x1>, <0x9c 0x1>;
                                                interrupts = <8>;
-                                               kcs_chan = <4>;
                                                status = "disabled";
                                        };

The aim is to fix these warnings which appear for every aspeed-based devicetree:

        arch/arm/boot/dts/aspeed-g5.dtsi:376.19-381.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs1@0: node has a unit name, but no reg property
        arch/arm/boot/dts/aspeed-g5.dtsi:382.19-387.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs2@0: node has a unit name, but no reg property
        arch/arm/boot/dts/aspeed-g5.dtsi:388.19-393.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs3@0: node has a unit name, but no reg property
        arch/arm/boot/dts/aspeed-g5.dtsi:405.19-410.8: Warning (unit_address_vs_reg): /ahb/apb/lpc@1e789000/lpc-host@80/kcs4@0: node has a unit name, but no reg property
        arch/arm/boot/dts/aspeed-g5.dtsi:376.19-381.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs1@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs2@0)
        arch/arm/boot/dts/aspeed-g5.dtsi:376.19-381.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs1@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs3@0)
        arch/arm/boot/dts/aspeed-g5.dtsi:382.19-387.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs2@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-bmc@0/kcs3@0)
        arch/arm/boot/dts/aspeed-g5.dtsi:405.19-410.8: Warning (unique_unit_address): /ahb/apb/lpc@1e789000/lpc-host@80/kcs4@0: duplicate unit-address (also used in node /ahb/apb/lpc@1e789000/lpc-host@80/lpc-ctrl@0)

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
