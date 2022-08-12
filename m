Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C81B59129D
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Aug 2022 17:06:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oMWEm-0007pn-Pt;
	Fri, 12 Aug 2022 15:06:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@aj.id.au>) id 1oMWEl-0007pc-NL
 for openipmi-developer@lists.sourceforge.net;
 Fri, 12 Aug 2022 15:06:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nFAyZba+rUSSpa4dMw5jpMYFEbkfzVnF4ksUNlmVM3A=; b=QaTv1KMHWBwAOjP7MUSnuhL8hl
 cCAL47Az+9CUgSZAT1qb+iRWc0PF8yj5H3kSousN9VIKWekqIR2bNQXK42REDBJJktB/+Bplw/Sjm
 a+e5iccEOe3tIthKYrbFNd26RxEPmq2TXCAeUkohRHoDwYjAG6jxSwKaduKwAbrEarRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nFAyZba+rUSSpa4dMw5jpMYFEbkfzVnF4ksUNlmVM3A=; b=O
 ZkAW464L7Av3wTJ+RCqbjk72LofIMpLPA1+axUHvV7WnbRXqzvNj3b5ZsgHiUvX1gD/iuA8Zv8Y/p
 flTFsdqgedOXJxfqlhYdFBidTDsr2zQabwpu0UXxaeYWmhYTSYAlbNFYbs9EvCabdZ1d+xKDwm8Y5
 kdLQJQXkq/1U+GTU=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oMWEf-00DVCW-CP
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Aug 2022 15:06:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 047E532007F0;
 Fri, 12 Aug 2022 10:48:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 12 Aug 2022 10:48:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
 :cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :message-id:mime-version:reply-to:sender:subject:subject:to:to;
 s=fm3; t=1660315689; x=1660402089; bh=nFAyZba+rUSSpa4dMw5jpMYFE
 bkfzVnF4ksUNlmVM3A=; b=aBWH05Od0HQ74QiuPgre2ttFPk/yRPqxtG7J3wILw
 pN9tIc6SYBKLJjQ6KHnvN18/vLLxbNhfDuaEUw+4Vj29AxsLDMOf+s5LGZPmOvdY
 K0tEsG2JW/ITmwGyIRngtZiHkYjao0cug5P+tDPlUn4pTD/anny5mIdAh3gaEJOq
 sXcwIyY0/Nay1ajcFPpHMN3qGT48oXkEkoFkiSOCHvejBTBMKhjjSVeTy5wTEUke
 gReJsmeJPDisCQr4N7ObzUl/KEFJqBa3D9qD3AP/I2fd9tm7L0LfMcFuPWzs6rSe
 wDNOCG3f1SnqbmewhS1FzyV/p+BTSnuDN8TdNySipohBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1660315689; x=1660402089; bh=nFAyZba+rUSSpa4dMw5jpMYFEbkfzVnF4ks
 UNlmVM3A=; b=BihLiXC4PtN2SfU+VBV4DM4mEGnvTGkeAlF76WFLDpPtsdd6EyW
 e37t73EA8IFPtt3fToOOP+B/ifL4pxW9mDcVzHonzNgLr33xrvY6qMlH7lrYaK9i
 mSCg7OtX4wdzNtWiC2HJeSNv8b+LHwus+ZyQz1CG7ctYzz9Q4cA6Xkwsu9aIWBin
 5iyyveb1gQUWPlncAJZjadHrXvRqSwhDYqd1bG2zlwSL+7MNxD290cqWXcVKy9J8
 teZQDNLC/l+zbEZVPuSvrV0aTLbbnCp7NnTxJBQDuCzqbZ0gBm5a3JOCUDvqfV5f
 8NWdUYnmmIefT41RTs9uDzXZPb8H4V0aUjw==
X-ME-Sender: <xms:KGj2YhGpHq2WIrq7pE725XRiIoCZuPX54xRzi2tLqVvtG7iikGyE-w>
 <xme:KGj2YmVelSMbeOLBszGJHZvx_j8xIk1zEkiDmSirizDm8MEUHlGH6wf_EbxdNG9lx
 VyEg0KOd87nXpowuQ>
