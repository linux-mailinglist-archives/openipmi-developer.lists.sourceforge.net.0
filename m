Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C37C74235DB
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Oct 2021 04:33:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXwkP-0001nG-L4; Wed, 06 Oct 2021 02:33:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1mXwkO-0001n5-GB
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Oct 2021 02:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vzTgsBDtLpPf4syFgl7ZwYgAFxCOd/0LJ0X6GmX/GmI=; b=HVAvz/PAKvjoEvgwB3TwWLuP3n
 XcRimsN4T1Jd7RyNe/JekUwhJTJo0XRcoglS4Wbhhz+La2O3hRwo9aqB2a3nQbyHbJahHEwTwlDdZ
 rdeZAOUVN9x001A/YxVGnsYECseAiYPHYHs/XSFZsDso7nSAYsXke7oO6hJBBgRKLW20=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vzTgsBDtLpPf4syFgl7ZwYgAFxCOd/0LJ0X6GmX/GmI=; b=YZTdB7cpQEhDebfe19arfuM5ev
 sTDhOJ8A9r62Pl6DOFa3IJ+CssrBr+GtQ5Mzt6quhz1s0WCFwl5gxfCuU0oU6ZcTt/ojajJ71MTU3
 77esxNo4JGQq50YGLuoQd0yLkmb2FOVTg0h6dzyuNfe3wpfL2pAh33fonSBQlt5coqB8=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXwkG-007njh-KM
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Oct 2021 02:33:32 +0000
Received: by mail-qv1-f42.google.com with SMTP id d20so951476qvm.8
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 05 Oct 2021 19:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vzTgsBDtLpPf4syFgl7ZwYgAFxCOd/0LJ0X6GmX/GmI=;
 b=m/eu9FiX6o/G17PiDyFa1vZFaUOQX84Ow3uxXevRPoke8PMKBEvV1UPi1agwJ9a6/n
 PI00xnrjomxcVHInt5/ZkPYEQrmeuOQid01Ti7xC86tx5hh3oCgAip6W5ADjuAaW2jbN
 EprTVYoRlvldMqQeM7FbYodEMoo2e9WaIbXRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vzTgsBDtLpPf4syFgl7ZwYgAFxCOd/0LJ0X6GmX/GmI=;
 b=5Gzfv+Q27ibu3IRquN8NAw3rV9Vf2RgmtAGa3O+AnXRXpZvYf8th8pG0rI2qtQ506R
 VzkMb99ze2iZav5LQWmgTcmj1j8l3vlo//QTB0FN/o4ZApOod2ECJ0TmL3AYP9qKVyt1
 w3IOsRFJu7mGKthM8dq70jD4Y1ufBKINEhU1C70FC6Feq6aWdUgGKST9T7TDOIlVso7l
 NDtD0611fT7BZUrd2GQsT6FiKj4O22vy+EYPf58JfpZK6wArmKE2Q/NjhyAWdpaiSJs3
 VF39xK7UAX/Xf1vtTEt0Z6aM7gAxTTgQuJ2WpU58iHj63zNFsaE24bUBtwFJBNeg2IBU
 PRgQ==
X-Gm-Message-State: AOAM533cYSg8m8hMeBCddMKmg7vH3d+M2bxpT8Lcz9VWqApXr4ibuOm0
 d+qi8WzizZ6P1vwWSnzNISwGnHfpV8ja4esqCqY=
X-Google-Smtp-Source: ABdhPJyFg7M+wRt/T2xmNB9jboX+MkFAXrtGFQrTO7t3zEXyEApbkWBdo1mc5mDxESzIdBj4nPRK3JNWsLW30ld48Pk=
X-Received: by 2002:a0c:f98a:: with SMTP id t10mr5584038qvn.27.1633487598485; 
 Tue, 05 Oct 2021 19:33:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210903051039.307991-1-joel@jms.id.au>
