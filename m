Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4A524A0E8
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-0001AX-Dm; Wed, 19 Aug 2020 13:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bIZ-0003hW-5o; Mon, 17 Aug 2020 09:19:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BhmC2dfR9Z2FpcZrdiI/rF+di1B3O2m2kCZjxi0Nzus=; b=KZwU+S0MF78B3sy86QCd3ocW5T
 RUKvfqCNqjw4zfs6Ph16u4nARe82art/CKYrM1+JdMq4bFMho/QDIcTR/ig5DMZn1dhGnJpi/6jKD
 NwMJUHaWz1Mpiw/Mft6crpQfaH/b1irsgL5bD6cHQiN9jo6i6t3ih3gkDZzgpw6D6i1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BhmC2dfR9Z2FpcZrdiI/rF+di1B3O2m2kCZjxi0Nzus=; b=m/GHOfSCDrtZbf/+bYtvKGPlEP
 9KN3mp+EHWoBdBjO8eGpw3lessYuN2fDuzE7udQNuvQ5HjPUS5/FU/8l6V61BPmcC9mwHHDEP7Mgg
 y3lqOTeUvyULxsHB03Li1zlACeX4UOIFnMrSBsnCRSDy6tBOPLAew8zN9c1VtpQq+BsQ=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bIY-00E75F-2R; Mon, 17 Aug 2020 09:19:23 +0000
Received: by mail-pg1-f193.google.com with SMTP id s15so7821338pgc.8;
 Mon, 17 Aug 2020 02:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BhmC2dfR9Z2FpcZrdiI/rF+di1B3O2m2kCZjxi0Nzus=;
 b=pH1u/a65jck4CF/HaoBjMB2yQ7DQRuOjq2EQe/YOxb/OD7LRTsfaGPckhcN+7n9R1u
 8haLtPH3/hoBwBJOPjlUu2iYNKNPElK2iQu8xAhfWEfShI0bje7FwzTh8mTzsrV2FN/G
 T9q7gfYpRkJs922O9WCJDcFzNiLghUNavbp+zlHscWAG2oqdLCD4z56Z3vUZOyp4D6dk
 KhQqBlfrQV46/Pb2iMfJWkdHHcpVNp7jqYJJ9NEWjQKozVbz9oxhRN55xVrJNhB3JaO3
 Dp4F6ts/oPz/ziaWkRipTHlRzYfTQoj0G/RUnkwPSw1bnvtUKBj+EftqSWTMiaLoQ1jv
 lH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BhmC2dfR9Z2FpcZrdiI/rF+di1B3O2m2kCZjxi0Nzus=;
 b=tEXOtZzC5DkmFkEhyuWl/h45VCJTFn6nT0NaNcHqmYPynKO7vfRkIvy6dmqjowOLnd
 qMLxwfmRLzsYy+yT3ITHNkc7NFrjh1wtHEfmsk+Q2wara1mOxY+kGvQF7qdg2ca3dPQj
 jLFEM0lVhz005k2NzIRsMVYgwdmwpCtFB+ngvwTqAW2g+x5/Xe4uulsoxKLucRWYTFPL
 WfXx9LRWQ7TpwHG+8N4LJz7gIKBFe1oGhlRTefkYMhJMhEWBp7Dk+T8TjeH6Q4grFYGx
 tHwalaiDzcjQ0O3g/veDmuUkTm83Va0llBotMwJnYRpFjTrRAmZO3KPzFI4kIynFTUru
 YBAA==
X-Gm-Message-State: AOAM533e/ypM/BNASBA0dIxiNfUidQTVjPs7Vz127sJChjFQJMGEbLcU
 HENQ54v8MH8EmX2I29SuisM=
X-Google-Smtp-Source: ABdhPJyB5tc5dUu27VbUdOZ9DzBdNo9HMZYO5yS/FgK5KFnwUfpfaMSoblaoVOfdDSu8KmjNrpWWGw==
X-Received: by 2002:a63:2e87:: with SMTP id u129mr9420810pgu.347.1597655956522; 
 Mon, 17 Aug 2020 02:19:16 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:15 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:07 +0530
Message-Id: <20200817091617.28119-13-allen.cryptic@gmail.com>
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
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7bIY-00E75F-2R
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH] input: serio: convert tasklets to use
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
 drivers/input/serio/hp_sdc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/input/serio/hp_sdc.c b/drivers/input/serio/hp_sdc.c
index 13eacf6ab431..91f8253ac66a 100644
--- a/drivers/input/serio/hp_sdc.c
+++ b/drivers/input/serio/hp_sdc.c
@@ -301,7 +301,7 @@ static irqreturn_t hp_sdc_nmisr(int irq, void *dev_id)
 
 unsigned long hp_sdc_put(void);
 
-static void hp_sdc_tasklet(unsigned long foo)
+static void hp_sdc_tasklet(struct tasklet_struct *unused)
 {
 	write_lock_irq(&hp_sdc.rtq_lock);
 
@@ -890,7 +890,7 @@ static int __init hp_sdc_init(void)
 	hp_sdc_status_in8();
 	hp_sdc_data_in8();
 
-	tasklet_init(&hp_sdc.task, hp_sdc_tasklet, 0);
+	tasklet_setup(&hp_sdc.task, hp_sdc_tasklet, 0);
 
 	/* Sync the output buffer registers, thus scheduling hp_sdc_tasklet. */
 	t_sync.actidx	= 0;
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
