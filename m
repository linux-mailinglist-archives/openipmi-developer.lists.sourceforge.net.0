Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF7324A0EC
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-0001BD-Lz; Wed, 19 Aug 2020 13:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bJ3-000257-LK; Mon, 17 Aug 2020 09:19:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rg9O+UuIrcRklqdLDyvqN900SVFxVyljAa/s7srCNnQ=; b=NiDRnJnHPc9cz931UlozIigqIA
 vxtRgjQ2w5cnBMv/x5Bwv/h+S+LKrh7gRbUvs4dWAd0hoa/JV0MrN1iHWzOKJt6d/DHmazg96bWGe
 agIfVBJ4eaSYlVBm5I8elwsFTVpeF4MCdk8jtu6xjE3ocAjz1y5muhCBvC4Ir3MT3Im4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rg9O+UuIrcRklqdLDyvqN900SVFxVyljAa/s7srCNnQ=; b=Qaa4ZhtwK/nPCDuvMWZl+vNjL4
 9K9FaooaSxUY5TvWcq3bCk/f5yXkm+ZRfDNISxlcFUjWWFXo5osUpa8lJpD27uJBj/20snSmCrHUB
 lc1zGxMW0SVUYfWBKy3aDgn9h/YMW0EvVR48ULfOF+Ckl4/DKbsPdPdMT5YSVsOFZC0g=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bJ0-00E77V-Ot; Mon, 17 Aug 2020 09:19:52 +0000
Received: by mail-pl1-f195.google.com with SMTP id y6so7207067plt.3;
 Mon, 17 Aug 2020 02:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rg9O+UuIrcRklqdLDyvqN900SVFxVyljAa/s7srCNnQ=;
 b=WvuNpwFGNWbf3ugG14n+zwKOY/otFa6nSLps1Uk3WhYO9QhlgfX29+70gj4yecSVqe
 YmEaWyKwvwZLdqCS1f4rjFzeI/WYV2mrJXFqK7u1fv3j1mD6vv7ArpSQ8eB9kebxavUo
 v4gjm/SQe2dmKaNUs5jSYqEpMcOQLTy1XStSEI/HRZPc81UrOC06O4IvkZlb9P+d+J9+
 6iZP3dRMy48wvQtGHCCdONIoXtX+tgg7bwCEGbZzuseWjZ9rC+VhjkH7FoBRe7RFBqof
 Eu7g0wB9F52zpe5wgpjT7872Gbi0ZB7cwZGvpBfTBYz4nR6UMl9C43xvhapmPwtLTJTg
 rU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rg9O+UuIrcRklqdLDyvqN900SVFxVyljAa/s7srCNnQ=;
 b=gkFmq0dmqGcvB/2T50rchF3SpJHrPX1a774DA01CwZ/BL8axx9Cl/Kno1lzbovCJHt
 wN3ywRt3VinsrJ+y/4kZ9sUGZ8SKWg8sHFboqcI3aNYNmfoX8hapbbxzfWI7WKQe2clr
 FkkNK+kVAR5/G7ZIKW3+vsMVdi/tF9DGMXwlZ8q+HQCS4mkrel+vGFtHT038czz/tdhr
 e72Al3hQOkOZ6IbDCndQI+uGZ/VzSVpeqvnRwK4Qhv+oASGuWEpF4K2FyVFekEkz/1fM
 WfzP7JwvIuZJrro8cV60x+TCKFzFRrrxc/sRPBvQxZff8XXvmxQVZ2oifBfpS9/HjsbP
 Svkw==
X-Gm-Message-State: AOAM531HCTxd9WNeFBt0SkMCVt70OdD+iAlO+iozNIpj4rBUgSVGm9qB
 rQ5sdl/qK5B7WfNoj/v2IQ2H5K27nQiamQ==
X-Google-Smtp-Source: ABdhPJxVPsBMIEeexKvgRfN8Y85NhtB5FsOgXp8HBPraiCyANuba28QRU7wOPQwsX7fudbCrO/coPA==
X-Received: by 2002:a17:902:6b05:: with SMTP id
 o5mr10459515plk.173.1597655985094; 
 Mon, 17 Aug 2020 02:19:45 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:44 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:09 +0530
Message-Id: <20200817091617.28119-15-allen.cryptic@gmail.com>
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
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7bJ0-00E77V-Ot
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH 1/2] memstick: jmb38x: convert tasklets
 to use new tasklet_setup() API
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
 drivers/memstick/host/jmb38x_ms.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/memstick/host/jmb38x_ms.c b/drivers/memstick/host/jmb38x_ms.c
index 4a6b866b0291..2bcf5ce113bd 100644
--- a/drivers/memstick/host/jmb38x_ms.c
+++ b/drivers/memstick/host/jmb38x_ms.c
@@ -603,10 +603,10 @@ static void jmb38x_ms_abort(struct timer_list *t)
 	spin_unlock_irqrestore(&host->lock, flags);
 }
 
-static void jmb38x_ms_req_tasklet(unsigned long data)
+static void jmb38x_ms_req_tasklet(struct tasklet_struct *t)
 {
-	struct memstick_host *msh = (struct memstick_host *)data;
-	struct jmb38x_ms_host *host = memstick_priv(msh);
+	struct jmb38x_ms_host *host = from_tasklet(host, t, notify);
+	struct memstick_host *msh = host->msh;
 	unsigned long flags;
 	int rc;
 
@@ -868,7 +868,7 @@ static struct memstick_host *jmb38x_ms_alloc_host(struct jmb38x_ms *jm, int cnt)
 	host->irq = jm->pdev->irq;
 	host->timeout_jiffies = msecs_to_jiffies(1000);
 
-	tasklet_init(&host->notify, jmb38x_ms_req_tasklet, (unsigned long)msh);
+	tasklet_setup(&host->notify, jmb38x_ms_req_tasklet);
 	msh->request = jmb38x_ms_submit_req;
 	msh->set_param = jmb38x_ms_set_param;
 
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
