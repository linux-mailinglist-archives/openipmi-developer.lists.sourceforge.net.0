Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1BE24A0E9
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-0001An-Fv; Wed, 19 Aug 2020 13:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bIm-0003j4-Jz; Mon, 17 Aug 2020 09:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ifLfIrBu1ltO21juvrs7/f94zIPbflxds2FmAIn0JZY=; b=WCabwXdF1sSMHBjFf8/IQHnisg
 9m0D+EvdHVs9ZxwxCgYigT3QwJGp9VJkmEuC4nhE8P8jw7iw7FMUZDXxNjvCfHFc1cP5TA9zVJqTc
 AzqNyzZgDb6nhX7r8GMlZY6//2EnszrB6oO4lMOSa7vokbby6XvLN/wrEO/c2gNLl2pw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ifLfIrBu1ltO21juvrs7/f94zIPbflxds2FmAIn0JZY=; b=kcif8ICx8L8IvKeIfzIP7NcRMS
 9T25K6HyiBpxL/0WcCS5kAyXm9YVl+B6xqgkawiFNKoQQabi77vSUCxZHnlPSNJYe1v2C1TBdGaBa
 UTEe0+b3sW2sggH9zg06jlmEYHHmxxI+/YmMGbJqLHpBTrQ4sWbhMrSyn/3lP2jj/0Ks=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bIl-00E76I-Fi; Mon, 17 Aug 2020 09:19:36 +0000
Received: by mail-pl1-f194.google.com with SMTP id bh1so7187542plb.12;
 Mon, 17 Aug 2020 02:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ifLfIrBu1ltO21juvrs7/f94zIPbflxds2FmAIn0JZY=;
 b=QLC6x/O13MeP0lPsSOPKaI+ocf7oT0PGwI9jaqY5n+w05x+fnihg68gNW9IMTCYLmr
 QP7/v8OCTappeLr1ZuVp0BsTJ1mH85ENUZ2a6AmLJxjUUhw01jO65HrM9m3jJ/8fkzOD
 /S951cp1wfO+Ld6aPWrVxO7J0pQj6AA1qxc5UAopaYjDT3vKbgs6OuTAyMB506fY0UDH
 5Vov97HYXFpYb/YY3HH4v98ijkrDRUNEPcHpqzt4ZRRsovwJz6805sBa4AZVV67aGl1m
 cckpnrRBYuVhiBXYyB2AdVauJXp4muM3muUnNrrm5+mb6Juwp+3iKvIPDL2fSNnGn3kS
 Vy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ifLfIrBu1ltO21juvrs7/f94zIPbflxds2FmAIn0JZY=;
 b=QlJEouxfegXClSsUOiknGhe0k8xi3E88JwAhMQDXaCmNTsCWweWQzP++EhzhuC1FWj
 fqkOLhyqyF8kWaxPvt++e8V9eMI9HCAXRWJeOPaDIreGRrL8a1+kk2GKjDI7QebIjOe5
 LE5hDIlQdhClLSFzE3GTCTKIq2zrTxN67cSKAvuszh5+i1VGTo+6A1uquo8vCoXEHnY6
 yZQYFdVgHtu2WrT1QRUfILMi/WwEp6Al1JVkvGURRhb47CI9lHodpVNyjoFw8Qpcdazi
 87BLsyle9mbTlmpROmhOijMXcwmrDfTKZG8+9ca4I4uooduppQlLQAaKGN4qBva+s7bb
 YKQw==
X-Gm-Message-State: AOAM532yeRCQ4ZecD7y0ho14MSVMg7V453KU95tzNzeuVyFLWXVzPMJe
 Kn7Zh2zvKHoEExCZ0EjnFBQ=
X-Google-Smtp-Source: ABdhPJwQiN0j3I0XTBAoTEh/kHlRdKQRBPrBZjjvBv7FEdQfK+kQb/LL0lHsiyq2Kw2a6+jej7syqg==
X-Received: by 2002:a17:90a:2210:: with SMTP id
 c16mr12291145pje.65.1597655969939; 
 Mon, 17 Aug 2020 02:19:29 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:29 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:08 +0530
Message-Id: <20200817091617.28119-14-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.194 listed in list.dnswl.org]
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
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7bIl-00E76I-Fi
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH 1/2] mailbox: bcm: convert tasklets to
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
 drivers/mailbox/bcm-pdc-mailbox.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mailbox/bcm-pdc-mailbox.c b/drivers/mailbox/bcm-pdc-mailbox.c
index 53945ca5d785..5b375985f7b8 100644
--- a/drivers/mailbox/bcm-pdc-mailbox.c
+++ b/drivers/mailbox/bcm-pdc-mailbox.c
@@ -962,9 +962,9 @@ static irqreturn_t pdc_irq_handler(int irq, void *data)
  * a DMA receive interrupt. Reenables the receive interrupt.
  * @data: PDC state structure
  */
-static void pdc_tasklet_cb(unsigned long data)
+static void pdc_tasklet_cb(struct tasklet_struct *t)
 {
-	struct pdc_state *pdcs = (struct pdc_state *)data;
+	struct pdc_state *pdcs = from_tasklet(pdcs, t, rx_tasklet);
 
 	pdc_receive(pdcs);
 
@@ -1589,7 +1589,7 @@ static int pdc_probe(struct platform_device *pdev)
 	pdc_hw_init(pdcs);
 
 	/* Init tasklet for deferred DMA rx processing */
-	tasklet_init(&pdcs->rx_tasklet, pdc_tasklet_cb, (unsigned long)pdcs);
+	tasklet_setup(&pdcs->rx_tasklet, pdc_tasklet_cb);
 
 	err = pdc_interrupts_init(pdcs);
 	if (err)
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