X-ME-Received: <xmr:KGj2YjJH5Ou5yStvqlggt-3S3VPopiDVqGkaU3UvtJont5VMnoETjhPeFiXp47p5MIIbl9pQsT94gh5XWiJTCHJjy3CJipVCHoNWDbR8-sdcgSiNd40Z_8tNxbSLtEehX88>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdegiedgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucggtffrrghtthgvrhhnpefhfefghfdtteehvddufefgtdelfeehge
 ekvddthfehgedvkeevvddutdehgeefieenucevlhhushhtvghrufhiiigvpedtnecurfgr
 rhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:KGj2YnGoJMsaWvT6ybbpz7J_NwW1p2UPp55Jkc6ri5GLO5h8Dl1fqw>
 <xmx:KGj2YnUCYfC1CLewAtzjPcceTe6yPk9DYzGxXV4dBvh-zinJel4LlQ>
 <xmx:KGj2YiPGRbwDLiLwb-4PJMzLr7vyvceKoXb7jG0z5vn0yuS2f4SoDA>
 <xmx:KWj2Ytd-LzVJnPfa4mOq4QVSvWXfHt3jFAsYW6FPwB_XzLWRruUe_Q>
Feedback-ID: idfb84289:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 10:48:05 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Sat, 13 Aug 2022 00:17:41 +0930
Message-Id: <20220812144741.240315-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The ASPEED KCS devices don't provide a BMC-side interrupt
 for the host reading the output data register (ODR). The act of the host
 reading
 ODR clears the output buffer full (OBF) flag in the status re [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oMWEf-00DVCW-CP
Subject: [Openipmi-developer] [PATCH] ipmi: kcs: Poll OBF briefly to reduce
 OBE latency
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
Cc: minyard@acm.org, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The ASPEED KCS devices don't provide a BMC-side interrupt for the host
reading the output data register (ODR). The act of the host reading ODR
clears the output buffer full (OBF) flag in the status register (STR),
informing the BMC it can transmit a subsequent byte.

On the BMC side the KCS client must enable the OBE event *and* perform a
subsequent read of STR anyway to avoid races - the polling provides a
window for the host to read ODR if data was freshly written while
minimising BMC-side latency.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index cdc88cde1e9a..417e5a3ccfae 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -399,13 +399,31 @@ static void aspeed_kcs_check_obe(struct timer_list *timer)
 static void aspeed_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 state)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
+	int rc;
+	u8 str;
 
 	/* We don't have an OBE IRQ, emulate it */
 	if (mask & KCS_BMC_EVENT_TYPE_OBE) {
-		if (KCS_BMC_EVENT_TYPE_OBE & state)
-			mod_timer(&priv->obe.timer, jiffies + OBE_POLL_PERIOD);
-		else
+		if (KCS_BMC_EVENT_TYPE_OBE & state) {
+			/*
+			 * Given we don't have an OBE IRQ, delay by polling briefly to see if we can
+			 * observe such an event before returning to the caller. This is not
+			 * incorrect because OBF may have already become clear before enabling the
+			 * IRQ if we had one, under which circumstance no event will be propagated
+			 * anyway.
+			 *
+			 * The onus is on the client to perform a race-free check that it hasn't
+			 * missed the event.
+			 */
+			rc = read_poll_timeout_atomic(aspeed_kcs_inb, str,
+						      !(str & KCS_BMC_STR_OBF), 1, 100, false,
+						      &priv->kcs_bmc, priv->kcs_bmc.ioreg.str);
+			/* Time for the slow path? */
+			if (rc == -ETIMEDOUT)
+				mod_timer(&priv->obe.timer, jiffies + OBE_POLL_PERIOD);
+		} else {
 			del_timer(&priv->obe.timer);
+		}
 	}
 
 	if (mask & KCS_BMC_EVENT_TYPE_IBF) {
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
