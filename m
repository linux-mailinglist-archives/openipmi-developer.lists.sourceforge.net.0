Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5355924A0E7
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-0001AA-A4; Wed, 19 Aug 2020 13:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bIN-00021Y-1V; Mon, 17 Aug 2020 09:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H53NItB96hhK0lZMvS5UWr62MZO4kDlJxK+OZQUxxIA=; b=dQsF8ocGP4kBhcGFzWYjasb5hF
 8TNOR1T9FZYiswJ9auTME3GhAyXtY1QB25FqVEBSXeQd06WzxTbPLGnzeP2aZ9MA+RMW09SWYN/XT
 rSZL1omHzwt408+9NBgzFYiP5Q9ip9nFvnsEOAb6kpqHFtmuF+cYXnkAgqYhj9zjG83I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H53NItB96hhK0lZMvS5UWr62MZO4kDlJxK+OZQUxxIA=; b=O3QYMksEQpgJhDGXu9T8l8pwGT
 GZAzGw++s6VYQdw1/GxsI7BH9c3rPhuqK1VVRe9QYp5xqDgh0fwgEAli1n2MyJP8CW6EnNAaCSuRc
 E2B9E1Pbi33DGZ7kF8J8esry7EnHaT5ZUHUjjrnSif3IxjKNZtN6WMxxwEh31gOjzr/E=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bIL-00Gwlt-MG; Mon, 17 Aug 2020 09:19:10 +0000
Received: by mail-pg1-f193.google.com with SMTP id 128so7823387pgd.5;
 Mon, 17 Aug 2020 02:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H53NItB96hhK0lZMvS5UWr62MZO4kDlJxK+OZQUxxIA=;
 b=Q9//06PpCdzBcB5+2FmR3vcPX8ASc3s+ZqMBFaeRwEkDMjoO3ubFfEuRDvNyw69Dic
 A+UvP5p7Sa7LwPskN9TiPkDaTIGuH2iea/lkrw98pDSnGmsaUfJX37kbIJa1u46YHB5f
 Biss505SKwh0HAGB5MaLRxgXu1CO2EwXczixBc538BCK83Jyz086JRCbTSXgutB7e4FX
 /W9NvIU4fSh/Ib/tv7t7BztqxaZ4vcJQgOiXTE1ktzbLpdXGu8a6uU6wMvjuhA4hl/Yv
 klgo2KrIpjJmP8zUsX/rM/tO2Wej91r/JteBk1SMuYF1iBTXfyMg4piAFIrY2mqWn3/s
 KsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H53NItB96hhK0lZMvS5UWr62MZO4kDlJxK+OZQUxxIA=;
 b=kOR6eLiVd4xnGU1r+phNtj+rG4INw1wUuFgGHadFA9WYfewpra2+ppm15PakGGHgod
 Gi0ND8/GqmdidVYzNmbvEKEBcphllBFTSERaMTCBsbPHPOsEiVeNMj1Cj8mkEMR0jo0q
 +9JyOMwrh6DoqlpjkV9uI/0Qyb42KvlvBc89uVBxgU5jykngGlPm+6Y/NsyLdbuNAKnO
 V2Le92D+UK1Iv8XY1fSTSzN/A61nw1bQo3vN2W6oHs445XPevaor5SDiALRh6BLtFW32
 7J7IpYVzzNU0cvsqreB19xs77nJqU8gKU2+e3JK9fBCFwv79/psgWp1+iOkiXyl0gzCT
 PqEw==
X-Gm-Message-State: AOAM531V0nYx5KocEAMdTz3ZNWYVHeRXR5+3SHgmsL+rvFcNT+NlKhAW
 GSi9Sz3rEUw3uAmDYMPb3WI=
X-Google-Smtp-Source: ABdhPJwwv5IFUmxu6OFvp0ePee/WauDvfAGFpW7BnuWSsn7pFfdtUZETkOuz5u6jMhvkrLcgz5ASfg==
X-Received: by 2002:a63:5552:: with SMTP id f18mr8843602pgm.298.1597655944120; 
 Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:03 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:06 +0530
Message-Id: <20200817091617.28119-12-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k7bIL-00Gwlt-MG
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH 1/2] hsi: nokia-modem: convert tasklets
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
 drivers/hsi/clients/nokia-modem.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/hsi/clients/nokia-modem.c b/drivers/hsi/clients/nokia-modem.c
index cd7ebf4c2e2f..36d373f089ce 100644
--- a/drivers/hsi/clients/nokia-modem.c
+++ b/drivers/hsi/clients/nokia-modem.c
@@ -36,9 +36,10 @@ struct nokia_modem_device {
 	struct hsi_client	*cmt_speech;
 };
 
-static void do_nokia_modem_rst_ind_tasklet(unsigned long data)
+static void do_nokia_modem_rst_ind_tasklet(struct tasklet_struct *t)
 {
-	struct nokia_modem_device *modem = (struct nokia_modem_device *)data;
+	struct nokia_modem_device *modem = from_tasklet(modem, t,
+						nokia_modem_rst_ind_tasklet);
 
 	if (!modem)
 		return;
@@ -155,8 +156,8 @@ static int nokia_modem_probe(struct device *dev)
 	modem->nokia_modem_rst_ind_irq = irq;
 	pflags = irq_get_trigger_type(irq);
 
-	tasklet_init(&modem->nokia_modem_rst_ind_tasklet,
-			do_nokia_modem_rst_ind_tasklet, (unsigned long)modem);
+	tasklet_setup(&modem->nokia_modem_rst_ind_tasklet,
+			do_nokia_modem_rst_ind_tasklet);
 	err = devm_request_irq(dev, irq, nokia_modem_rst_ind_isr,
 				pflags, "modem_rst_ind", modem);
 	if (err < 0) {
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
