Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E115759CD26
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Aug 2022 02:22:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oQHgi-0004dX-EX;
	Tue, 23 Aug 2022 00:22:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joel.stan@gmail.com>) id 1oQHgg-0004dR-VT
 for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Aug 2022 00:22:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mz0byrLcRTsU0F5GvVr/+gvi7taYHKM3YuyQL8j7nNQ=; b=LjRGul8Y9civrIt6lwUExK4Haz
 xMoNz+RuSO5UWTCc35+f34OWw0L9hsyxXXLyyHE06t4TuTqcIpFiFkv62zWzSYHoDhSayZCL3loKq
 Ln44CbHKimFkSyq0dOohYY/tmi0UlrctlXJnAun4PA0a5ocEy8PqjlyEgOcwmKZYSEfw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mz0byrLcRTsU0F5GvVr/+gvi7taYHKM3YuyQL8j7nNQ=; b=LfS0CwsHySnmVdfgMkPtq+05bs
 Gm2pH8KjpNNOo4rIG9OZkarT0RqaUiq2l3Gzeu1070bjYnwaVFFhr0B0KG2MaPVVB9I8lfRvWRQJw
 6WNpmHydzk8j1zeb+GeUEmjVHMIsoGRHU4eY6mkRU69iFzOAOpOntoiSrjRygr01zQWU=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oQHgY-00DerG-9S for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Aug 2022 00:22:34 +0000
Received: by mail-wr1-f43.google.com with SMTP id r16so15105553wrm.6
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 22 Aug 2022 17:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=Mz0byrLcRTsU0F5GvVr/+gvi7taYHKM3YuyQL8j7nNQ=;
 b=LOucV1wiHZHotBZZ9b5YkGXXXjfFuWz3ppGvlnqWCa7QIFMjgJeA9a0zrYU2ocFs8J
 oz0UkvhlzmPuoOfBVzzNc2QurNAXE8GsX6jxirfeN1og8baaJriiQiyHRPtTd0xJngBq
 4HJ+eHVkbmkeFpLSNpatKx68srJZ1gbmiZ7Ek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=Mz0byrLcRTsU0F5GvVr/+gvi7taYHKM3YuyQL8j7nNQ=;
 b=JIPbyxK9SscHM3THVOLy6uLg2mF0uNVReHIMwbwucC2Y9NhzJSmTA0LA53nyHIrYkL
 d0ru0JVAuzVwGgH/EIqkfGZ53Eno0qpAm/RG42P+Ej1ekV6lp7rrdz5KXuUUa0NjBX0h
 IkHGHeqKcW6Gn6IECM3XoYbi3lUyF6S4enYWuLNePhu78MEcY1QXFllBxU5jqjcJFz9v
 FxF6JN2z+KL8PCX8HVd2q5wjP4O3hKRBv/P/kJCoqNcGafegy7yTruaHOrdV1FqHsazt
 A9sdr+X//sMBcTYeG/YNJdIkZXNv4U0+E32LenVAiH7NoKYg+IWNGHnzOmBKRSOvkLTc
 gxxg==
X-Gm-Message-State: ACgBeo0kQthcLLWdwS+dZceGE0htP96+p117maihZ8JR/W1R6feMpDTK
 lqVl4Vrm2eEuLnbX4rLCBAXZWaaOOaugMgsrqe8=
X-Google-Smtp-Source: AA6agR7Btjdk0SI6WHiOceolZFSYZ80nCvqqc97cKVSAbqPfqxJzMNT7rFnn8uI6otZfk9oS0BvZubzamgD7yOO/lTw=
X-Received: by 2002:a5d:6484:0:b0:225:55d8:d528 with SMTP id
 o4-20020a5d6484000000b0022555d8d528mr4561198wri.3.1661214139760; Mon, 22 Aug
 2022 17:22:19 -0700 (PDT)
MIME-Version: 1.0
References: <fb81dda34f9db0b9f743b247a2464576dcccd7c9.1661094034.git.i.kononenko@yadro.com>
 <ad3cd046c4dcb9169aaff6c0b739b23d0a06014d.1661149313.git.i.kononenko@yadro.com>
In-Reply-To: <ad3cd046c4dcb9169aaff6c0b739b23d0a06014d.1661149313.git.i.kononenko@yadro.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 23 Aug 2022 00:22:07 +0000
Message-ID: <CACPK8Xfe+hPLXcgwWxZtb5H_WG8GRJ7pLfRXG3jupk8ANc7wgQ@mail.gmail.com>
To: Igor Kononenko <i.kononenko@yadro.com>, Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 22 Aug 2022 at 06:36,
 Igor Kononenko <i.kononenko@yadro.com>
 wrote: > > The previos v1 [PATCH 1/3] have error of getting `struct
 kcs_bmc_device`
 > pointer from `struct platform_device *`. Repl [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oQHgY-00DerG-9S
Subject: Re: [Openipmi-developer] [PATCH v2 1/3] ipmi:kcs_bmc: Add cleanup
 regmap(interrupt-regs) on a shutdown.
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
Cc: Corey Minyard <minyard@acm.org>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 22 Aug 2022 at 06:36, Igor Kononenko <i.kononenko@yadro.com> wrote:
>
> The previos v1 [PATCH 1/3] have error of getting `struct kcs_bmc_device`
> pointer from `struct platform_device *`. Replaced to retriveing pointer by
> `platform_get_drvdata()`

Can we get a v3 with your original commit message added? You had a
good write up in v1 but it was dropped in v2.

This change looks like the right thing to do. We should get Andrew to
review too, as he spends more time with the KCS controllers.

The missed irq issue was seen with the other LPC sub drivers because
the clock wasn't enabled. We ended up with this patch:

https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/

Do we need to do something similar for KCS?

>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Igor Kononenko <i.kononenko@yadro.com>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index cdc88cde1e9a..8437f3cfe3f4 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -636,6 +636,14 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
>         return 0;
>  }
>
> +static void aspeed_kcs_shutdown(struct platform_device *pdev)
> +{
> +       struct aspeed_kcs_bmc *priv = platform_get_drvdata(pdev);
> +       struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
> +
> +       aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF), 0);
> +}
> +
>  static const struct of_device_id ast_kcs_bmc_match[] = {
>         { .compatible = "aspeed,ast2400-kcs-bmc-v2" },
>         { .compatible = "aspeed,ast2500-kcs-bmc-v2" },
> @@ -651,6 +659,7 @@ static struct platform_driver ast_kcs_bmc_driver = {
>         },
>         .probe  = aspeed_kcs_probe,
>         .remove = aspeed_kcs_remove,
> +       .shutdown = aspeed_kcs_shutdown,
>  };
>  module_platform_driver(ast_kcs_bmc_driver);
>
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
