Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3130875EB9
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jul 2019 08:06:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hqtMs-0002Ar-SC; Fri, 26 Jul 2019 06:06:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1hqtMr-0002Af-6n
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 06:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N21lR+UePFSTSOonw/4Zqd1zUZuquw1QFMaclxAMTOA=; b=bYzfMr8cQB02oDPdZ9Wj61bG4C
 vRJQbj4/e1L1L6UgabMRJzj6CIooFD6BQTH9VhSEcjn5eflp/0UczRxxcmOMO0IdJ4HOncVGzNk4C
 zEG4luML9mEq6ESaAZWdJ7ucC0BUaoAKAJiygagkcjukA1kXvCPQnpJJV5LrLcO5887k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N21lR+UePFSTSOonw/4Zqd1zUZuquw1QFMaclxAMTOA=; b=f2Lxsbp+acvIdsDXEWhEL9IlxG
 rwJatPtfHrkYAvWYFhsZv/CnR8cuKjMKDLCQgs5QqB5OIBWo7/hUyHZUJxeg7XeTUT4zKjDcGOPrZ
 tJbPfXAdg6VuIcrHRPzX+g5jpNq20incwpz9q03UF5lGuq2ICcysh0cNDc7PscRc8/t4=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqtMp-00H4XE-9k
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 06:06:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 013904354;
 Fri, 26 Jul 2019 01:40:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=N21lR+UePFSTS
 Oonw/4Zqd1zUZuquw1QFMaclxAMTOA=; b=jo8iGeq1m8yt8zAmXX/flAhKvSEtg
 WYJ1i6T7YcE5DCu9bvy4//qdzKcdYYhNohYCcriWGhFAXD3bQUEM2KT5Wew2IC27
 gulXrf41UM9uiYY2H5t+ikWmu4m3XfVwBS7M6bCchg+uFf2tVbs55dOCNO3st/wJ
 Z/fXGLKBxkB7uvcjg7UQV5xM3s2nqAjRgEFoa1MKiC4QA9Nf+oPCl7hWkTAhHJQK
 t12HMX88EyrXOhUp7NAFKN2E3xdkYAgX1FhjKBHrdSgWUV5KTR/Lh2OA4oZ42EjJ
 aKHpczQ7k9wxMKWAEnK4/AIOcmkVC6rLrFaoyinNUDvNsMqZJ+WF+60ZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=N21lR+UePFSTSOonw/4Zqd1zUZuquw1QFMaclxAMTOA=; b=p8Oorf8g
 IUOpF4VAnSxAfJw+VJX2INYAsSTTwFkwxD10LfL7VKhs+4m0DyHjtAJJ0OVXAHiU
 u3IO5bJ9A/uZxMtX0UPuGZl0sO5We1CQT60AN8ceWUc18ICxbUslYbskjH+64uS7
 3bwUz+/mXQ9XL4VD1htxZLIcj3zXgubiLd/krQ2gke+YaRd+Z05QFTryr3qKSHig
 jAxi2mEbWWCoECey/nD37TdfmPKRnxr/R/IIc1lpM24StPOyOkuc0riAY7djA25W
 uA2NSP5Qg+oJ1GegOMCLxensRd3ukx6uPgQw0iTZEfHYDSlcH5XBMBrgJs4A7tXV
 quP7GOrh3ocrvw==
X-ME-Sender: <xms:YpI6XZBXHBUjkTamzgVJaJX3ZZIF043dEm-8dSubgkdA6W7ZyNmvIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedv
X-ME-Proxy: <xmx:YpI6XVauUYUaL6w-Ojy8DaeMEEg31_SL-iuxMs0zg_y8dm91cbzpOw>
 <xmx:YpI6XdryhR13X_J2SV_VZwHrmVvXr84Y0NIXLDZBVTaLjAP1c5h9yw>
 <xmx:YpI6XVCgQnK2xnZv0GuV63LRFCER4n75Y_rZVJCTiPza2RuyYipQLQ>
 <xmx:YpI6XZkqLpkruswpMA1AwEToQAPhlxpqqrPsJGLOg-jkJeGTjfmePw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 76394380076;
 Fri, 26 Jul 2019 01:40:46 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Date: Fri, 26 Jul 2019 15:09:55 +0930
Message-Id: <20190726053959.2003-14-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hqtMp-00H4XE-9k
Subject: [Openipmi-developer] [RFC PATCH 13/17] dt-bindings: ipmi: aspeed:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The v2 binding utilises reg and renames some of the v1 properties.

Cc: Haiyue Wang <haiyue.wang@linux.intel.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 .../bindings/ipmi/aspeed-kcs-bmc.txt          | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
index d98a9bf45d6c..76b180ebbde4 100644
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
+- slave-reg : The host CPU IO map address
 
 Example:
 
-    kcs3: kcs3@0 {
-        compatible = "aspeed,ast2500-kcs-bmc";
-        reg = <0x0 0x80>;
+    kcs3: kcs@24 {
+        compatible = "aspeed,ast2500-kcs-bmc-v2";
+        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
         interrupts = <8>;
-        kcs_chan = <3>;
-        kcs_addr = <0xCA2>;
+        slave-reg = <0xca2>;
         status = "okay";
     };
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
