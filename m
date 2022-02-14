Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE364B5AFE
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Feb 2022 21:31:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nJi0n-0005Xi-Hp; Mon, 14 Feb 2022 20:31:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1nJX89-0007Gd-Mv
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 08:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PlmHX1HHokXQyxG79YUgUTlDvUDqxBtLYhszaegEBgU=; b=CjEAFZCq8UzUVTDkU5wnK3PaQX
 bymkPpXHVnstR0wA9aT3TEvVraeKGLoNiXKg22/TNUDyLPez+ju0E5HQ2LdgzONw33EybMu4yXr51
 M0bVhSGqhI+KDeRRoKzwck3R8XYpK4AxWWIak8J/J91NtiOS2oPL50S5EmiWwpqdCBCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PlmHX1HHokXQyxG79YUgUTlDvUDqxBtLYhszaegEBgU=; b=FZXMQuco5wmBRFDgLjLAyRCLiH
 pG3yZSNEnvhQrgjOg5ySy0MDOJbDhhvfnO9WpHhKBRaBsgZz5CKBQkq6ubAARhhExTCWggUEOFoYZ
 HjQnLYl+EeLW8sTyrz87n8BqdoB/CegNzz04rb2ukmW4rJCYvuyuJpmYdy8o8S8Rk1JI=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nJX86-001Hom-0R
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 08:54:43 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 v5-20020a17090a4ec500b001b8b702df57so18245176pjl.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Feb 2022 00:54:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PlmHX1HHokXQyxG79YUgUTlDvUDqxBtLYhszaegEBgU=;
 b=5621gXtKuj24j+4s7c+0PBJ/odkRLXzW//xBCkxuvzFVRG0UAPwAfHceIWHpIH2flE
 cWQBq5XoiVbBKlz2jpZuzvHD63tltXhiTwoBcJq0cXxK3HXDQIxVJ4oKbWtXnvPbk4q7
 hS38O8n0TM5ai4YCTJ2To0mHJuqP/7cxJkYS2m+aRTv3TRAyoHbTK1y19nwobmmbYOLP
 pMkdvZryLu7TJ1Okc25Ck5XbVOIR0AzrK/he89KDqHllYDDxJTsuynwaLFYY7ooQM2EN
 YMW+hNkcAKKx1XbZEbLIgatbJVcfnV+xzvgGamqrKUlYIYwPbU9EEhQzxjwrT1mwuVWx
 roWA==
X-Gm-Message-State: AOAM531YZvEWqJyS13Trm5GH78iX5n+zZpdJ9L7IF6Y2UBcIhgfBWtjS
 8LdT4B0jjzMBOqVuBxgxs/joOKEtf9EzUCB4
X-Google-Smtp-Source: ABdhPJxivdNGUTi1lMHKgPzQN801w+ibEwqpmwt1BTk+X2GYK7TbHf2hYeRXqajRfY6cSvExUHzAVw==
X-Received: by 2002:a17:90a:1a50:: with SMTP id
 16mr5269295pjl.82.1644828876274; 
 Mon, 14 Feb 2022 00:54:36 -0800 (PST)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com.
 [209.85.216.46])
 by smtp.gmail.com with ESMTPSA id w2sm19075888pfb.139.2022.02.14.00.54.36
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Feb 2022 00:54:36 -0800 (PST)
Received: by mail-pj1-f46.google.com with SMTP id y9so13896631pjf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Feb 2022 00:54:36 -0800 (PST)
X-Received: by 2002:a05:6122:c8f:: with SMTP id
 ba15mr3731293vkb.39.1644828865522; 
 Mon, 14 Feb 2022 00:54:25 -0800 (PST)
MIME-Version: 1.0
References: <20220212201631.12648-1-s.shtylyov@omp.ru>
 <20220212201631.12648-2-s.shtylyov@omp.ru>
In-Reply-To: <20220212201631.12648-2-s.shtylyov@omp.ru>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 14 Feb 2022 09:54:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUPxX7Tja6BCjEb4KDobNFPMcM66Fk7Z+VsO7pgb8JnjA@mail.gmail.com>
Message-ID: <CAMuHMdUPxX7Tja6BCjEb4KDobNFPMcM66Fk7Z+VsO7pgb8JnjA@mail.gmail.com>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Sergey, On Sat, Feb 12, 2022 at 9:17 PM Sergey Shtylyov
 <s.shtylyov@omp.ru> wrote: > This patch is based on the former Andy
 Shevchenko's
 patch: > > https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.s [...]
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nJX86-001Hom-0R
X-Mailman-Approved-At: Mon, 14 Feb 2022 20:31:49 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/2] platform: make
 platform_get_irq_optional() optional
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jiri Slaby <jirislaby@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 alsa-devel@alsa-project.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-phy@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Guenter Roeck <groeck@chromium.org>, linux-spi@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, openipmi-developer@lists.sourceforge.net,
 Peter Korsgaard <peter@korsgaard.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, kvm@vger.kernel.org,
 Kamal Dasu <kdasu.kdev@gmail.com>, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, platform-driver-x86@vger.kernel.org,
 linux-pwm@vger.kernel.org, Zha Qipeng <qipeng.zha@intel.com>,
 Corey Minyard <minyard@acm.org>, linux-pm@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, John Garry <john.garry@huawei.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Sergey,

