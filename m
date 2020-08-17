Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 367BF24A0E6
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-00019i-5v; Wed, 19 Aug 2020 13:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bIH-0003fW-Fy; Mon, 17 Aug 2020 09:19:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/Lyd9iyb+e3Iwz9Po/fyIeEqiW8mHah9rIvstjO+PU=; b=jM+3IpozLKCAmJEnNiZd7xKwC2
 kigabLMRkZ7hFDQQfwvx4g8P+gtlQiYvk7bpA19E5XkC+9tXrR3mmSuD0EAUNMVHPmkAdmQJA2TQp
 iPncpYXZIfPd7cj+et8GsR4zkQ/QO5jYrf+RSyVfgIgw9G4NA1mNcmYk69myjP+BbS/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y/Lyd9iyb+e3Iwz9Po/fyIeEqiW8mHah9rIvstjO+PU=; b=Ytuz/PaCSTAcyyDCkMDLmVkpw3
 1oBcguIz94qjnNqGTF/Ml+7gYpNDV+3ddn7BVEl4HqbkeGgXoOrrp24xOszCaoXYuKaZHFLpF729a
 YbRu+v/btmA8x4GPfSng3eHl36FfwSmlJu4MLS3Rmh1PAVhl4/Tv5tUvkS0pmRJWMZjE=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bIF-00GwlM-HE; Mon, 17 Aug 2020 09:19:05 +0000
Received: by mail-pj1-f68.google.com with SMTP id i92so7692843pje.0;
 Mon, 17 Aug 2020 02:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y/Lyd9iyb+e3Iwz9Po/fyIeEqiW8mHah9rIvstjO+PU=;
 b=DXgG1thdfskvtuXZP8/vM2gAxPo04jWU1e+8F2TitfrFT6HmCFefFj4nhScJQTVk1q
 gwLxkldM/Z+lONZzeR6zuZqiQyflB90NTYeiTaY2uBfmMOfTAXYT7jbI0r056THCHfBd
 3Di3net4lwJTB43A0rF2kp+rBzJcJY7T89VTsfvGCemy2qENpzVMLpR5W4yUkLrg5+z4
 9JO+T6FYEZY6ZUFsXdmos0B6tU4Q5kqzOQ+gRjZVd4YWOoPWnjX11Km6g+E3oY819bdf
 yrJ9k2JC0MEmc+k1DjYwwIX9qR0IT6cjxsIz2qZVtoxc4ZLZ/IK7rkcfNaetwR8RSOCf
 y05g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y/Lyd9iyb+e3Iwz9Po/fyIeEqiW8mHah9rIvstjO+PU=;
 b=EJUQDNMRAYeubY8j0shZOQkwrVIydH43lJLFfSP/68FgeGT0+tHB5xFgTk6SNTscNz
 MTxQLqDht0Sk7imI8EOvdSxL2/ALLojxzJkRkwB9osdb5XZrzQyeMsNAJiiMw5uskm6r
 MxUHXkyHVY1JL0ohwfQsxsAmGunSFJMzpXsvqtvhlNcckpMa0HBTE7LfaPXbXdJc8gdT
 1SfwWnqUfYOjfS6PuXHo+nesuaatG0gKW9oGAgEfxncF4m+XvC8rp0/OvoqPua5tXTtJ
 o/UGpnvcrnA9GT4PnqO3lwJejwxMun8fAe8KyI0L9NYZ9pE1TdDyn/orrpAODL3pPlqK
 luMQ==
X-Gm-Message-State: AOAM531nw/4mx0nWVpMEbKz8/JIC/qGh6/5d0mFOQ9XUbL2CIMVQPHyg
 Mjku+jt1g5eqeK+GCYNbnP4=
X-Google-Smtp-Source: ABdhPJyIur6thpXJWevzBAIQBHYV2xsdEEXHh/+HT4l4m1kZQXfbzh30rMtWwCA6A2KqL1fU9TH91w==
X-Received: by 2002:a17:90a:2525:: with SMTP id
 j34mr12831046pje.208.1597655930802; 
 Mon, 17 Aug 2020 02:18:50 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:18:50 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:05 +0530
Message-Id: <20200817091617.28119-11-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1k7bIF-00GwlM-HE
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH] firewire: ohci: convert tasklets to
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
 drivers/firewire/ohci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 7dde21b18b04..6298ff03796e 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -921,9 +921,9 @@ static void ar_recycle_buffers(struct ar_context *ctx, unsigned int end_buffer)
 	}
 }
 
-static void ar_context_tasklet(unsigned long data)
+static void ar_context_tasklet(struct tasklet_struct *t)
 {
-	struct ar_context *ctx = (struct ar_context *)data;
+	struct ar_context *ctx = from_tasklet(ctx, t, tasklet);
 	unsigned int end_buffer_index, end_buffer_offset;
 	void *p, *end;
 
@@ -977,7 +977,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 
 	ctx->regs        = regs;
 	ctx->ohci        = ohci;
-	tasklet_init(&ctx->tasklet, ar_context_tasklet, (unsigned long)ctx);
+	tasklet_setup(&ctx->tasklet, ar_context_tasklet);
 
 	for (i = 0; i < AR_BUFFERS; i++) {
 		ctx->pages[i] = alloc_page(GFP_KERNEL | GFP_DMA32);
@@ -1049,9 +1049,9 @@ static struct descriptor *find_branch_descriptor(struct descriptor *d, int z)
 		return d + z - 1;
 }
 
-static void context_tasklet(unsigned long data)
+static void context_tasklet(struct tasklet_struct *t)
 {
-	struct context *ctx = (struct context *) data;
+	struct context *ctx = from_tasklet(ctx, t, tasklet);
 	struct descriptor *d, *last;
 	u32 address;
 	int z;
@@ -1145,7 +1145,7 @@ static int context_init(struct context *ctx, struct fw_ohci *ohci,
 	ctx->buffer_tail = list_entry(ctx->buffer_list.next,
 			struct descriptor_buffer, list);
 
-	tasklet_init(&ctx->tasklet, context_tasklet, (unsigned long)ctx);
+	tasklet_setup(&ctx->tasklet, context_tasklet);
 	ctx->callback = callback;
 
 	/*
@@ -1420,7 +1420,7 @@ static void at_context_flush(struct context *ctx)
 	tasklet_disable(&ctx->tasklet);
 
 	ctx->flushing = true;
-	context_tasklet((unsigned long)ctx);
+	context_tasklet(&ctx->tasklet);
 	ctx->flushing = false;
 
 	tasklet_enable(&ctx->tasklet);
@@ -3472,7 +3472,7 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 	tasklet_disable(&ctx->context.tasklet);
 
 	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		context_tasklet((unsigned long)&ctx->context);
+		context_tasklet(&ctx->context.tasklet);
 
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
