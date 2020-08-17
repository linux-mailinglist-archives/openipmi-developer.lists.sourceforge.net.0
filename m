Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D806824A0EA
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-0001BU-Rb; Wed, 19 Aug 2020 13:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bJI-0003mo-B6; Mon, 17 Aug 2020 09:20:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lUWUV2v5oTJVUGMm6xf12JUfYyiWzcefGfdAtQk2jwM=; b=Bz54BXFdOPtMDJBHxVDbD0imnQ
 T9i3ffXdCBimCOdU1M1zooGksF/LiV8umtZLPUjXPjeKRn2cRbTSPe26fZw4lZYcYfkjyXpQzeaps
 O+uTk4ocVv8LKASQujlgWyaCo4QQSMjsRa3Z1uXu+Lb4YQr8Yy8kXyb7expJOX+vqqdo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lUWUV2v5oTJVUGMm6xf12JUfYyiWzcefGfdAtQk2jwM=; b=Qio63qh/a1GEx9smvijbUcFPyV
 ppZoktOVXfEyFbqBTY3chzIODB8hrFCpipJuc4tV764prMbDc4uC+/L0n3LiI2Gut8uOFqDF9Z3nw
 7uVYErKMKeTHdNpVgVrIRckT5sBMVwdf/IE6fae4CGSfJffaKmLAi/PglwzUatb6yVIM=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bJF-00A7dJ-W6; Mon, 17 Aug 2020 09:20:07 +0000
Received: by mail-pg1-f195.google.com with SMTP id s15so7822149pgc.8;
 Mon, 17 Aug 2020 02:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lUWUV2v5oTJVUGMm6xf12JUfYyiWzcefGfdAtQk2jwM=;
 b=mbKVOHJMzNpskDzHydVD5JZdcRfrw+xd2+Uv78XbvKMc+387psZ2V2hk4qrHnsS81T
 /zH73TElq4axoclHQIy0bA2CbV9hfC8GYC+eakgtOktC3A5XsD2xiPjCrklKsR3XFyFd
 fsIOloQVGdK6RU/6EWDMjEAfDxSohJd//jLLtalmI0rGbeu1xwfLvpwSymywSxSBVX3G
 uhosJxEfiUcPuUNVJvS0yzIPELIzVumGhuE5Qx9Ojw3cmc6kmaA4ZQewhXRClGiu+tq2
 Aj/I10puZjlvAygrQvpRDOADkQfmJxn+4bXKvfXCvf9sZS7FhECvv/YiYSa/EN75dMVj
 0suw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lUWUV2v5oTJVUGMm6xf12JUfYyiWzcefGfdAtQk2jwM=;
 b=szuFs9YIO7bWfYh6bgCqXolDCF8ZlnndyT8oIRPfjsau2zfGO0cndL85GJiLJO4AWS
 zrs0Hl7hp8JoaO+M2tzo8/MGv3O7cO7mGcJorNz2XdygPXT3GhGgpttgmAdgo4l2+Gqo
 5+wWcdioXMqRhCufvINNz6mxOFZYEPeFocAUhiqMm8PBmvHA/t44Jcz45Wcz39KqqWWx
 1QYW7Fk1PpYl0K5YcM0tyazJBJ7UHHnwXYkvZaYHeVSDKkYky+KsdboeNh+OHm7+Vdnn
 S12xoWRGs59jMhdoytYYDr8kL2RJm4ZK7Tw1ESClyhRzbFfsa9C6YipixObcy5RZm5ZD
 kA4w==
X-Gm-Message-State: AOAM531b8m3moAqQK3gHysWKzQ0wYoxSBn90OUR5hWn4Ni3UBcc6y3+u
 6oBxPNqd2iJlVEtZ4w0SbLw=
X-Google-Smtp-Source: ABdhPJxQcfdrrCrfZXVUBP2XgAqTEjdFaPRIHC7BcYbo0cXrAVQPSPy8pM2ZDmwAm4cu8q6kfjMCtw==
X-Received: by 2002:a62:7785:: with SMTP id
 s127mr10452297pfc.196.1597656000455; 
 Mon, 17 Aug 2020 02:20:00 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:59 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:10 +0530
Message-Id: <20200817091617.28119-16-allen.cryptic@gmail.com>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7bJF-00A7dJ-W6
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH 1/2] misc: ibmvmc: convert tasklets to
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
 drivers/misc/ibmvmc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/ibmvmc.c b/drivers/misc/ibmvmc.c
index 2d778d0f011e..347278c1a5e4 100644
--- a/drivers/misc/ibmvmc.c
+++ b/drivers/misc/ibmvmc.c
@@ -2064,10 +2064,10 @@ static void ibmvmc_handle_crq(struct ibmvmc_crq_msg *crq,
 	}
 }
 
-static void ibmvmc_task(unsigned long data)
+static void ibmvmc_task(struct tasklet_struct *t)
 {
-	struct crq_server_adapter *adapter =
-		(struct crq_server_adapter *)data;
+	struct crq_server_adapter *adapter = from_tasklet(adapter, t,
+							  work_task);
 	struct vio_dev *vdev = to_vio_dev(adapter->dev);
 	struct ibmvmc_crq_msg *crq;
 	int done = 0;
@@ -2150,7 +2150,7 @@ static int ibmvmc_init_crq_queue(struct crq_server_adapter *adapter)
 	queue->cur = 0;
 	spin_lock_init(&queue->lock);
 
-	tasklet_init(&adapter->work_task, ibmvmc_task, (unsigned long)adapter);
+	tasklet_setup(&adapter->work_task, ibmvmc_task);
 
 	if (request_irq(vdev->irq,
 			ibmvmc_handle_event,
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
