Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7303423D60
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Oct 2021 13:59:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mY5aS-0000db-RV; Wed, 06 Oct 2021 11:59:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mY5aR-0000dT-D4
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Oct 2021 11:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MVq/g3Xc5jAf1h7m4YuFHQqvxl5RNLco0ZW8S3JTUc8=; b=NhCsrri4DgMQdrnQMg7XToDz0x
 LYK4wTw86sXJ0Z35GJPxOn7V8RVJlgBOdGWnJYp5Xwe9CW6VHBv1p5Cn/aWOFb9J1GtC9gS84PNg1
 N8cpGi5dW3FmclLkGITUpgevbVbM7iBpm2/HygJkYfEtbKINCNz/2OphjTT2fkF5STRg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MVq/g3Xc5jAf1h7m4YuFHQqvxl5RNLco0ZW8S3JTUc8=; b=BAECe2K5MAVm5B0q99zA0Erqk1
 3JPDqQij9k7RLnDxfx8E+zugxfkRiyrLKiWWFvlmOvtza3hRI605MqeHoHRjMih3//W2PLDlNPda/
 XyWst9d9aK3kLLvF0jCZajAbLOAkDemxWEMC6YZzpz/InGYp/f3t4a/a4Oj7Np2mppQ0=;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mY5aQ-0003Re-K7
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Oct 2021 11:59:51 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 u20-20020a9d7214000000b0054e170300adso2691443otj.13
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 06 Oct 2021 04:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=MVq/g3Xc5jAf1h7m4YuFHQqvxl5RNLco0ZW8S3JTUc8=;
 b=Rnt1jqsImTtS5OIpmDsJ8MBxSSb8TX+SRqw8yb6guOXCxZTjmwWMINMPtDfbMck17m
 A1p+CEO3u8r4lLa+0Y/Nl+rODKh9GaiakC17uehMxgazVUCvgIaIm3Cq90eK/WYijs71
 L4fPZQE8dGEEYyzyf0r6njR2w2eGOF8u5Ho6VyQ4xpwmXOKRNG+2Rb5hlNUO8fIBhsPq
 to0secdOCbCWKnI++IAQyFBk5RYue65DpEKX5WGH+10pkMb8YtIDoVvbL0lG0XgvV9wF
 iCjPiLCqDZXZ9hMMSnZa8iCS3fX1IJYgRexlNkSAHqlwT8M3e4uH13AW6MaOrvaQaLNL
 xAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=MVq/g3Xc5jAf1h7m4YuFHQqvxl5RNLco0ZW8S3JTUc8=;
 b=0QsyxpUHuFUbVx98NaTRftCauS0KdxmrOlxRvx8jawjMopJKCHUEIzSmeeLfxeRVvF
 AG5TM9STpBlj0nbK8Esz/bfJU0taDBHd/Sg2aB7/3rJr3EMECXgAf7ZbXv573XGG+WJN
 z2KdVmvK6l7VbP/tvUgZ5Y22qRvgiiG346/57GAaIqUMstMsfo13+i3RtU9+PBykqkUZ
 B3UKXZgt99d1+4/qduDLCYvfIgerNlcz80PRTsEbtgZO4qn2/IXKBsZPGnimSkYIqTpy
 7KV03lXxVyHrtAMbxOQvcKHI4F8tDrVAEefhcC33KuHMzEHdk7Sv4ACnHSh8wBi1cv4I
 0QEw==
X-Gm-Message-State: AOAM532/f53ePCEg4IlzGbhhzC4P3l3+URo3xvyiiJxfpP0PeVjcXBeD
 FLWYHlTQJvz7XPI9aPKFyw==
X-Google-Smtp-Source: ABdhPJzWgcICAB+naoiE4NIjYdfqwgqzfK1aU/SCFKRg/uW1IhOSBNp5T2UMwn1j28I+UoLf5DaVqw==
X-Received: by 2002:a05:6830:4387:: with SMTP id
 s7mr1440191otv.273.1633521584953; 
 Wed, 06 Oct 2021 04:59:44 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id e10sm3908495oig.11.2021.10.06.04.59.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Oct 2021 04:59:44 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:d981:37c0:4da7:a7f4])
 by serve.minyard.net (Postfix) with ESMTPSA id 89EE21800ED;
 Wed,  6 Oct 2021 11:59:43 +0000 (UTC)
