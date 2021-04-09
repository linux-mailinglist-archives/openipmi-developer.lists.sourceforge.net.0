Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B2F359524
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 08:07:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUkJA-000696-1F; Fri, 09 Apr 2021 06:07:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lUkJ8-00068y-KT
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 06:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xv1zETl1iB5irtIRE5Ue6naQ2DCplT+Qow5AJr+u6Gs=; b=hgO7Z4M7Qty1fXdwYh2N1ZYii8
 k1IC96OxkNKCq0h5bm3IWzYXUN1/9y41o+w8TJnwHyk49XWkHqjSQkFA2DIXLh9ognRpZNhXlXzYY
 0Nt1k71J6pIhuPm6sfmjFaHnctVtIiHZZLI2gtpk7H1NDwYK5iyxCzmNkZwbp20PRtGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xv1zETl1iB5irtIRE5Ue6naQ2DCplT+Qow5AJr+u6Gs=; b=dN2AkP3X0WuLTyOxHVe8USgGqc
 +QpeSFFdVujwEwgrtl61YNqAAdK4F1FTqNDuUCm8OFyLBIOlT9knKRmc5wSH+rPEQVBQzc370AfIY
 jazf4corYKxbmRVUAXjJ6f/utgu9KyVU/YeXgtorObVt+iRua+LzNvjOl0tTE7p4t6mk=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUkIV-0004aA-Vd
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 06:07:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6DB6F5806D9;
 Fri,  9 Apr 2021 02:07:10 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Fri, 09 Apr 2021 02:07:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=xv1zETl1iB5irtIRE5Ue6naQ2DCplT+
 Qow5AJr+u6Gs=; b=pEb+ianfzwAfRDEaTJOMTUMGKZNZYn8XI6eeOcIkxBcld2V
 0M0yMx7Ah9L4jojZhSlx4UtoSkAxW2Sr+BMNKvQoO7YIfRSTdGy4sR1AD21Szs27
 QrM2oVZsX3Hwf7vdRudLdaGCs3savGhxKWLevdjJW/FMWR3BhLFt/MVWSE8ZrEQb
 M7Ar/Xi5NIVYWVhuK4+UoezUSbdQMEd4CIvReWCPtK6ofhCoqeq2cvkIT3IWt9tA
 tUiSZukAr+mAJTCB3BZqxOOx7PtBUlQ96Kz85MV7TUq+8kx0Q4QD0SHKW213E4IG
 3O2KyER/4YH6taX4pASQVGSZbCYopHNoKiipe7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=xv1zET
 l1iB5irtIRE5Ue6naQ2DCplT+Qow5AJr+u6Gs=; b=LNxNQJGg/cAvzOj+gc1zjg
 bHwAZiLz6xx66pPDxqS3TOkm0gm/sRfbipxCup5hkiDOUVcGUm2taLQSKiCnGnXw
 ffv+D+EFJ/AuG1YlKvGL8vt5GekgU1VTKNE6jede9OVirWADAt/VMB8v0Tm61ez3
 bWXhr6yOU3iQJPogaShBTLD5Cv9eTPuurqMskW6QZOJXvqIY6E7iCBkHyJkkBqo2
 OxcKxvUy0xfCQADymsmWW/N6JbD+zCXI0ScTFLMBLCScEqRaAtZKvPwW5OE+2ruR
 m+z9FbTHN1XUHLvR/KVtcAb6RQBRcW5Z5dZIHx00NIS2fUCV2V3Ax/Uaqp67dcVA
 ==
X-ME-Sender: <xms:De9vYAokWYs_woEEpDZLo6d6Bh8FdNcZKbKeykDkmgluY2Mcl2by-g>
 <xme:De9vYGpwg5ij96Fz9T01aXrgC21EPAPHhWgYDsRCeMLldtsz4ucqowCNuhMvHClkY
 jzsT146aK3Ogb3xgg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudektddguddtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtf
 frrghtthgvrhhnpedutddtkeeugeegvddttdeukeeiuddtgfeuuddtfeeiueetfeeileet
 tedvtdfhieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:De9vYFNxDoxdpRtlQApYCyglGczswlSyLi9x6VutS_BzFEJHwegi_Q>
 <xmx:De9vYH4-XlOH5s6ehFTXQFJt5wqW9OLxHRHuoMAdu1csFLGKR_6jug>
 <xmx:De9vYP6TsUe2YdppspqDimLN9HgsKChjdsl7Ah30P_7Gi5YDobpNtA>
 <xmx:Du9vYDqXfFY-7SZ8-4TKPT40dkraw-aY6048pTAkU2jPnR5Q3tYchQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 7C074A0007C; Fri,  9 Apr 2021 02:07:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <e5c84ec2-5fe7-4f29-866a-331f652edd79@www.fastmail.com>
