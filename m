Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2129E24A0EE
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-0001C4-Vz; Wed, 19 Aug 2020 13:59:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bJj-0002Bn-Ec; Mon, 17 Aug 2020 09:20:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QhPrNAdoeJw7hjMh0pGw+sjN4I+tDKGZ699gTXbu9Pc=; b=GvcxZMnSeI+BKgrYbVaIX+nOZh
 kVGHQvLoVI03h4FdM10AY2wDvWHMfagkSUglR7UMzQzkA7Lgd338Yqm1tX/ckIh2KpaO/6ZGXWjCu
 SejmZokrFvnhtwyzXOU+iPBiyDNNKn+l9khRjl8tendkgxoQqO1RIVVp6ZMRKhlOQlVM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QhPrNAdoeJw7hjMh0pGw+sjN4I+tDKGZ699gTXbu9Pc=; b=dTWt1RCg8twXfVwusMlsxIxjIE
 K1O9rBGihDOy35z0PpMzfdqopAnxPBKVG52l5p5KCAvwyeHoCSMzfXzVu3I+QZSViiRdXT/XpkJz+
 922hvqni2htjhTVdszuEeb/NdlBEHcaNFoYcsq33IWC8z2mp1+2E5ZBE3Dba0ymT2w8E=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bJi-00Gwss-6i; Mon, 17 Aug 2020 09:20:35 +0000
Received: by mail-pf1-f195.google.com with SMTP id d188so7931588pfd.2;
 Mon, 17 Aug 2020 02:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QhPrNAdoeJw7hjMh0pGw+sjN4I+tDKGZ699gTXbu9Pc=;
 b=cTZNXtt7wNfV+e9cJ76fTsPPVQZeYJIEY2TuWXhYA+6rL5+mQtvGCpP7nLFEEHniIY
 ttRYkgElaSdYzjheNY+aJq+wt2TbwHocg2rHezNcVM8LeXUN8gM2nT5FPn17bkKOZJ/R
 FpcUeStKvy2IzIoPd11K1+w6c4p381QKwm4Dhy02AfZUx3SzHjBImZSC4gDgffWV6h+v
 8YTTF/IpemIy0SQFRYOlz4ZDOq/9HJmYTUqHCVWY4C5ejhmLcUfPEpCe73ql4ONWBhLK
 UZXD9rMiGnEuf0tCOKH/CAPFPO+ziHa24otJgykW+Fa09Aud/a6J7DqgcJ9+cKbuVreV
 L6OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QhPrNAdoeJw7hjMh0pGw+sjN4I+tDKGZ699gTXbu9Pc=;
 b=msHuAEmZEHUoCNuSfX8xlQEQE//UWl9oREQs3Kt8ydP+jr5PuIqaRTI9eY/HZ5Hq34
 pNykp79i9pFibqPV90EOUyLYAkPEvKn7UMRRMw+Z58X/n0V7DXHUXsTE4OndPWW3okhf
 CX2daW2/UjQINUfKY6ZvQPZa3wG2Ttx3Um92KG1bXZjh6aXglJQG24DkYp4/FIIn3OUN
 b8wsQU7qPlhKaJe0LEme1rIepq7PVohrONYg3si2Gztwj7rQbTqbaCN+tuiZEZgKVbRf
 k1rhdOc4XD0DXEqWqJpaLMfl6CY2W/yhH+Vksu/slPnG6loZHNq77jI+RVjOQ4cmcb+t
 9A9g==
X-Gm-Message-State: AOAM5331mRrcIhHNdZC8b7X+yt2ze9niXAlJqnw6fJ+CAOau1jd2wsdj
 CU30lhcqsag/PcSTdQMUyGs=
X-Google-Smtp-Source: ABdhPJzDyD/NrPXHKKUPdhhRODzrKgFhi3OcVBh0EqkEsk2AwP8x+cz/Kr8PlDriSCVb6p68quAdVw==
X-Received: by 2002:a63:4545:: with SMTP id u5mr9191366pgk.229.1597656028627; 
 Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
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
Date: Mon, 17 Aug 2020 14:46:12 +0530
Message-Id: <20200817091617.28119-18-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7bJi-00Gwss-6i
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH] platform: goldfish: convert tasklets
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
 drivers/platform/goldfish/goldfish_pipe.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/goldfish/goldfish_pipe.c b/drivers/platform/goldfish/goldfish_pipe.c
index 1ab207ec9c94..b9bead07760c 100644
--- a/drivers/platform/goldfish/goldfish_pipe.c
+++ b/drivers/platform/goldfish/goldfish_pipe.c
@@ -577,10 +577,10 @@ static struct goldfish_pipe *signalled_pipes_pop_front(
 	return pipe;
 }
 
-static void goldfish_interrupt_task(unsigned long dev_addr)
+static void goldfish_interrupt_task(struct tasklet_struct *t)
 {
 	/* Iterate over the signalled pipes and wake them one by one */
-	struct goldfish_pipe_dev *dev = (struct goldfish_pipe_dev *)dev_addr;
+	struct goldfish_pipe_dev *dev = from_tasklet(dev, t, irq_tasklet);
 	struct goldfish_pipe *pipe;
 	int wakes;
 
@@ -811,8 +811,7 @@ static int goldfish_pipe_device_init(struct platform_device *pdev,
 {
 	int err;
 
-	tasklet_init(&dev->irq_tasklet, &goldfish_interrupt_task,
-		     (unsigned long)dev);
+	tasklet_setup(&dev->irq_tasklet, &goldfish_interrupt_task);
 
 	err = devm_request_irq(&pdev->dev, dev->irq,
 			       goldfish_pipe_interrupt,
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