Date: Wed, 6 Oct 2021 06:59:42 -0500
From: Corey Minyard <minyard@acm.org>
To: Joel Stanley <joel@jms.id.au>
Message-ID: <20211006115942.GI5381@minyard.net>
References: <20210903051039.307991-1-joel@jms.id.au>
 <CACPK8XezoNyq2Dh+=fJ2sDzot3iwvXg=76eZUwdPcn_VQWxqvw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XezoNyq2Dh+=fJ2sDzot3iwvXg=76eZUwdPcn_VQWxqvw@mail.gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 06, 2021 at 02:33:06AM +0000, Joel Stanley wrote:
 > Hi Corey, > > On Fri, 3 Sept 2021 at 05:10, Joel Stanley <joel@jms.id.au>
 wrote: > > > > This driver was originally written to use the r [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.54 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mY5aQ-0003Re-K7
Subject: Re: [Openipmi-developer] [PATCH] ipmi: bt-bmc: Use registers
 directly
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
Reply-To: minyard@acm.org
Cc: Andrew Jeffery <andrew@aj.id.au>, Alistar Popple <alistair@popple.id.au>,
 openipmi-developer@lists.sourceforge.net,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Oct 06, 2021 at 02:33:06AM +0000, Joel Stanley wrote:
> Hi Corey,
> 
> On Fri, 3 Sept 2021 at 05:10, Joel Stanley <joel@jms.id.au> wrote:
> >
> > This driver was originally written to use the regmap abstraction with no
> > clear benefit. As the registers are always mmio and there is no sharing
> > of the region with other devices, we can safely read and write without
> > the locking that regmap provides.
> >
> > This reduces the code size of the driver by about 25%.
> 
> Do you have any feedback on this one?

Ah, sorry, this looks ok to me.  I was unable to find much useful
information about the benefits of regmap, but it seems that if you had
registers layed out in various ways, with different caching, etc, that
regmap would be useful.  It might be useful for the host side driver
because it deals with various register layouts.  However, for this
application, it doesn't seem useful.  I didn't see any other comments on
it, but it looks clean.  Applied to my next tree.

-corey

> 
> Cheers,
> 
> Joel
> 
> 
> >
> > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  drivers/char/ipmi/bt-bmc.c | 68 +++++++++-----------------------------
> >  1 file changed, 16 insertions(+), 52 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> > index 6e3d247b55d1..fb771ce6f7bf 100644
> > --- a/drivers/char/ipmi/bt-bmc.c
> > +++ b/drivers/char/ipmi/bt-bmc.c
> > @@ -8,13 +8,11 @@
> >  #include <linux/errno.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/io.h>
> > -#include <linux/mfd/syscon.h>
> >  #include <linux/miscdevice.h>
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/poll.h>
> > -#include <linux/regmap.h>
> >  #include <linux/sched.h>
> >  #include <linux/timer.h>
> >
> > @@ -59,8 +57,7 @@
> >  struct bt_bmc {
> >         struct device           dev;
> >         struct miscdevice       miscdev;
> > -       struct regmap           *map;
> > -       int                     offset;
> > +       void __iomem            *base;
> >         int                     irq;
> >         wait_queue_head_t       queue;
> >         struct timer_list       poll_timer;
> > @@ -69,29 +66,14 @@ struct bt_bmc {
> >
> >  static atomic_t open_count = ATOMIC_INIT(0);
> >
> > -static const struct regmap_config bt_regmap_cfg = {
> > -       .reg_bits = 32,
> > -       .val_bits = 32,
> > -       .reg_stride = 4,
> > -};
> > -
> >  static u8 bt_inb(struct bt_bmc *bt_bmc, int reg)
> >  {
> > -       uint32_t val = 0;
> > -       int rc;
> > -
> > -       rc = regmap_read(bt_bmc->map, bt_bmc->offset + reg, &val);
> > -       WARN(rc != 0, "regmap_read() failed: %d\n", rc);
> > -
> > -       return rc == 0 ? (u8) val : 0;
> > +       return readb(bt_bmc->base + reg);
> >  }
> >
> >  static void bt_outb(struct bt_bmc *bt_bmc, u8 data, int reg)
> >  {
> > -       int rc;
> > -
> > -       rc = regmap_write(bt_bmc->map, bt_bmc->offset + reg, data);
> > -       WARN(rc != 0, "regmap_write() failed: %d\n", rc);
> > +       writeb(data, bt_bmc->base + reg);
> >  }
> >
> >  static void clr_rd_ptr(struct bt_bmc *bt_bmc)
> > @@ -376,18 +358,15 @@ static irqreturn_t bt_bmc_irq(int irq, void *arg)
> >  {
> >         struct bt_bmc *bt_bmc = arg;
> >         u32 reg;
> > -       int rc;
> >
> > -       rc = regmap_read(bt_bmc->map, bt_bmc->offset + BT_CR2, &reg);
> > -       if (rc)
> > -               return IRQ_NONE;
> > +       reg = readl(bt_bmc->base + BT_CR2);
> >
> >         reg &= BT_CR2_IRQ_H2B | BT_CR2_IRQ_HBUSY;
> >         if (!reg)
> >                 return IRQ_NONE;
> >
> >         /* ack pending IRQs */
> > -       regmap_write(bt_bmc->map, bt_bmc->offset + BT_CR2, reg);
> > +       writel(reg, bt_bmc->base + BT_CR2);
> >
> >         wake_up(&bt_bmc->queue);
> >         return IRQ_HANDLED;
> > @@ -398,6 +377,7 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
> >  {
> >         struct device *dev = &pdev->dev;
> >         int rc;
> > +       u32 reg;
> >
> >         bt_bmc->irq = platform_get_irq_optional(pdev, 0);
> >         if (bt_bmc->irq < 0)
> > @@ -417,11 +397,11 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
> >          * will be cleared (along with B2H) when we can write the next
> >          * message to the BT buffer
> >          */
> > -       rc = regmap_update_bits(bt_bmc->map, bt_bmc->offset + BT_CR1,
> > -                               (BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY),
> > -                               (BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY));
> > +       reg = readl(bt_bmc->base + BT_CR1);
> > +       reg |= BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY;
> > +       writel(reg, bt_bmc->base + BT_CR1);
> >
> > -       return rc;
> > +       return 0;
> >  }
> >
> >  static int bt_bmc_probe(struct platform_device *pdev)
> > @@ -439,25 +419,9 @@ static int bt_bmc_probe(struct platform_device *pdev)
> >
> >         dev_set_drvdata(&pdev->dev, bt_bmc);
> >
> > -       bt_bmc->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> > -       if (IS_ERR(bt_bmc->map)) {
> > -               void __iomem *base;
> > -
> > -               /*
> > -                * Assume it's not the MFD-based devicetree description, in
> > -                * which case generate a regmap ourselves
> > -                */
> > -               base = devm_platform_ioremap_resource(pdev, 0);
> > -               if (IS_ERR(base))
> > -                       return PTR_ERR(base);
> > -
> > -               bt_bmc->map = devm_regmap_init_mmio(dev, base, &bt_regmap_cfg);
> > -               bt_bmc->offset = 0;
> > -       } else {
> > -               rc = of_property_read_u32(dev->of_node, "reg", &bt_bmc->offset);
> > -               if (rc)
> > -                       return rc;
> > -       }
> > +       bt_bmc->base = devm_platform_ioremap_resource(pdev, 0);
> > +       if (IS_ERR(bt_bmc->base))
> > +               return PTR_ERR(bt_bmc->base);
> >
> >         mutex_init(&bt_bmc->mutex);
> >         init_waitqueue_head(&bt_bmc->queue);
> > @@ -483,12 +447,12 @@ static int bt_bmc_probe(struct platform_device *pdev)
> >                 add_timer(&bt_bmc->poll_timer);
> >         }
> >
> > -       regmap_write(bt_bmc->map, bt_bmc->offset + BT_CR0,
> > -                    (BT_IO_BASE << BT_CR0_IO_BASE) |
> > +       writel((BT_IO_BASE << BT_CR0_IO_BASE) |
> >                      (BT_IRQ << BT_CR0_IRQ) |
> >                      BT_CR0_EN_CLR_SLV_RDP |
> >                      BT_CR0_EN_CLR_SLV_WRP |
> > -                    BT_CR0_ENABLE_IBT);
> > +                    BT_CR0_ENABLE_IBT,
> > +               bt_bmc->base + BT_CR0);
> >
> >         clr_b_busy(bt_bmc);
> >
> > --
> > 2.33.0
> >


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