In-Reply-To: <YG/RkB07Wh69/xdu@packtop>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-11-andrew@aj.id.au> <YG/RkB07Wh69/xdu@packtop>
Date: Fri, 09 Apr 2021 15:36:48 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Zev Weiss" <zweiss@equinix.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUkIV-0004aA-Vd
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_v2_11/21=5D_ipmi=3A_kcs?=
 =?utf-8?q?=5Fbmc=3A_Split_headers_into_device_and_client?=
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 9 Apr 2021, at 13:31, Zev Weiss wrote:
> On Fri, Mar 19, 2021 at 01:27:42AM CDT, Andrew Jeffery wrote:
> >Strengthen the distinction between code that abstracts the
> >implementation of the KCS behaviours (device drivers) and code that
> >exploits KCS behaviours (clients). Neither needs to know about the APIs
> >required by the other, so provide separate headers.
> >
> >Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >---
> > drivers/char/ipmi/kcs_bmc.c           | 21 ++++++++++-----
> > drivers/char/ipmi/kcs_bmc.h           | 30 ++++++++++-----------
> > drivers/char/ipmi/kcs_bmc_aspeed.c    | 20 +++++++++-----
> > drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 39 ++++++++++++++++++---------
> > drivers/char/ipmi/kcs_bmc_client.h    | 29 ++++++++++++++++++++
> > drivers/char/ipmi/kcs_bmc_device.h    | 19 +++++++++++++
> > drivers/char/ipmi/kcs_bmc_npcm7xx.c   | 20 +++++++++-----
> > 7 files changed, 129 insertions(+), 49 deletions(-)
> > create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
> > create mode 100644 drivers/char/ipmi/kcs_bmc_device.h
> >
> >diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> >index 709b6bdec165..1046ce2bbefc 100644
> >--- a/drivers/char/ipmi/kcs_bmc.c
> >+++ b/drivers/char/ipmi/kcs_bmc.c
> >@@ -1,46 +1,52 @@
> > // SPDX-License-Identifier: GPL-2.0
> > /*
> >  * Copyright (c) 2015-2018, Intel Corporation.
> >+ * Copyright (c) 2021, IBM Corp.
> >  */
> >
> > #include <linux/module.h>
> >
> > #include "kcs_bmc.h"
> >
> >+/* Implement both the device and client interfaces here */
> >+#include "kcs_bmc_device.h"
> >+#include "kcs_bmc_client.h"
> >+
> >+/* Consumer data access */
> >+
> > u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
> > {
> >-	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
> >+	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
> > }
> > EXPORT_SYMBOL(kcs_bmc_read_data);
> >
> > void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
> > {
> >-	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
> >+	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
> > }
> > EXPORT_SYMBOL(kcs_bmc_write_data);
> >
> > u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
> > {
> >-	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
> >+	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
> > }
> > EXPORT_SYMBOL(kcs_bmc_read_status);
> >
> > void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
> > {
> >-	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
> >+	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
> > }
> > EXPORT_SYMBOL(kcs_bmc_write_status);
> >
> > void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
> > {
> >-	kcs_bmc->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
> >+	kcs_bmc->ops->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
> > }
> > EXPORT_SYMBOL(kcs_bmc_update_status);
> >
> >-int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc);
> > int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
> > {
> >-	return kcs_bmc_ipmi_event(kcs_bmc);
> >+	return kcs_bmc->client.ops->event(&kcs_bmc->client);
> > }
> > EXPORT_SYMBOL(kcs_bmc_handle_event);
> >
> >@@ -60,4 +66,5 @@ EXPORT_SYMBOL(kcs_bmc_remove_device);
> >
> > MODULE_LICENSE("GPL v2");
> > MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
> >+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
> > MODULE_DESCRIPTION("KCS BMC to handle the IPMI request from system software");
> >diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
> >index bf0ae327997f..a1350e567723 100644
> >--- a/drivers/char/ipmi/kcs_bmc.h
> >+++ b/drivers/char/ipmi/kcs_bmc.h
> >@@ -8,6 +8,15 @@
> >
> > #include <linux/miscdevice.h>
> >
> >+#include "kcs_bmc_client.h"
> >+
> >+#define KCS_BMC_EVENT_NONE	0
> >+#define KCS_BMC_EVENT_HANDLED	1
> 
> Is there a particular reason we're introducing these macros and using an
> int return type for kcs_bmc_client_ops.event instead of just having it
> be irqreturn_t?  Other event types or outcomes we're anticipating needing
> to handle maybe?

In earlier iterations of the patches I was doing some extra work in the 
event handling path and felt it was useful at the time. However I've 
refactored things a little and this may have outlived its usefulness.

I'll reasses!

> 
> >+
> >+#define KCS_BMC_STR_OBF		BIT(0)
> >+#define KCS_BMC_STR_IBF		BIT(1)
> >+#define KCS_BMC_STR_CMD_DAT	BIT(3)
> 
> The first two of these macros are used later in the series, but the third
> doesn't end up used at all I think?

I think I just added it as documentation as the hardware-defined bits 
aren't contiguous.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