In-Reply-To: <20210903051039.307991-1-joel@jms.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 6 Oct 2021 02:33:06 +0000
Message-ID: <CACPK8XezoNyq2Dh+=fJ2sDzot3iwvXg=76eZUwdPcn_VQWxqvw@mail.gmail.com>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, On Fri, 3 Sept 2021 at 05:10,
 Joel Stanley <joel@jms.id.au>
 wrote: > > This driver was originally written to use the regmap abstraction
 with no > clear benefit. As the registers are always mmio and th [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXwkG-007njh-KM
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
Cc: Andrew Jeffery <andrew@aj.id.au>, Alistar Popple <alistair@popple.id.au>,
 openipmi-developer@lists.sourceforge.net,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On Fri, 3 Sept 2021 at 05:10, Joel Stanley <joel@jms.id.au> wrote:
>
> This driver was originally written to use the regmap abstraction with no
> clear benefit. As the registers are always mmio and there is no sharing
> of the region with other devices, we can safely read and write without
> the locking that regmap provides.
>
> This reduces the code size of the driver by about 25%.

Do you have any feedback on this one?

Cheers,

Joel


>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  drivers/char/ipmi/bt-bmc.c | 68 +++++++++-----------------------------
>  1 file changed, 16 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index 6e3d247b55d1..fb771ce6f7bf 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -8,13 +8,11 @@
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> -#include <linux/mfd/syscon.h>
>  #include <linux/miscdevice.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/poll.h>
> -#include <linux/regmap.h>
>  #include <linux/sched.h>
>  #include <linux/timer.h>
>
> @@ -59,8 +57,7 @@
>  struct bt_bmc {
>         struct device           dev;
>         struct miscdevice       miscdev;
> -       struct regmap           *map;
> -       int                     offset;
> +       void __iomem            *base;
>         int                     irq;
>         wait_queue_head_t       queue;
>         struct timer_list       poll_timer;
> @@ -69,29 +66,14 @@ struct bt_bmc {
>
>  static atomic_t open_count = ATOMIC_INIT(0);
>
> -static const struct regmap_config bt_regmap_cfg = {
> -       .reg_bits = 32,
> -       .val_bits = 32,
> -       .reg_stride = 4,
> -};
> -
>  static u8 bt_inb(struct bt_bmc *bt_bmc, int reg)
>  {
> -       uint32_t val = 0;
> -       int rc;
> -
> -       rc = regmap_read(bt_bmc->map, bt_bmc->offset + reg, &val);
> -       WARN(rc != 0, "regmap_read() failed: %d\n", rc);
> -
> -       return rc == 0 ? (u8) val : 0;
> +       return readb(bt_bmc->base + reg);
>  }
>
>  static void bt_outb(struct bt_bmc *bt_bmc, u8 data, int reg)
>  {
> -       int rc;
> -
> -       rc = regmap_write(bt_bmc->map, bt_bmc->offset + reg, data);
> -       WARN(rc != 0, "regmap_write() failed: %d\n", rc);
> +       writeb(data, bt_bmc->base + reg);
>  }
>
>  static void clr_rd_ptr(struct bt_bmc *bt_bmc)
> @@ -376,18 +358,15 @@ static irqreturn_t bt_bmc_irq(int irq, void *arg)
>  {
>         struct bt_bmc *bt_bmc = arg;
>         u32 reg;
> -       int rc;
>
> -       rc = regmap_read(bt_bmc->map, bt_bmc->offset + BT_CR2, &reg);
> -       if (rc)
> -               return IRQ_NONE;
> +       reg = readl(bt_bmc->base + BT_CR2);
>
>         reg &= BT_CR2_IRQ_H2B | BT_CR2_IRQ_HBUSY;
>         if (!reg)
>                 return IRQ_NONE;
>
>         /* ack pending IRQs */
> -       regmap_write(bt_bmc->map, bt_bmc->offset + BT_CR2, reg);
> +       writel(reg, bt_bmc->base + BT_CR2);
>
>         wake_up(&bt_bmc->queue);
>         return IRQ_HANDLED;
> @@ -398,6 +377,7 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
>  {
>         struct device *dev = &pdev->dev;
>         int rc;
> +       u32 reg;
>
>         bt_bmc->irq = platform_get_irq_optional(pdev, 0);
>         if (bt_bmc->irq < 0)
> @@ -417,11 +397,11 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
>          * will be cleared (along with B2H) when we can write the next
>          * message to the BT buffer
>          */
> -       rc = regmap_update_bits(bt_bmc->map, bt_bmc->offset + BT_CR1,
> -                               (BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY),
> -                               (BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY));
> +       reg = readl(bt_bmc->base + BT_CR1);
> +       reg |= BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY;
> +       writel(reg, bt_bmc->base + BT_CR1);
>
> -       return rc;
> +       return 0;
>  }
>
>  static int bt_bmc_probe(struct platform_device *pdev)
> @@ -439,25 +419,9 @@ static int bt_bmc_probe(struct platform_device *pdev)
>
>         dev_set_drvdata(&pdev->dev, bt_bmc);
>
> -       bt_bmc->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> -       if (IS_ERR(bt_bmc->map)) {
> -               void __iomem *base;
> -
> -               /*
> -                * Assume it's not the MFD-based devicetree description, in
> -                * which case generate a regmap ourselves
> -                */
> -               base = devm_platform_ioremap_resource(pdev, 0);
> -               if (IS_ERR(base))
> -                       return PTR_ERR(base);
> -
> -               bt_bmc->map = devm_regmap_init_mmio(dev, base, &bt_regmap_cfg);
> -               bt_bmc->offset = 0;
> -       } else {
> -               rc = of_property_read_u32(dev->of_node, "reg", &bt_bmc->offset);
> -               if (rc)
> -                       return rc;
> -       }
> +       bt_bmc->base = devm_platform_ioremap_resource(pdev, 0);
> +       if (IS_ERR(bt_bmc->base))
> +               return PTR_ERR(bt_bmc->base);
>
>         mutex_init(&bt_bmc->mutex);
>         init_waitqueue_head(&bt_bmc->queue);
> @@ -483,12 +447,12 @@ static int bt_bmc_probe(struct platform_device *pdev)
>                 add_timer(&bt_bmc->poll_timer);
>         }
>
> -       regmap_write(bt_bmc->map, bt_bmc->offset + BT_CR0,
> -                    (BT_IO_BASE << BT_CR0_IO_BASE) |
> +       writel((BT_IO_BASE << BT_CR0_IO_BASE) |
>                      (BT_IRQ << BT_CR0_IRQ) |
>                      BT_CR0_EN_CLR_SLV_RDP |
>                      BT_CR0_EN_CLR_SLV_WRP |
> -                    BT_CR0_ENABLE_IBT);
> +                    BT_CR0_ENABLE_IBT,
> +               bt_bmc->base + BT_CR0);
>
>         clr_b_busy(bt_bmc);
>
> --
> 2.33.0
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
