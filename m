Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3264E24A0DC
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcR-00016r-NF; Wed, 19 Aug 2020 13:59:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bG5-0000Xp-Qq; Mon, 17 Aug 2020 09:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nYi1qCRVXukm3Vys4Ax0zzpvhrxgpQ9/OWRIEzi7jMM=; b=YGlGRJGER9z8OQZM2zpnQyh5w2
 +IwISqXjYzpf8prYqA2iR4PATn83/6YYMck8SQRU0XtHO9ZtaNUggAfWs2bAUJY/Aa4A5eR9v4X2H
 9rjhy0iC7nSe7CW/3DEmwpPKE2yxViMZEzLuAMxYaL+oL11vgbYoTC75oEjS5VbVa5PU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nYi1qCRVXukm3Vys4Ax0zzpvhrxgpQ9/OWRIEzi7jMM=; b=nGQ/NMP4FEH9QBCaz4Mv0CN2Qy
 8oH4oYtmGwAceuO2N/DiE0Yd3RmO1irqGibLy1s0OixH38DSpXebW0iEAV0Aw+yih4Kfsdizt7oz/
 iL0e8Zak9E6vd4nIIj1o9Ox5WP5M5WKwgoEX3e1sW62bfuukaZ95/cGTPNRPSdAj+CAY=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bG2-00GwdB-8k; Mon, 17 Aug 2020 09:16:49 +0000
Received: by mail-pj1-f67.google.com with SMTP id l60so7511614pjb.3;
 Mon, 17 Aug 2020 02:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nYi1qCRVXukm3Vys4Ax0zzpvhrxgpQ9/OWRIEzi7jMM=;
 b=mxWi/elPlQYhLXMLOAt36tJYQ+Hp1VAtd/uz+Kc8cIdiewSdg8n95X+KYxSdWGZJ1y
 /1rHnM4HvYeEmKOOLXL2wTqM2vSxMsb9VJZkfdrjZ8c8pWQ4rrQImtoKQ977EHgQ+THx
 Aa919IaWGz3+LC2CnAhGPcCnKZKjEcT2ftL3tbor1l7DdNN51bTmd6wf3G7Uglbn9gd3
 IvO4ciTbor+qNIHbn5ZnArhfiWQHMjs284hcUdKxz9v7/11dHOTVFY1ki+iFopZAQ166
 233J/wFqybY2SkuhDb0GHf7Xk3e7tw+qSNZabUjFckMBu8dhIwFr7uUw3BLLKtx0v0Fq
 3HVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nYi1qCRVXukm3Vys4Ax0zzpvhrxgpQ9/OWRIEzi7jMM=;
 b=TOQ4vs69VDEK6m3nADJ2SPGyoVMSEjtJhOUy3kjm/9M61hBKZ29QGPdM3XQLtHjkMC
 I1yjiBqe1YAm1LnG0j70E+zcSqiAGe4BZtw1gfBVva7AW5n+FY0Oqa/5wJAnDd03PKuD
 zKWvbP+2hoItqobJ+cGQmpbaebpNzht3txlbKN3R6iX2ULmz6zTTliu8pLVwz96U+jw+
 Fkkyfmjdcoj/j1qZn5XRuvVvMjp8uAxYusR2ZYEEIvnucl/BTNN3Z0H8Y3lDIopUsO6k
 W+PVI+GFGPiPRfupIjiRhqHTSzculIYrgSW1hnhwchX3i8UR9kaBXDhpKgFYtgpZ2nb8
 xk2A==
X-Gm-Message-State: AOAM530Ci3OoGUFqKOb+6ond6bkeqF/TPK5vqzkzxzvziBdCYhljnYLU
 bwTZhv7EmKdAfuvF9f1lbfk=
X-Google-Smtp-Source: ABdhPJx+wEvCOSvKZxezpdY6lLs7UvfZeX3QH5NUsgJeM5vKZGxtJnJRJpZ8+dEdqnJdMBLPa9KLfg==
X-Received: by 2002:a17:902:8495:: with SMTP id
 c21mr10840498plo.82.1597655800670; 
 Mon, 17 Aug 2020 02:16:40 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:16:39 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:45:55 +0530
Message-Id: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k7bG2-00GwdB-8k
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:08 +0000
Subject: [Openipmi-developer] [PATCH] arch: um: convert tasklets to use new
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
 arch/um/drivers/vector_kern.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
index 8735c468230a..06980870ae23 100644
--- a/arch/um/drivers/vector_kern.c
+++ b/arch/um/drivers/vector_kern.c
@@ -1196,9 +1196,9 @@ static int vector_net_close(struct net_device *dev)
 
 /* TX tasklet */
 
-static void vector_tx_poll(unsigned long data)
+static void vector_tx_poll(struct tasklet_struct *t)
 {
-	struct vector_private *vp = (struct vector_private *)data;
+	struct vector_private *vp = from_tasklet(vp, t, tx_poll);
 
 	vp->estats.tx_kicks++;
 	vector_send(vp->tx_queue);
@@ -1629,7 +1629,7 @@ static void vector_eth_configure(
 	});
 
 	dev->features = dev->hw_features = (NETIF_F_SG | NETIF_F_FRAGLIST);
-	tasklet_init(&vp->tx_poll, vector_tx_poll, (unsigned long)vp);
+	tasklet_setup(&vp->tx_poll, vector_tx_poll);
 	INIT_WORK(&vp->reset_tx, vector_reset_tx);
 
 	timer_setup(&vp->tl, vector_timer_expire, 0);
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
