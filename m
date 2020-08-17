Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10024A0E3
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcW-00018S-Lj; Wed, 19 Aug 2020 13:59:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bH6-0001uV-B9; Mon, 17 Aug 2020 09:17:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mo6iICj1w8TKwOisUCBNzTZG5p5dM66mXRaY4cwKyZk=; b=eMZbBOE0c2VM+9OVVEasa9brA0
 FpZhOft/nQ+ugDXCvpt00eXIM0yjOGidQKNQafeQkq0u2MunZhk3kE0cNj8mQ619jb8u3Og3qemCT
 PieRwjeHUMyKSFDl3xNt+LhmpwbcePte0me4iQdKTdYud6kAUUjSifYSDCi3I01KbK5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mo6iICj1w8TKwOisUCBNzTZG5p5dM66mXRaY4cwKyZk=; b=Yaz99yzu0D/gxuDbkXoRRmdJbQ
 eqp0zPomX/2bidnAzqla93y4vYftaCkIo/ZbUMnXfJay0wbfv7dGO4BjhN/15qOsP+D93Vu8iNjO4
 3B5iYegBrsFY4uWn6dorn8I6vYI6g5R8im4ZHT0/g1QHnl+JlMNUJ37cIICZ9PHrS97M=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bH4-00Gwgx-NH; Mon, 17 Aug 2020 09:17:51 +0000
Received: by mail-pj1-f67.google.com with SMTP id ha11so7405443pjb.1;
 Mon, 17 Aug 2020 02:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Mo6iICj1w8TKwOisUCBNzTZG5p5dM66mXRaY4cwKyZk=;
 b=TzbwEFTqX0QCsBFflLiO6trddpNRzDxFXlyalb8p8shAuNzSqnVRPY8vMtBs1W5gGO
 YUc9r1hZWkAsv9H25E5N7kwqFWChbTSHzlTwFhWkQtf63DEW68snGk4kLIJ5B50DmJxW
 MWiO1udraHvmpV1CUmZxnsCDK3iuigHsru9yj+Oquzzzyly4+EM9iRLcN2KRuZWEdlkQ
 fk0Czl4+kqYHd4k4r0smEt/HwPMvVApbc9poEuzVer5sNiD49xlJWmv3Z+GjWTQ1m5b+
 aFLAe1vugsFxn+AMoHEAGT8072rZH7m2jZyN/wKgUUmGiQtrTmT5nZIW44CYFt5Ph9RF
 ifXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Mo6iICj1w8TKwOisUCBNzTZG5p5dM66mXRaY4cwKyZk=;
 b=Hb78dT0x4vqCRlIYGdQ1VjSGrCAkcSyJnpyTvQGA9gfXt9PekNi27YYXXtUl7t/20W
 BgveHAJ6vxtaHz5N6u06So7gWfX8hm9S0nXhdVfWfxfHQsmNWZMPe2lBeiZfQ7MdLsjI
 1OnMdQWcupGFiyXpt9LnuQ2MXpGLIwerGMfO45NSv+Hqs/QSQCfIkobeNmqPPYnK6SJA
 BEurvlWWGfCPq2LqKpS5YBXVXQZGJbOEapnjpjmJisuIeRc32DCvfbQPVzjhU3yDI6a6
 dlikyN5UsomOQzrAkVhdU652GA/3lFTegU6MilBvQBwitAYomXiqnTz4udy0j4uZOgSZ
 CsFg==
X-Gm-Message-State: AOAM533NHbqbSEKGI/dOPG4BJv1WmFGcW46gZw5aOXvTwz6/fWxNpsGy
 JKsjKYJ0I/m3ekIHwaNVeiY=
X-Google-Smtp-Source: ABdhPJwq6UEku9ZvxUlcSd9v3lLdDcS44qfn7fyf+CsiORE4iW8DsxOdwJSiRT3OcMi8Q3GfQoOtrg==
X-Received: by 2002:a17:90a:2210:: with SMTP id
 c16mr12286360pje.65.1597655865119; 
 Mon, 17 Aug 2020 02:17:45 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:17:44 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:00 +0530
Message-Id: <20200817091617.28119-6-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k7bH4-00Gwgx-NH
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:08 +0000
Subject: [Openipmi-developer] [PATCH] drivers: ntb: convert tasklets to use
 new tasklet_setup() API
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
 drivers/ntb/ntb_transport.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
index e6d1f5b298f3..ab3bee2fc803 100644
--- a/drivers/ntb/ntb_transport.c
+++ b/drivers/ntb/ntb_transport.c
@@ -273,7 +273,7 @@ enum {
 #define NTB_QP_DEF_NUM_ENTRIES	100
 #define NTB_LINK_DOWN_TIMEOUT	10
 
-static void ntb_transport_rxc_db(unsigned long data);
+static void ntb_transport_rxc_db(struct tasklet_struct *t);
 static const struct ntb_ctx_ops ntb_transport_ops;
 static struct ntb_client ntb_transport_client;
 static int ntb_async_tx_submit(struct ntb_transport_qp *qp,
@@ -1234,8 +1234,7 @@ static int ntb_transport_init_queue(struct ntb_transport_ctx *nt,
 	INIT_LIST_HEAD(&qp->rx_free_q);
 	INIT_LIST_HEAD(&qp->tx_free_q);
 
-	tasklet_init(&qp->rxc_db_work, ntb_transport_rxc_db,
-		     (unsigned long)qp);
+	tasklet_setup(&qp->rxc_db_work, ntb_transport_rxc_db);
 
 	return 0;
 }
@@ -1685,9 +1684,9 @@ static int ntb_process_rxc(struct ntb_transport_qp *qp)
 	return 0;
 }
 
-static void ntb_transport_rxc_db(unsigned long data)
+static void ntb_transport_rxc_db(struct tasklet_struct *t)
 {
-	struct ntb_transport_qp *qp = (void *)data;
+	struct ntb_transport_qp *qp = from_tasklet(qp, t, rxc_db_work);
 	int rc, i;
 
 	dev_dbg(&qp->ndev->pdev->dev, "%s: doorbell %d received\n",
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
