Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD61124A0E1
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcW-00018f-PX; Wed, 19 Aug 2020 13:59:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bHM-0000v9-7P; Mon, 17 Aug 2020 09:18:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b4rgdbawNMIYfrAuQkyVo4UViOG64WWeDycX+5MFQIw=; b=MC/o9gZzFGm3lsgfWYDKDjERrH
 UXbaZlSD/Mp97o2t2yOI68xfVGvD8JJ5iT7p4UJFq5lbeKBmIDNNdgBbLF7U6UYyQO8EWN637OW7N
 JoAvxTx18tXU2lyjnsR2A/LnRAg1cHS05lbCpGWnqkdP+nGH4kXH/GudIWumN8pCLrFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b4rgdbawNMIYfrAuQkyVo4UViOG64WWeDycX+5MFQIw=; b=FjTHn/CGh8xjrwEV9CADDAykKl
 dgPdlfCAY7hFm5s1tZtFr3UCkxm/hcLtEr5wcFcw8kZpoEAG09mhxqXIxBniH6PvpWUbS11P9u37k
 4i9hCS/ADREYi9oocTm7cjsT334/zHSOEekBMmX9o/B+vu7s7AIX54ph/jmAxHtZuGo4=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bHJ-00Gwi0-75; Mon, 17 Aug 2020 09:18:06 +0000
Received: by mail-pj1-f66.google.com with SMTP id ha11so7405677pjb.1;
 Mon, 17 Aug 2020 02:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b4rgdbawNMIYfrAuQkyVo4UViOG64WWeDycX+5MFQIw=;
 b=PyMcWayBkiZh2L1sh4qEZP3dTK3G8sAqxmaVVytXPS3SWG3GgG94sw6o0Nrcf1df+Q
 wERBWbwHQv6Qgu7hNTSGUUVnjknbD/6NI8hJDMspn8CczdQvJPM76KBjotTKq1nRqCMz
 PeaUjGlQDtl3+8tYa2241Lt0gFMVJ1Pj2m5WjIwAk0QPXbTouobbDDQHD7yRGFSTHJfF
 TGVqoP9D0FSDOwtCHrJQip7z1NvCco4b1IQwWbk2n5T8eRS7cLsH017gTERiI8GS8Tqs
 077uDrcWAyQImiWo67W3QAf+RCwJGajol8woY3NpuxxUzfr5gmwXTFilhRPsJnsV/onK
 O2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b4rgdbawNMIYfrAuQkyVo4UViOG64WWeDycX+5MFQIw=;
 b=W9AHa/xYJ1VpzfUQeTrzoHGvmE0DJcpsWD+Rjugm8uN5DF02njBx8RTKCQX0n9qUjq
 j/t3rbFfJ9tFAQr7pFhZFsQHU1vJlw4ufIQQBY+0sU79fEr/e2cpfWbPxBcqlW/jVfjI
 rhD08N65i37SxvdOv4WjraVM6o3M/5sdlysz8ZLmXa6jeK+cgrRPkbPNJfL1E/Gr/xqZ
 knFyDyWkpsn/t94Rz9uDIZpIs+QTswvjOkoZVyGN6H3+ngstkomIhiKGXjP96OkYhgLp
 hF2nnzxq2c30q3Skms6kKdzXzciG/vQeZ3XjiHAJQiF0eZYMxk+81UBDSFLPyKilQpZ8
 ODPQ==
X-Gm-Message-State: AOAM530Gn5LGFuMt/uGjEMXU8S92psc76PZq53rYbsTJlh3JadzSRF7H
 o2sImM1I0n8/8P7L6ZwQpfM=
X-Google-Smtp-Source: ABdhPJwJpNSWTk4IID0rEMXxIuI6kibpl/4HWTcEM39pCyHeMQh+u9mKWbVjT3TDQxfuQPdXa1o+UA==
X-Received: by 2002:a17:90a:a65:: with SMTP id
 o92mr11920119pjo.104.1597655879719; 
 Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:01 +0530
Message-Id: <20200817091617.28119-7-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7bHJ-00Gwi0-75
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH] drivers: rapidio: convert tasklets to
 use new tasklet_setup() API
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
 drivers/rapidio/devices/tsi721_dma.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/rapidio/devices/tsi721_dma.c b/drivers/rapidio/devices/tsi721_dma.c
index d375c02059f3..4a2bb6d7c692 100644
--- a/drivers/rapidio/devices/tsi721_dma.c
+++ b/drivers/rapidio/devices/tsi721_dma.c
@@ -566,9 +566,9 @@ static void tsi721_advance_work(struct tsi721_bdma_chan *bdma_chan,
 		  bdma_chan->id);
 }
 
-static void tsi721_dma_tasklet(unsigned long data)
+static void tsi721_dma_tasklet(struct tasklet_struct *t)
 {
-	struct tsi721_bdma_chan *bdma_chan = (struct tsi721_bdma_chan *)data;
+	struct tsi721_bdma_chan *bdma_chan = from_tasklet(bdma_chan, t, tasklet);
 	u32 dmac_int, dmac_sts;
 
 	dmac_int = ioread32(bdma_chan->regs + TSI721_DMAC_INT);
@@ -988,8 +988,7 @@ int tsi721_register_dma(struct tsi721_device *priv)
 		INIT_LIST_HEAD(&bdma_chan->queue);
 		INIT_LIST_HEAD(&bdma_chan->free_list);
 
-		tasklet_init(&bdma_chan->tasklet, tsi721_dma_tasklet,
-			     (unsigned long)bdma_chan);
+		tasklet_setup(&bdma_chan->tasklet, tsi721_dma_tasklet);
 		list_add_tail(&bdma_chan->dchan.device_node,
 			      &mport->dma.channels);
 		nr_channels++;
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
