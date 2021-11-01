Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EF444240C
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 00:33:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhgo4-00069G-EU; Mon, 01 Nov 2021 23:33:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mhgo3-00069A-NL
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QjgwzgqwbzNK9oqZJgz4ZvJB5kDRKduRYLNHBkFbBKo=; b=m+VIzdKCwsVw+m2Y6nPU8t5flo
 4yma9xy1P7roMnLDMUW03YpJ6LgXLS4hXb8gQltwdYLSoeyIKOTgsyGcAbTy9BTQLL6mdDx3l1IWD
 9kZz7U8O37IZcU2jN/8bx8W/uNsQwwjiDAHeyz8kvLKrh0ut1tr3Yu4TXyxwb5SJRRRI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QjgwzgqwbzNK9oqZJgz4ZvJB5kDRKduRYLNHBkFbBKo=; b=U3VSidLGuZUzxxVFVC0JxbSLNw
 5YDaRLasAYOpWGw4IxYzeXBLyDZwDfpsJ7MyP0Z6DGkafUrh/IlRtCxKNoirtmHNuR6dIowMH2KMi
 kp373mjZ+2zHIzS/f6ejLQ4/VB3ZhNbNu7zR2V5AUQrDvt4mfpJogV7vRgD578X3gCBA=;
Received: from mail-qt1-f181.google.com ([209.85.160.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhgnt-0004RA-Op
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:33:35 +0000
Received: by mail-qt1-f181.google.com with SMTP id h4so16818172qth.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 16:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QjgwzgqwbzNK9oqZJgz4ZvJB5kDRKduRYLNHBkFbBKo=;
 b=lNS0lW0Bf3LqiISo6ssIQiWgPZf7bKwxkn3ypLuarmolLkV7h0JTX8fxQ15zZKQNK9
 ig2f3An/FuWvcM/Uu2F6ibnE4irSOI3KsOo4S66A6wbgMDgQz4sHkRLGoS33vyAb3bI2
 jHGcLz3yhD9xyou5z5lLd/nc6nh0RibNXhy1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QjgwzgqwbzNK9oqZJgz4ZvJB5kDRKduRYLNHBkFbBKo=;
 b=IYT10pZ1MqPF1GfUvq6WX7ebAl/Up4A9Oa2c3TGr6o4rv2o/tL7mxEADFE58JieFQN
 cD2/t2JZt3915aO4pM8fVC/oeyHcJEyZ6AIYTu7W7w1f48G7i58ZCYCOmrnE4BizNYGS
 6EOWIuCTNr4cIQ7qGMcf1hDJ4S4TnriFEEN2mXh4PHU9GHlDCEADxQ7sKtjYhKx8PzX1
 MCvhQI6VSoM7FM/+OTH1wQC+000NayfzCV+bBXBUZnmy980n/8xZVjF+RJFpCbd7DINw
 7c+aKYr1+IV7ezo0FfOop/z3NaOETJL+5BYiuwiuYynjQmjQYcco3zFbrEVNers4ytF5
 31dA==
X-Gm-Message-State: AOAM530fAU1RbVGRjDkx334KoXgkis3SC7jbqWbl60s+HqMRXKIrLwhi
 I5h24Zd776krKQJd0L5fXCwrtdjtlq6pldmIJlM=
X-Google-Smtp-Source: ABdhPJychv7F4FV4O5kk7VzRh9L9Ls0Typ4y+FpsD/Tr4jzGYwH3BzgraY2LvoFZRqz6d9h/RUeOBScQu+l3HvFt1Lg=
X-Received: by 2002:ac8:5cd5:: with SMTP id s21mr9578033qta.392.1635809599964; 
 Mon, 01 Nov 2021 16:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-5-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-5-jae.hyun.yoo@intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 1 Nov 2021 23:33:08 +0000
Message-ID: <CACPK8Xc-NVyZ31+_L8oL3aaGHX9TLRxJy9666570ZOuirUYw_w@mail.gmail.com>
To: Jae Hyun Yoo <jae.hyun.yoo@intel.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
 > > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > If LPC KCS driver
 is registered ahead of lpc-ctrl module, LPC > KCS block will be [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.181 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.181 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhgnt-0004RA-Op
Subject: Re: [Openipmi-developer] [PATCH -next 4/4] ipmi: kcs_bmc_aspeed:
 add clock control logic
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Cedric Le Goater <clg@kaod.org>, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>
> If LPC KCS driver is registered ahead of lpc-ctrl module, LPC
> KCS block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
>
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds clock control logic into the LPC
> KCS driver.
>
> Fixes: be2ed207e374 ("ipmi: add an Aspeed KCS IPMI BMC driver")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
>  1 file changed, 27 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 92a37b33494c..00706472cc4d 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -6,6 +6,7 @@
>  #define pr_fmt(fmt) "aspeed-kcs-bmc: " fmt
>
>  #include <linux/atomic.h>
> +#include <linux/clk.h>
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> @@ -126,6 +127,8 @@ struct aspeed_kcs_bmc {
>                 bool remove;
>                 struct timer_list timer;
>         } obe;
> +
> +       struct clk *clk;
>  };
>
>  struct aspeed_kcs_of_ops {
> @@ -620,24 +623,37 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>                 return -ENODEV;
>         }
>
> +       priv->clk = devm_clk_get(&pdev->dev, NULL);
> +       if (IS_ERR(priv->clk)) {
> +               rc = PTR_ERR(priv->clk);
> +               if (rc != -EPROBE_DEFER)
> +                       dev_err(&pdev->dev, "Couldn't get clock\n");
> +               return rc;
> +       }
> +       rc = clk_prepare_enable(priv->clk);
> +       if (rc) {
> +               dev_err(&pdev->dev, "Couldn't enable clock\n");
> +               return rc;
> +       }
> +
>         spin_lock_init(&priv->obe.lock);
>         priv->obe.remove = false;
>         timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
>
>         rc = aspeed_kcs_set_address(kcs_bmc, addrs, nr_addrs);
>         if (rc)
> -               return rc;
> +               goto err;
>
>         /* Host to BMC IRQ */
>         rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
>         if (rc)
> -               return rc;
> +               goto err;
>
>         /* BMC to Host IRQ */
>         if (have_upstream_irq) {
>                 rc = aspeed_kcs_config_upstream_irq(priv, upstream_irq[0], upstream_irq[1]);
>                 if (rc < 0)
> -                       return rc;
> +                       goto err;
>         } else {
>                 priv->upstream_irq.mode = aspeed_kcs_irq_none;
>         }
> @@ -650,13 +666,19 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>         rc = kcs_bmc_add_device(&priv->kcs_bmc);
>         if (rc) {
>                 dev_warn(&pdev->dev, "Failed to register channel %d: %d\n", kcs_bmc->channel, rc);
> -               return rc;
> +               goto err;
>         }
>
>         dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
>                         kcs_bmc->channel, addrs[0]);
>
>         return 0;
> +
> +err:
> +       aspeed_kcs_enable_channel(kcs_bmc, false);
> +       clk_disable_unprepare(priv->clk);
> +
> +       return rc;
>  }
>
>  static int aspeed_kcs_remove(struct platform_device *pdev)
> @@ -664,6 +686,7 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
>         struct aspeed_kcs_bmc *priv = platform_get_drvdata(pdev);
>         struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
>
> +       clk_disable_unprepare(priv->clk);
>         kcs_bmc_remove_device(kcs_bmc);
>
>         aspeed_kcs_enable_channel(kcs_bmc, false);
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