On Sat, Feb 12, 2022 at 9:17 PM Sergey Shtylyov <s.shtylyov@omp.ru> wrote:
> This patch is based on the former Andy Shevchenko's patch:
>
> https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shevchenko@linux.intel.com/
>
> Currently platform_get_irq_optional() returns an error code even if IRQ
> resource simply has not been found.  It prevents the callers from being
> error code agnostic in their error handling:
>
>         ret = platform_get_irq_optional(...);
>         if (ret < 0 && ret != -ENXIO)
>                 return ret; // respect deferred probe
>         if (ret > 0)
>                 ...we get an IRQ...
>
> All other *_optional() APIs seem to return 0 or NULL in case an optional
> resource is not available.  Let's follow this good example, so that the
> callers would look like:
>
>         ret = platform_get_irq_optional(...);
>         if (ret < 0)
>                 return ret;
>         if (ret > 0)
>                 ...we get an IRQ...
>
> Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> ---
> Changes in version 2:

Thanks for the update!

>  drivers/base/platform.c                  | 60 +++++++++++++++---------

The core change LGTM.

I'm only looking at Renesas drivers below...

> --- a/drivers/mmc/host/sh_mmcif.c
> +++ b/drivers/mmc/host/sh_mmcif.c
> @@ -1465,14 +1465,14 @@ static int sh_mmcif_probe(struct platform_device *pdev)
>         sh_mmcif_sync_reset(host);
>         sh_mmcif_writel(host->addr, MMCIF_CE_INT_MASK, MASK_ALL);
>
> -       name = irq[1] < 0 ? dev_name(dev) : "sh_mmc:error";
> +       name = irq[1] <= 0 ? dev_name(dev) : "sh_mmc:error";

"== 0" should be sufficient here, if the code above would bail out
on errors returned by platform_get_irq_optional(), which it currently
doesn't do.
As this adds missing error handling, this is to be fixed by a separate
patch later?

>         ret = devm_request_threaded_irq(dev, irq[0], sh_mmcif_intr,
>                                         sh_mmcif_irqt, 0, name, host);
>         if (ret) {
>                 dev_err(dev, "request_irq error (%s)\n", name);
>                 goto err_clk;
>         }
> -       if (irq[1] >= 0) {
> +       if (irq[1] > 0) {

OK.

>                 ret = devm_request_threaded_irq(dev, irq[1],
>                                                 sh_mmcif_intr, sh_mmcif_irqt,
>                                                 0, "sh_mmc:int", host);

> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -439,7 +439,7 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
>         u32 val;
>         int ret;
>
> -       if (!rcar_gen3_is_any_rphy_initialized(channel) && channel->irq >= 0) {
> +       if (!rcar_gen3_is_any_rphy_initialized(channel) && channel->irq > 0) {
>                 INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
>                 ret = request_irq(channel->irq, rcar_gen3_phy_usb2_irq,
>                                   IRQF_SHARED, dev_name(channel->dev), channel);
> @@ -486,7 +486,7 @@ static int rcar_gen3_phy_usb2_exit(struct phy *p)
>                 val &= ~USB2_INT_ENABLE_UCOM_INTEN;
>         writel(val, usb2_base + USB2_INT_ENABLE);
>
> -       if (channel->irq >= 0 && !rcar_gen3_is_any_rphy_initialized(channel))
> +       if (channel->irq > 0 && !rcar_gen3_is_any_rphy_initialized(channel))
>                 free_irq(channel->irq, channel);
>
>         return 0;

LGTM, but note that all errors returned by platform_get_irq_optional()
are currently ignored, even real errors, which should be propagated
up.
As this adds missing error handling, this is to be fixed by a separate
patch later?

> --- a/drivers/thermal/rcar_gen3_thermal.c
> +++ b/drivers/thermal/rcar_gen3_thermal.c
> @@ -432,6 +432,8 @@ static int rcar_gen3_thermal_request_irqs(struct rcar_gen3_thermal_priv *priv,
>                 irq = platform_get_irq_optional(pdev, i);
>                 if (irq < 0)
>                         return irq;
> +               if (!irq)
> +                       return -ENXIO;

While correct, and preserving existing behavior, this looks strange
to me.  Probably this should return zero instead (i.e. the check
above should be changed to "<= 0"), and the caller should start caring
about and propagating up real errors.
As this adds missing error handling, this is to be fixed by a separate
patch later?

>
>                 irqname = devm_kasprintf(dev, GFP_KERNEL, "%s:ch%d",
>                                          dev_name(dev), i);
> diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
> index fb65dc601b23..328ab074fd89 100644

> --- a/drivers/tty/serial/sh-sci.c
> +++ b/drivers/tty/serial/sh-sci.c

I think you missed

    #define SCIx_IRQ_IS_MUXED(port)                 \
            ((port)->irqs[SCIx_ERI_IRQ] ==  \
             (port)->irqs[SCIx_RXI_IRQ]) || \
            ((port)->irqs[SCIx_ERI_IRQ] &&  \
             ((port)->irqs[SCIx_RXI_IRQ] < 0))

above? The last condition should become "<= 0".

> @@ -1915,7 +1915,7 @@ static int sci_request_irq(struct sci_port *port)
>                          * Certain port types won't support all of the
>                          * available interrupt sources.
>                          */
> -                       if (unlikely(irq < 0))
> +                       if (unlikely(irq <= 0))
>                                 continue;
>                 }
>
> @@ -1963,7 +1963,7 @@ static void sci_free_irq(struct sci_port *port)
>                  * Certain port types won't support all of the available
>                  * interrupt sources.
>                  */
> -               if (unlikely(irq < 0))
> +               if (unlikely(irq <= 0))
>                         continue;
>
>                 /* Check if already freed (irq was muxed) */
> @@ -2875,7 +2875,7 @@ static int sci_init_single(struct platform_device *dev,
>         if (sci_port->irqs[0] < 0)
>                 return -ENXIO;
>
> -       if (sci_port->irqs[1] < 0)
> +       if (sci_port->irqs[1] <= 0)
>                 for (i = 1; i < ARRAY_SIZE(sci_port->irqs); i++)
>                         sci_port->irqs[i] = sci_port->irqs[0];
>

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
