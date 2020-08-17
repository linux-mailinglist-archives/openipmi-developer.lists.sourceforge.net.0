Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C18624A0DD
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcT-00017E-9m; Wed, 19 Aug 2020 13:59:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bGH-0001rQ-IW; Mon, 17 Aug 2020 09:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mHuwQk3c70LEeVRDgRBhzwGDJ7nUBqanmZ13DbCY85U=; b=PIy0pUa29hVf0fkPLI6/VcEDmO
 97XzUM2jDsZ0VmGbNLAj0RUGASWwuo6ypPcYsWd10EKfhjZAxSx4K1rS0uWo60BAA6TfMYyC2KWdL
 m1VDL8jZbF+FOqafFvfybHZD9J9H5hFMFHavDizUViaNwT+ss3I/zTeoI5Hz0pn2w090=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mHuwQk3c70LEeVRDgRBhzwGDJ7nUBqanmZ13DbCY85U=; b=ldbIOVM3TjGLkVdmAjzhCkFmug
 UTyVHhOo6VAoY+RA2pVZgWlR63ZRfCQ2OjdMlB6A5LCNDr9uG6AHNxwUnPm9PTmV1UuhMF9/HZ9+h
 FLg9AKeNBGqxTzfKlxiqlQHJo4h47uox8FvEjJmHPKzE4RvKy0s4TphM5zybil0qBiLw=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bGF-00Gwdv-HR; Mon, 17 Aug 2020 09:17:01 +0000
Received: by mail-pg1-f195.google.com with SMTP id j21so7813411pgi.9;
 Mon, 17 Aug 2020 02:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mHuwQk3c70LEeVRDgRBhzwGDJ7nUBqanmZ13DbCY85U=;
 b=Q0W/VwIVXHBj9YvXRE65zmYYW7OKSwPOhFA7L33Jnm2I/2WYc9/mTcQlvMPBfa5gSN
 2RqBUwnnXPqHfFkY/kdefbonLsqR7U5QnIT6xXUYsUHSEwB7JUQ6IrBQUdhBLTxOi/+G
 33dCqGC85wIzu4sVwhJXWst+XXWWfIhuU8OS9PUM4VbvTcwe9jbpbtJAG7iSDqxdcBMW
 jNrLB+vMhlGjl4glI2SnqDDpzzN+Zo4iUN3eXnADBqhYOpdGyO3gibX0u2a/Ix6ZYq6q
 3i+c4VwSQrSpK5GhTuNnF/NK1R/BwbjbUR0kjNWUX1g/BGGcsZFog29tDD6yJ+HItruh
 1xKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mHuwQk3c70LEeVRDgRBhzwGDJ7nUBqanmZ13DbCY85U=;
 b=snA3X5nIak1kcnNL3k8U9gBvwnpJjDZp8AByrv7Fiwd0wiAqrKn5/IqY0emrEDsSJd
 0yRfGmLAnKH/ifvPZYXlcQQVx3U7sY6qvekPSN0fMjesq+YA4JMTEgJdD3Dp7kXtDAsL
 +DdkVDyQp9D65xT9OZnT5w92TB2F3QmQAWTDNYLdNs8N8wrLhSLgjkxhcvlVc4B5e2bj
 8ovZabrtEU/6KV992kOsQJPcWfU60mhTDR427sX/S/euQ0LRd6ZlFbKCMWa8jVQfwZEf
 22jvOeuarbyMZigABl4W8R5+V8rpflely0a1xPrtfGvFMto83KGWiKKl1USLrRFJCvoN
 ixwQ==
X-Gm-Message-State: AOAM532wtfcUm1BzIOiWQnMizaIGIGN0ipHIcTclTLVGCsbRC2zCws2v
 x3naBkqy2zox07RWLl1334o=
X-Google-Smtp-Source: ABdhPJwv96iWwUMvH8VXPkCg2sP5Tpy4AOwF/aDt/4dzgfyafzoO9ePqFKRKBzZcF9Jymu1V1GKZMg==
X-Received: by 2002:a63:5213:: with SMTP id g19mr8976321pgb.44.1597655813910; 
 Mon, 17 Aug 2020 02:16:53 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:16:53 -0700 (PDT)
From: Allen Pais <allen.cryptic@gmail.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 3chas3@gmail.com, axboe@kernel.dk, stefanr@s5r6.in-berlin.de,
 airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org,
 James.Bottomley@HansenPartnership.com, kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
 ulf.hansson@linaro.org, mporter@kernel.crashing.org, alex.bou9@gmail.com,
 broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org
Date: Mon, 17 Aug 2020 14:45:56 +0530
Message-Id: <20200817091617.28119-2-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k7bGF-00Gwdv-HR
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:08 +0000
Subject: [Openipmi-developer] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, Romain Perier <romain.perier@gmail.com>,
 keescook@chromium.org, linux-parisc@vger.kernel.org,
 linux-ntb@googlegroups.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-atm-general@lists.sourceforge.net,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Allen Pais <allen.lkml@gmail.com>,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Allen Pais <allen.lkml@gmail.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/block/umem.c    | 6 +++---
 drivers/block/xsysace.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/block/umem.c b/drivers/block/umem.c
index 2b95d7b33b91..320781d5d156 100644
--- a/drivers/block/umem.c
+++ b/drivers/block/umem.c
@@ -405,7 +405,7 @@ static int add_bio(struct cardinfo *card)
 	return 1;
 }
 
-static void process_page(unsigned long data)
+static void process_page(struct tasklet_struct *t)
 {
 	/* check if any of the requests in the page are DMA_COMPLETE,
 	 * and deal with them appropriately.
@@ -415,7 +415,7 @@ static void process_page(unsigned long data)
 	 */
 	struct mm_page *page;
 	struct bio *return_bio = NULL;
-	struct cardinfo *card = (struct cardinfo *)data;
+	struct cardinfo *card = from_tasklet(card, t, tasklet);
 	unsigned int dma_status = card->dma_status;
 
 	spin_lock(&card->lock);
@@ -891,7 +891,7 @@ static int mm_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 	if (!card->queue)
 		goto failed_alloc;
 
-	tasklet_init(&card->tasklet, process_page, (unsigned long)card);
+	tasklet_setup(&card->tasklet, process_page);
 
 	card->check_batteries = 0;
 
diff --git a/drivers/block/xsysace.c b/drivers/block/xsysace.c
index 5d8e0ab3f054..bdd50a87d10f 100644
--- a/drivers/block/xsysace.c
+++ b/drivers/block/xsysace.c
@@ -762,9 +762,9 @@ static void ace_fsm_dostate(struct ace_device *ace)
 	}
 }
 
-static void ace_fsm_tasklet(unsigned long data)
+static void ace_fsm_tasklet(struct tasklet_struct *t)
 {
-	struct ace_device *ace = (void *)data;
+	struct ace_device *ace = from_tasklet(ace, t, fsm_tasklet);
 	unsigned long flags;
 
 	spin_lock_irqsave(&ace->lock, flags);
@@ -1001,7 +1001,7 @@ static int ace_setup(struct ace_device *ace)
 	/*
 	 * Initialize the state machine tasklet and stall timer
 	 */
-	tasklet_init(&ace->fsm_tasklet, ace_fsm_tasklet, (unsigned long)ace);
+	tasklet_setup(&ace->fsm_tasklet, ace_fsm_tasklet);
 	timer_setup(&ace->stall_timer, ace_stall_timer, 0);
 
 	/*
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
