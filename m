Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5FF11FCD6
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 Dec 2019 03:26:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1igg5i-0001L8-O0; Mon, 16 Dec 2019 02:26:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1igg5h-0001Ks-KZ
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 02:26:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CmRix4rFhraibDlkM15hFC8u1AExqA5v1hbRi30IlwY=; b=iCySP4tntJrBT8JwNAX+YE3M8l
 sBbYWP5mU+y+7OYBh8zkvqw/a/LoSR5nT0fzCpQPxA4zG/TdNoEg3TzuPrpfw38aPXJeF5EFnK/1A
 pv/Gc2ZZFSpRRgazjfEgbl59g8BmEuzw//Fd1w3PPVU3ljrchruNY6LQnfulhVp9HNZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CmRix4rFhraibDlkM15hFC8u1AExqA5v1hbRi30IlwY=; b=P4/1DAJMdrmFHRHPgoDBRSGT3r
 0gXDgb+EyPUFNRBYTW95rSoDDKKNqnAdXq+RCubV9V9q5KsYJSJgZLTRH0JPSkcTIWN8tgbt6elIE
 6jMIwfZ9+e9FzY5KVdMUdG42RuXUksLpx4qyV9Ir/i312CqCb591iLj8UseZsUOv44RE=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1igg5f-006LbN-Kl
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 02:26:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6F6195BBA;
 Sun, 15 Dec 2019 21:26:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 15 Dec 2019 21:26:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=CmRix4rFhraib
 DlkM15hFC8u1AExqA5v1hbRi30IlwY=; b=qUP++nQaSX5/F1xKNcEHqlvHH5HCw
 7A6Iwt5QB2x5v0eppj8jFSN+vbh1bxKeKI6VKFdqI2+ppZALBN2oLrza2iaDf34t
 V8ej2pfkjYxqFQ+crU1e9KH6eMLrdCvj/sNmCrFnSnje3QjVUehhp2pukzTd6rfQ
 Tg5pU2xCc19dqM/Wkv7ejXzyCDTONRQ6frbthNtA0s12sbtt4D7Jwf7LhnET1sb7
 t/sEn0znpiA6Ki1Ng4Hx8o9VZ2IzzzMSA4fJbPRkz/ES9cdSQrrWSgSmbOgUQ0EH
 ZF1NJwNohw6UqeJgQ9kZoiXigTnaDuZDsVGV/5KXWJWL+QLswe6lhA2zA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=CmRix4rFhraibDlkM15hFC8u1AExqA5v1hbRi30IlwY=; b=IdiXdJfp
 O7e9Hy7BjmttkoGZPmLvpXWMkGK5+CVZFWRpppL/SjQbotzTynnrv1BkAog8aSNm
 sDUZ3+v9ZLXLJWY5DiU/CVl4gEwezTkZenvlB3rRhQpOLGWK2hDweQumtxY+Knqb
 /zzSFk/UWuA8ZYJB2sWJ87mouWJZw0MT9ZaDT4fEegZCg/nqmuSrk80lKckKMia1
 Q56MJVko7rzMbCO4qPcLkS73vcLsXURQOxsM5KgwOPGtP0s5ruemt0pjlMvKWBqf
 8yG9H8G4rDPvZwRg2qDFvwqvKpiJFcl1qPdYq1d+rQNyecvBx/WFt4CfvtMDT1fK
 8p044k6j+T6Mfw==
X-ME-Sender: <xms:Tuv2Xe-r4xngsPJy9ExMxXfV5r-sRLeqhLRN3mm_zp2jLnXQXXlX1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:Tuv2XYb8DkvSQfnYmnSWIB939BTVbvEehWC7CvXr4hjtryKgbORtdA>
 <xmx:Tuv2Xa_IQieSf6z-SdizQ4gX4uyKVrfnPJ9-fBbHgCGkLbrUPyXeHA>
 <xmx:Tuv2XajJSB_pBAmSdwifCmc62pt3zD7ce0dHdQ7q326VUEhNyjrbrg>
 <xmx:Tuv2XV5Zvax_0t0OPGT7B_FCw3LeBW1XNTOAKsW-DGVS0eKXjDro8Q>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id E2E2B80059;
 Sun, 15 Dec 2019 21:26:17 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Mon, 16 Dec 2019 12:57:40 +1030
Message-Id: <8aec8994bbe1186d257b0a712e13cf914c5ebe35.1576462051.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1igg5f-006LbN-Kl
Subject: [Openipmi-developer] [PATCH v2 1/3] dt-bindings: ipmi: aspeed:
 Introduce a v2 binding for KCS
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, haiyue.wang@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The v2 binding utilises reg and renames some of the v1 properties.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
v2: Rename slave-reg to aspeed,lpc-io-reg

Rob: After our discussion about the name of 'slave-reg' on v1 I've thought
about it some more and have landed on aspeed,lpc-io-reg. In v1 I argued that
the name should be generic and you suggested that if so it should go in a
generic binding document - I've thought about this some more and concluded that
it was hard to pin down exactly where it should be documented if it were
generic (the generic ASPEED LPC binding is one place, but that would suggest
that the property is still ASPEED-specific; maybe some discussion with
Nuvoton might give some insight).

Regardless, it turns out that the address specification is really
ASPEED-specific in this case: The KCS host interface in the LPC IO space
consists of a data and status register, but the slave controller infers the
address of the second from the address of the first and thus only the address
of the first can be programmed on the BMC-side. ASPEED supply documentation
that maps the LPC-side register layout for given LPC IO base addresses. I think
this is esoteric enough to warrant the aspeed prefix.

 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
index d98a9bf45d6c..193e71ca96b0 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
@@ -1,9 +1,10 @@
-* Aspeed KCS (Keyboard Controller Style) IPMI interface
+# Aspeed KCS (Keyboard Controller Style) IPMI interface
 
 The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
 (Baseboard Management Controllers) and the KCS interface can be
 used to perform in-band IPMI communication with their host.
 
+## v1
 Required properties:
 - compatible : should be one of
     "aspeed,ast2400-kcs-bmc"
@@ -12,14 +13,21 @@ Required properties:
 - kcs_chan : The LPC channel number in the controller
 - kcs_addr : The host CPU IO map address
 
+## v2
+Required properties:
+- compatible : should be one of
+    "aspeed,ast2400-kcs-bmc-v2"
+    "aspeed,ast2500-kcs-bmc-v2"
+- reg : The address and size of the IDR, ODR and STR registers
+- interrupts : interrupt generated by the controller
+- aspeed,lpc-io-reg : The host CPU LPC IO address for the device
 
 Example:
 
-    kcs3: kcs3@0 {
-        compatible = "aspeed,ast2500-kcs-bmc";
-        reg = <0x0 0x80>;
+    kcs3: kcs@24 {
+        compatible = "aspeed,ast2500-kcs-bmc-v2";
+        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
+        aspeed,lpc-reg = <0xca2>;
         interrupts = <8>;
-        kcs_chan = <3>;
-        kcs_addr = <0xCA2>;
         status = "okay";
     };
-- 
git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
