Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F3131DB69
	for <lists+openipmi-developer@lfdr.de>; Wed, 17 Feb 2021 15:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:In-Reply-To:References:MIME-Version:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dDtveVoeAszGcV2TGqJaZiC7yQ9P/PSo2vDl3DODjOw=; b=M8bLOM+WivDwth0wnwLyMsBHj
	LtqAqzppgwlNjjrf4/358EGDzRu6NQz5dYZPzA7ZNcyCAnRTYl4btUX06yTkkZA5c903GKkToMHJ5
	mZK0jzWoYOPUUfAZyjhwmpruI14MA8FAFYe8bs7HmDvGg474Rk/zP+eSUBmX5KY7MafxI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lCNlT-0005Ff-QP; Wed, 17 Feb 2021 14:25:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wak@google.com>) id 1lCHT3-0006wP-3T
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 07:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pLrOn6JCD1IQMiT1PtJG5zcUX0oTeaAnYtGJ1vDreZI=; b=V7N12CULmE5SCjjxnGTI2Iot7y
 o97k+7jgwzWxSCGskzm7w+cp6b6v2yI3LPdLOA5CIvm+K9x3UDHlWe15akMEYp4lV4ucXepDYpCSD
 C7LSRGOXmDmJ1Wz3sdQUJT2giodVjfs0xmHtGDhO/FD4zhoTQoJMKUk9q8rTtyJiPiV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pLrOn6JCD1IQMiT1PtJG5zcUX0oTeaAnYtGJ1vDreZI=; b=XnJrzAnql1H35JIHFjaSQxPV8h
 ZMIgY4zjb1kT/+znyzopoKJeio/MynCrCvh4VibLaXwTHYC22gDT8N1128N07RXR2kl6jbbRGFiLB
 hc7wki5sCjk1pUdPqXGmqage6YCE3GlWe4TtXICpk0a4c6IcLB3E5N1lCfpwO1smHCOw=;
Received: from mail-lf1-f43.google.com ([209.85.167.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lCHSs-0008Np-5V
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 07:41:49 +0000
Received: by mail-lf1-f43.google.com with SMTP id d24so19946544lfs.8
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Feb 2021 23:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pLrOn6JCD1IQMiT1PtJG5zcUX0oTeaAnYtGJ1vDreZI=;
 b=t1DU0cbYdORM1FYse8Tfna+cnbdhC0zhNgenbcn6/jiVyMjsVIRksNJh0X2bclZaAQ
 KdUMLS0Jq2fSoMvb3JibBAKF2EIbGil7Y1mdy2dseqBMYeblrP3cwyLvKMVq31+r7eFn
 1oZALlrmk39/h8qhoir5RMSTZ3PJgyardzUPu8SM3wqYUGpB9GJGWACN7l92I4Kwtrw7
 /kGZviu60IXxU8X2uSA9U3UB8nQbp9C79nj2xnuqFgEZ4c6NvoGXHXUFr6WZfFf9SBgd
 y7ZiNszuAS0fpbmXkCkyhrHhQOcIhpQsIYWVkivbPkS4C+1jzLQIL7Wan9glhfMkK3XB
 rW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pLrOn6JCD1IQMiT1PtJG5zcUX0oTeaAnYtGJ1vDreZI=;
 b=e9H0bbJ2eOYTQfaQx6aDtN363rcKbwJRVkxsr8+6HCTnSNWZhfXCpA2NVEPFS8Jatc
 BXgyC4SDI9xmkqdbdk2hOqBU8dBp0hm9MA/MkuuBPYVlpaE/EHEvESdWHFkaWAj5hOSn
 DKePW+dlu8VkKyyqVgtrRMD+iscJApNhuUjUWHPGQGNY9JUKrwE4ubAg3M0I9JFmG5zf
 9MwDhNT1kn26y5yPb71s8wJZXbAa335mTW186f0tCsvur0WsGkZ7Zm3tals2zEJgJkB0
 Krrqu3zNrXIu5jXaT1tPDLDZIXr+RaPvTIHDYsLvDXMjF0MMqO1XQFSLD+OXHbT/iuDD
 yaCw==
X-Gm-Message-State: AOAM531io7XfOwNwCkvgu+WqtKChYwZQI67nT5HpFCgtUqt6Z1abQN2j
 66lVASog+uxCh48INnoHTtHyI9jAiTWB4yQly0WTCg==
X-Google-Smtp-Source: ABdhPJwHHsT2TV7qQCaRVCZ+8Ekac8bitqXSi5Ujqgw8L4kc3LyOcu6ar0UOx/X4xSEZzUsNgStDpPzAmhDHhj6URRs=
X-Received: by 2002:a05:6512:3453:: with SMTP id
 j19mr14151430lfr.119.1613547691282; 
 Tue, 16 Feb 2021 23:41:31 -0800 (PST)
MIME-Version: 1.0
References: <20210217073318.540369-1-wak@google.com>
 <20210217073318.540369-4-wak@google.com>
In-Reply-To: <20210217073318.540369-4-wak@google.com>
Date: Tue, 16 Feb 2021 23:41:20 -0800
Message-ID: <CAPnigKn49ES2vB6yd6RncVtXED99_onKMEL9ratbAZoy8K9BSg@mail.gmail.com>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -14.6 (--------------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lCHSs-0008Np-5V
X-Mailman-Approved-At: Wed, 17 Feb 2021 14:25:09 +0000
Subject: Re: [Openipmi-developer] [PATCH 3/4] ipmi: kcs_bmc: Invert
 allocation
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
From: William Kennington via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: William Kennington <wak@google.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============9001950182418216692=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============9001950182418216692==
Content-Type: multipart/alternative; boundary="000000000000f8020005bb83584a"

--000000000000f8020005bb83584a
Content-Type: text/plain; charset="UTF-8"

Please ignore this patch, it's a previous revision of the other 3/4 patch
in the series. I'm sure there will be required changes and newer versions
will not have the duplication.

On Tue, Feb 16, 2021 at 11:33 PM William A. Kennington III <wak@google.com>
wrote:

> This is a more typical pattern for having the platform specific drivers
> store their own data around the generic driver data.
>
> Signed-off-by: William A. Kennington III <wak@google.com>
> ---
>  drivers/char/ipmi/kcs_bmc.c         |  40 +++---
>  drivers/char/ipmi/kcs_bmc.h         |  13 +-
>  drivers/char/ipmi/kcs_bmc_aspeed.c  | 216 ++++++++++++++--------------
>  drivers/char/ipmi/kcs_bmc_npcm7xx.c |  61 ++++----
>  4 files changed, 163 insertions(+), 167 deletions(-)
>
> diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> index 4c504588e714..f182c4f6f982 100644
> --- a/drivers/char/ipmi/kcs_bmc.c
> +++ b/drivers/char/ipmi/kcs_bmc.c
> @@ -277,9 +277,6 @@ static ssize_t kcs_bmc_read(struct file *filp, char
> __user *buf,
>         }
>
>         if (count < data_len) {
> -               pr_err("channel=%u with too large data : %zu\n",
> -                       kcs_bmc->channel, data_len);
> -
>                 spin_lock_irq(&kcs_bmc->lock);
>                 kcs_force_abort(kcs_bmc);
>                 spin_unlock_irq(&kcs_bmc->lock);
> @@ -402,17 +399,11 @@ static const struct file_operations kcs_bmc_fops = {
>         .unlocked_ioctl = kcs_bmc_ioctl,
>  };
>
> -struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32
> channel)
> +int kcs_bmc_init(struct kcs_bmc *kcs_bmc, struct device *dev, u32 channel)
>  {
> -       struct kcs_bmc *kcs_bmc;
> -
> -       kcs_bmc = devm_kzalloc(dev, sizeof(*kcs_bmc) + sizeof_priv,
> GFP_KERNEL);
> -       if (!kcs_bmc)
> -               return NULL;
> +       int rc;
>
>         spin_lock_init(&kcs_bmc->lock);
> -       kcs_bmc->channel = channel;
> -
>         mutex_init(&kcs_bmc->mutex);
>         init_waitqueue_head(&kcs_bmc->queue);
>
> @@ -420,17 +411,28 @@ struct kcs_bmc *kcs_bmc_alloc(struct device *dev,
> int sizeof_priv, u32 channel)
>         kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>         kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>
> -       kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
> -       kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
> -                                              DEVICE_NAME, channel);
> -       if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
> -           !kcs_bmc->miscdev.name)
> -               return NULL;
>         kcs_bmc->miscdev.fops = &kcs_bmc_fops;
> +       kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
> +       kcs_bmc->miscdev.name =
> +               devm_kasprintf(dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
> channel);
> +       if (!kcs_bmc->miscdev.name)
> +               return -ENOMEM;
> +
> +       rc = misc_register(&kcs_bmc->miscdev);
> +       if (rc) {
> +               dev_err(dev, "Registering kcs_bmc: %d\n", rc);
> +               return rc;
> +       }
>
> -       return kcs_bmc;
> +       return 0;
> +}
> +EXPORT_SYMBOL(kcs_bmc_init);
> +
> +void kcs_bmc_stop(struct kcs_bmc *kcs_bmc)
> +{
> +       misc_deregister(&kcs_bmc->miscdev);
>  }
> -EXPORT_SYMBOL(kcs_bmc_alloc);
> +EXPORT_SYMBOL(kcs_bmc_stop);
>
>  MODULE_LICENSE("GPL v2");
>  MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
> diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
> index 8c541251fe97..d65ffd479e9b 100644
> --- a/drivers/char/ipmi/kcs_bmc.h
> +++ b/drivers/char/ipmi/kcs_bmc.h
> @@ -64,7 +64,6 @@ enum kcs_errors {
>  struct kcs_bmc {
>         spinlock_t lock;
>
> -       u32 channel;
>         int running;
>
>         /* Setup by BMC KCS controller driver */
> @@ -89,16 +88,10 @@ struct kcs_bmc {
>         u8 *kbuffer;
>
>         struct miscdevice miscdev;
> -
> -       unsigned long priv[];
>  };
>
> -static inline void *kcs_bmc_priv(struct kcs_bmc *kcs_bmc)
> -{
> -       return kcs_bmc->priv;
> -}
> -
>  irqreturn_t kcs_bmc_irq(int irq, void *arg);
> -struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv,
> -                                       u32 channel);
> +int kcs_bmc_init(struct kcs_bmc *kcs_bmc, struct device *dev, u32
> channel);
> +void kcs_bmc_stop(struct kcs_bmc *kcs_bmc);
> +
>  #endif /* __KCS_BMC_H__ */
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c
> b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index d3b771e4d039..b466569d049d 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -69,11 +69,29 @@ struct aspeed_kcs_reg {
>  };
>
>  struct aspeed_kcs {
> +       struct kcs_bmc kcs_bmc;
> +
> +       u32 channel;
>         struct regmap *map;
> +};
>
> -       const struct aspeed_kcs_reg *reg;
> +static const struct aspeed_kcs_reg aspeed_kcs_regs[KCS_CHANNEL_MAX] = {
> +       { .idr = LPC_IDR1, .odr = LPC_ODR1, .str = LPC_STR1 },
> +       { .idr = LPC_IDR2, .odr = LPC_ODR2, .str = LPC_STR2 },
> +       { .idr = LPC_IDR3, .odr = LPC_ODR3, .str = LPC_STR3 },
> +       { .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
>  };
>
> +static struct aspeed_kcs *to_aspeed_kcs(struct kcs_bmc *kcs_bmc)
> +{
> +       return container_of(kcs_bmc, struct aspeed_kcs, kcs_bmc);
> +}
> +
> +static const struct aspeed_kcs_reg *to_aspeed_kcs_reg(
> +               const struct aspeed_kcs *aspeed_kcs)
> +{
> +       return &aspeed_kcs_regs[aspeed_kcs->channel-1];
> +}
>
>  static u8 aspeed_kcs_inb(struct aspeed_kcs *aspeed_kcs, u32 reg)
>  {
> @@ -91,26 +109,26 @@ static void aspeed_kcs_outb(struct aspeed_kcs
> *aspeed_kcs, u32 reg, u8 data)
>
>  static u8 aspeed_kcs_read_status(struct kcs_bmc *kcs_bmc)
>  {
> -       struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
> -       return aspeed_kcs_inb(aspeed_kcs, aspeed_kcs->reg->str);
> +       struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
> +       return aspeed_kcs_inb(aspeed_kcs,
> to_aspeed_kcs_reg(aspeed_kcs)->str);
>  }
>
>  static void aspeed_kcs_write_status(struct kcs_bmc *kcs_bmc, u8 data)
>  {
> -       struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
> -       aspeed_kcs_outb(aspeed_kcs, aspeed_kcs->reg->str, data);
> +       struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
> +       aspeed_kcs_outb(aspeed_kcs, to_aspeed_kcs_reg(aspeed_kcs)->str,
> data);
>  }
>
>  static u8 aspeed_kcs_read_data_in(struct kcs_bmc *kcs_bmc)
>  {
> -       struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
> -       return aspeed_kcs_inb(aspeed_kcs, aspeed_kcs->reg->idr);
> +       struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
> +       return aspeed_kcs_inb(aspeed_kcs,
> to_aspeed_kcs_reg(aspeed_kcs)->idr);
>  }
>
>  static void aspeed_kcs_write_data_out(struct kcs_bmc *kcs_bmc, u8 data)
>  {
> -       struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
> -       aspeed_kcs_outb(aspeed_kcs, aspeed_kcs->reg->odr, data);
> +       struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
> +       aspeed_kcs_outb(aspeed_kcs, to_aspeed_kcs_reg(aspeed_kcs)->odr,
> data);
>  }
>
>
> @@ -127,32 +145,31 @@ static void aspeed_kcs_write_data_out(struct kcs_bmc
> *kcs_bmc, u8 data)
>   *     C. KCS4
>   *        D / C : CA4h / CA5h
>   */
> -static void aspeed_kcs_set_address(struct kcs_bmc *kcs_bmc, u16 addr)
> +static void aspeed_kcs_set_address(
> +               struct aspeed_kcs *aspeed_kcs, u16 addr)
>  {
> -       struct aspeed_kcs *priv = kcs_bmc_priv(kcs_bmc);
> -
> -       switch (kcs_bmc->channel) {
> +       switch (aspeed_kcs->channel) {
>         case 1:
> -               regmap_update_bits(priv->map, LPC_HICR4,
> +               regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
>                                 LPC_HICR4_LADR12AS, 0);
> -               regmap_write(priv->map, LPC_LADR12H, addr >> 8);
> -               regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
> +               regmap_write(aspeed_kcs->map, LPC_LADR12H, addr >> 8);
> +               regmap_write(aspeed_kcs->map, LPC_LADR12L, addr & 0xFF);
>                 break;
>
>         case 2:
> -               regmap_update_bits(priv->map, LPC_HICR4,
> +               regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
>                                 LPC_HICR4_LADR12AS, LPC_HICR4_LADR12AS);
> -               regmap_write(priv->map, LPC_LADR12H, addr >> 8);
> -               regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
> +               regmap_write(aspeed_kcs->map, LPC_LADR12H, addr >> 8);
> +               regmap_write(aspeed_kcs->map, LPC_LADR12L, addr & 0xFF);
>                 break;
>
>         case 3:
> -               regmap_write(priv->map, LPC_LADR3H, addr >> 8);
> -               regmap_write(priv->map, LPC_LADR3L, addr & 0xFF);
> +               regmap_write(aspeed_kcs->map, LPC_LADR3H, addr >> 8);
> +               regmap_write(aspeed_kcs->map, LPC_LADR3L, addr & 0xFF);
>                 break;
>
>         case 4:
> -               regmap_write(priv->map, LPC_LADR4, ((addr + 1) << 16) |
> +               regmap_write(aspeed_kcs->map, LPC_LADR4, ((addr + 1) <<
> 16) |
>                         addr);
>                 break;
>
> @@ -161,64 +178,63 @@ static void aspeed_kcs_set_address(struct kcs_bmc
> *kcs_bmc, u16 addr)
>         }
>  }
>
> -static void aspeed_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool
> enable)
> +static void aspeed_kcs_enable_channel(
> +               struct aspeed_kcs *aspeed_kcs, bool enable)
>  {
> -       struct aspeed_kcs *priv = kcs_bmc_priv(kcs_bmc);
> -
> -       switch (kcs_bmc->channel) {
> +       switch (aspeed_kcs->channel) {
>         case 1:
>                 if (enable) {
> -                       regmap_update_bits(priv->map, LPC_HICR2,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
>                                         LPC_HICR2_IBFIF1,
> LPC_HICR2_IBFIF1);
> -                       regmap_update_bits(priv->map, LPC_HICR0,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
>                                         LPC_HICR0_LPC1E, LPC_HICR0_LPC1E);
>                 } else {
> -                       regmap_update_bits(priv->map, LPC_HICR0,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
>                                         LPC_HICR0_LPC1E, 0);
> -                       regmap_update_bits(priv->map, LPC_HICR2,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
>                                         LPC_HICR2_IBFIF1, 0);
>                 }
>                 break;
>
>         case 2:
>                 if (enable) {
> -                       regmap_update_bits(priv->map, LPC_HICR2,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
>                                         LPC_HICR2_IBFIF2,
> LPC_HICR2_IBFIF2);
> -                       regmap_update_bits(priv->map, LPC_HICR0,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
>                                         LPC_HICR0_LPC2E, LPC_HICR0_LPC2E);
>                 } else {
> -                       regmap_update_bits(priv->map, LPC_HICR0,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
>                                         LPC_HICR0_LPC2E, 0);
> -                       regmap_update_bits(priv->map, LPC_HICR2,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
>                                         LPC_HICR2_IBFIF2, 0);
>                 }
>                 break;
>
>         case 3:
>                 if (enable) {
> -                       regmap_update_bits(priv->map, LPC_HICR2,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
>                                         LPC_HICR2_IBFIF3,
> LPC_HICR2_IBFIF3);
> -                       regmap_update_bits(priv->map, LPC_HICR0,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
>                                         LPC_HICR0_LPC3E, LPC_HICR0_LPC3E);
> -                       regmap_update_bits(priv->map, LPC_HICR4,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
>                                         LPC_HICR4_KCSENBL,
> LPC_HICR4_KCSENBL);
>                 } else {
> -                       regmap_update_bits(priv->map, LPC_HICR0,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
>                                         LPC_HICR0_LPC3E, 0);
> -                       regmap_update_bits(priv->map, LPC_HICR4,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
>                                         LPC_HICR4_KCSENBL, 0);
> -                       regmap_update_bits(priv->map, LPC_HICR2,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
>                                         LPC_HICR2_IBFIF3, 0);
>                 }
>                 break;
>
>         case 4:
>                 if (enable)
> -                       regmap_update_bits(priv->map, LPC_HICRB,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICRB,
>                                         LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
>                                         LPC_HICRB_IBFIF4 |
> LPC_HICRB_LPC4E);
>                 else
> -                       regmap_update_bits(priv->map, LPC_HICRB,
> +                       regmap_update_bits(aspeed_kcs->map, LPC_HICRB,
>                                         LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
>                                         0);
>                 break;
> @@ -242,18 +258,10 @@ static int aspeed_kcs_config_irq(struct kcs_bmc
> *kcs_bmc,
>                                 dev_name(dev), kcs_bmc);
>  }
>
> -static const struct aspeed_kcs_reg aspeed_kcs_regs[KCS_CHANNEL_MAX] = {
> -       { .idr = LPC_IDR1, .odr = LPC_ODR1, .str = LPC_STR1 },
> -       { .idr = LPC_IDR2, .odr = LPC_ODR2, .str = LPC_STR2 },
> -       { .idr = LPC_IDR3, .odr = LPC_ODR3, .str = LPC_STR3 },
> -       { .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
> -};
> -
> -static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device
> *pdev)
> +static int aspeed_kcs_probe_of_v1(
> +               struct aspeed_kcs *aspeed_kcs, struct platform_device
> *pdev)
>  {
> -       struct aspeed_kcs *priv;
>         struct device_node *np;
> -       struct kcs_bmc *kcs;
>         u32 channel;
>         u32 slave;
>         int rc;
> @@ -263,30 +271,25 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct
> platform_device *pdev)
>         rc = of_property_read_u32(np, "kcs_chan", &channel);
>         if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
>                 dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
> -               return ERR_PTR(-EINVAL);
> +               return -EINVAL;
>         }
> +       aspeed_kcs->channel = channel;
>
> -       kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs),
> channel);
> -       if (!kcs)
> -               return ERR_PTR(-ENOMEM);
> -
> -       priv = kcs_bmc_priv(kcs);
> -       priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> -       if (IS_ERR(priv->map)) {
> +       aspeed_kcs->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> +       if (IS_ERR(aspeed_kcs->map)) {
>                 dev_err(&pdev->dev, "Couldn't get regmap\n");
> -               return ERR_PTR(-ENODEV);
> +               return -ENODEV;
>         }
>
>         rc = of_property_read_u32(np, "kcs_addr", &slave);
>         if (rc) {
>                 dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
> -               return ERR_PTR(-EINVAL);
> +               return -EINVAL;
>         }
>
> -       priv->reg = &aspeed_kcs_regs[channel - 1];
> -       aspeed_kcs_set_address(kcs, slave);
> +       aspeed_kcs_set_address(aspeed_kcs, slave);
>
> -       return kcs;
> +       return 0;
>  }
>
>  static int aspeed_kcs_calculate_channel(const struct aspeed_kcs_reg *reg)
> @@ -301,12 +304,11 @@ static int aspeed_kcs_calculate_channel(const struct
> aspeed_kcs_reg *reg)
>         return -EINVAL;
>  }
>
> -static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device
> *pdev)
> +static int aspeed_kcs_probe_of_v2(
> +               struct aspeed_kcs *aspeed_kcs, struct platform_device
> *pdev)
>  {
> -       struct aspeed_kcs *priv;
>         struct device_node *np;
>         struct aspeed_kcs_reg reg;
> -       struct kcs_bmc *kcs;
>         const __be32 *of_reg;
>         int channel;
>         u32 slave;
> @@ -317,120 +319,116 @@ static struct kcs_bmc
> *aspeed_kcs_probe_of_v2(struct platform_device *pdev)
>         /* Don't translate addresses, we want offsets for the regmaps */
>         of_reg = of_get_address(np, 0, NULL, NULL);
>         if (!of_reg)
> -               return ERR_PTR(-EINVAL);
> +               return -EINVAL;
>         reg.idr = be32_to_cpup(of_reg);
>
>         of_reg = of_get_address(np, 1, NULL, NULL);
>         if (!of_reg)
> -               return ERR_PTR(-EINVAL);
> +               return -EINVAL;
>         reg.odr = be32_to_cpup(of_reg);
>
>         of_reg = of_get_address(np, 2, NULL, NULL);
>         if (!of_reg)
> -               return ERR_PTR(-EINVAL);
> +               return -EINVAL;
>         reg.str = be32_to_cpup(of_reg);
>
>         channel = aspeed_kcs_calculate_channel(&reg);
>         if (channel < 0)
> -               return ERR_PTR(channel);
> +               return channel;
> +       aspeed_kcs->channel = channel;
>
> -       kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs),
> channel);
> -       if (!kcs)
> -               return ERR_PTR(-ENOMEM);
> -
> -       priv = kcs_bmc_priv(kcs);
> -       priv->reg = &aspeed_kcs_regs[channel - 1];
> -       priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> -       if (IS_ERR(priv->map)) {
> +       aspeed_kcs->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> +       if (IS_ERR(aspeed_kcs->map)) {
>                 dev_err(&pdev->dev, "Couldn't get regmap\n");
> -               return ERR_PTR(-ENODEV);
> +               return -ENODEV;
>         }
>
>         rc = of_property_read_u32(np, "aspeed,lpc-io-reg", &slave);
>         if (rc)
> -               return ERR_PTR(rc);
> +               return rc;
>
> -       aspeed_kcs_set_address(kcs, slave);
> +       aspeed_kcs_set_address(aspeed_kcs, slave);
>
> -       return kcs;
> +       return 0;
>  }
>
>  static int aspeed_kcs_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct kcs_bmc *kcs_bmc;
> -       struct aspeed_kcs *priv;
> +       struct aspeed_kcs *aspeed_kcs;
>         struct device_node *np;
> +       const struct aspeed_kcs_reg *reg;
>         int rc;
>
> +       aspeed_kcs = devm_kzalloc(dev, sizeof(*aspeed_kcs), GFP_KERNEL);
> +       if (!aspeed_kcs)
> +               return -ENOMEM;
> +       kcs_bmc = &aspeed_kcs->kcs_bmc;
> +       dev_set_drvdata(dev, kcs_bmc);
> +
>         np = pdev->dev.of_node;
>         if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
>                         of_device_is_compatible(np,
> "aspeed,ast2500-kcs-bmc"))
> -               kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
> +               rc = aspeed_kcs_probe_of_v1(aspeed_kcs, pdev);
>         else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2")
> ||
>                         of_device_is_compatible(np,
> "aspeed,ast2500-kcs-bmc-v2"))
> -               kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
> +               rc = aspeed_kcs_probe_of_v2(aspeed_kcs, pdev);
>         else
> -               return -EINVAL;
> +               rc = -EINVAL;
> +
> +       if (rc)
> +               return rc;
>
> -       if (IS_ERR(kcs_bmc))
> -               return PTR_ERR(kcs_bmc);
> +       aspeed_kcs_enable_channel(aspeed_kcs, true);
>
>         kcs_bmc->read_status = aspeed_kcs_read_status;
>         kcs_bmc->write_status = aspeed_kcs_write_status;
>         kcs_bmc->read_data_in = aspeed_kcs_read_data_in;
>         kcs_bmc->write_data_out = aspeed_kcs_write_data_out;
>
> -       rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
> +       rc = kcs_bmc_init(kcs_bmc, dev, aspeed_kcs->channel);
>         if (rc)
>                 return rc;
>
> -       dev_set_drvdata(dev, kcs_bmc);
> -
> -       aspeed_kcs_enable_channel(kcs_bmc, true);
> -
> -       rc = misc_register(&kcs_bmc->miscdev);
> +       rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
>         if (rc) {
> -               dev_err(dev, "Unable to register device\n");
> +               kcs_bmc_stop(kcs_bmc);
>                 return rc;
>         }
>
> -       priv = kcs_bmc_priv(kcs_bmc);
> +       reg = to_aspeed_kcs_reg(aspeed_kcs);
>         dev_dbg(&pdev->dev,
>                 "Probed KCS device %d (IDR=0x%x, ODR=0x%x, STR=0x%x)\n",
> -               kcs_bmc->channel, priv->reg->idr, priv->reg->odr,
> -               priv->reg->str);
> +               aspeed_kcs->channel, reg->idr, reg->odr, reg->str);
>
>         return 0;
>  }
>
>  static int aspeed_kcs_remove(struct platform_device *pdev)
>  {
> -       struct kcs_bmc *kcs_bmc = dev_get_drvdata(&pdev->dev);
> -
> -       misc_deregister(&kcs_bmc->miscdev);
> -
> +       kcs_bmc_stop(dev_get_drvdata(&pdev->dev));
>         return 0;
>  }
>
> -static const struct of_device_id ast_kcs_bmc_match[] = {
> +static const struct of_device_id aspeed_kcs_bmc_match[] = {
>         { .compatible = "aspeed,ast2400-kcs-bmc" },
>         { .compatible = "aspeed,ast2500-kcs-bmc" },
>         { .compatible = "aspeed,ast2400-kcs-bmc-v2" },
>         { .compatible = "aspeed,ast2500-kcs-bmc-v2" },
>         { }
>  };
> -MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
> +MODULE_DEVICE_TABLE(of, aspeed_kcs_bmc_match);
>
> -static struct platform_driver ast_kcs_bmc_driver = {
> +static struct platform_driver aspeed_kcs_bmc_driver = {
>         .driver = {
>                 .name           = DEVICE_NAME,
> -               .of_match_table = ast_kcs_bmc_match,
> +               .of_match_table = aspeed_kcs_bmc_match,
>         },
>         .probe  = aspeed_kcs_probe,
>         .remove = aspeed_kcs_remove,
>  };
> -module_platform_driver(ast_kcs_bmc_driver);
> +module_platform_driver(aspeed_kcs_bmc_driver);
>
>  MODULE_LICENSE("GPL v2");
>  MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
> diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> index 572501f7da71..e9ba95d0d560 100644
> --- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> +++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
> @@ -65,8 +65,9 @@ struct npcm7xx_kcs_reg {
>  };
>
>  struct npcm7xx_kcs {
> -       struct regmap *map;
> +       struct kcs_bmc kcs_bmc;
>
> +       struct regmap *map;
>         const struct npcm7xx_kcs_reg *reg;
>  };
>
> @@ -76,6 +77,11 @@ static const struct npcm7xx_kcs_reg
> npcm7xx_kcs_reg_tbl[KCS_CHANNEL_MAX] = {
>         { .sts = KCS3ST, .dob = KCS3DO, .dib = KCS3DI, .ctl = KCS3CTL, .ie
> = KCS3IE },
>  };
>
> +static struct npcm7xx_kcs *to_npcm7xx_kcs(struct kcs_bmc *kcs_bmc)
> +{
> +       return container_of(kcs_bmc, struct npcm7xx_kcs, kcs_bmc);
> +}
> +
>  static u8 npcm7xx_kcs_inb(struct npcm7xx_kcs *npcm7xx_kcs, u32 reg)
>  {
>         u32 val = 0;
> @@ -92,36 +98,35 @@ static void npcm7xx_kcs_outb(struct npcm7xx_kcs
> *npcm7xx_kcs, u32 reg, u8 data)
>
>  static u8 npcm7xx_kcs_read_status(struct kcs_bmc *kcs_bmc)
>  {
> -       struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
> +       struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
>         return npcm7xx_kcs_inb(npcm7xx_kcs, npcm7xx_kcs->reg->sts);
>  }
>
>  static void npcm7xx_kcs_write_status(struct kcs_bmc *kcs_bmc, u8 data)
>  {
> -       struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
> +       struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
>         npcm7xx_kcs_outb(npcm7xx_kcs, npcm7xx_kcs->reg->sts, data);
>  }
>
>  static u8 npcm7xx_kcs_read_data_in(struct kcs_bmc *kcs_bmc)
>  {
> -       struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
> +       struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
>         return npcm7xx_kcs_inb(npcm7xx_kcs, npcm7xx_kcs->reg->dib);
>  }
>
>  static void npcm7xx_kcs_write_data_out(struct kcs_bmc *kcs_bmc, u8 data)
>  {
> -       struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
> +       struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
>         npcm7xx_kcs_outb(npcm7xx_kcs, npcm7xx_kcs->reg->dob, data);
>  }
>
> -static void npcm7xx_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool
> enable)
> +static void npcm7xx_kcs_enable_channel(struct npcm7xx_kcs *npcm7xx_kcs,
> bool enable)
>  {
> -       struct npcm7xx_kcs *priv = kcs_bmc_priv(kcs_bmc);
> -
> -       regmap_update_bits(priv->map, priv->reg->ctl, KCS_CTL_IBFIE,
> -                          enable ? KCS_CTL_IBFIE : 0);
> +       regmap_update_bits(npcm7xx_kcs->map, npcm7xx_kcs->reg->ctl,
> +                          KCS_CTL_IBFIE, enable ? KCS_CTL_IBFIE : 0);
>
> -       regmap_update_bits(priv->map, priv->reg->ie, KCS_IE_IRQE |
> KCS_IE_HIRQE,
> +       regmap_update_bits(npcm7xx_kcs->map, npcm7xx_kcs->reg->ie,
> +                          KCS_IE_IRQE | KCS_IE_HIRQE,
>                            enable ? KCS_IE_IRQE | KCS_IE_HIRQE : 0);
>  }
>
> @@ -142,7 +147,7 @@ static int npcm7xx_kcs_config_irq(struct kcs_bmc
> *kcs_bmc,
>  static int npcm7xx_kcs_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
> -       struct npcm7xx_kcs *priv;
> +       struct npcm7xx_kcs *npcm7xx_kcs;
>         struct kcs_bmc *kcs_bmc;
>         u32 chan;
>         int rc;
> @@ -153,49 +158,47 @@ static int npcm7xx_kcs_probe(struct platform_device
> *pdev)
>                 return -ENODEV;
>         }
>
> -       kcs_bmc = kcs_bmc_alloc(dev, sizeof(*priv), chan);
> -       if (!kcs_bmc)
> +       npcm7xx_kcs = devm_kzalloc(dev, sizeof(*npcm7xx_kcs), GFP_KERNEL);
> +       if (!npcm7xx_kcs)
>                 return -ENOMEM;
> +       kcs_bmc = &npcm7xx_kcs->kcs_bmc;
> +       dev_set_drvdata(dev, kcs_bmc);
>
> -       priv = kcs_bmc_priv(kcs_bmc);
> -       priv->map = syscon_node_to_regmap(dev->parent->of_node);
> -       if (IS_ERR(priv->map)) {
> +       npcm7xx_kcs->map = syscon_node_to_regmap(dev->parent->of_node);
> +       if (IS_ERR(npcm7xx_kcs->map)) {
>                 dev_err(dev, "Couldn't get regmap\n");
>                 return -ENODEV;
>         }
> -       priv->reg = &npcm7xx_kcs_reg_tbl[chan - 1];
> +       npcm7xx_kcs->reg = &npcm7xx_kcs_reg_tbl[chan - 1];
>
>         kcs_bmc->read_status = npcm7xx_kcs_read_status;
>         kcs_bmc->write_status = npcm7xx_kcs_write_status;
>         kcs_bmc->read_data_in = npcm7xx_kcs_read_data_in;
>         kcs_bmc->write_data_out = npcm7xx_kcs_write_data_out;
>
> -       dev_set_drvdata(dev, kcs_bmc);
> +       npcm7xx_kcs_enable_channel(npcm7xx_kcs, true);
>
> -       npcm7xx_kcs_enable_channel(kcs_bmc, true);
> -       rc = npcm7xx_kcs_config_irq(kcs_bmc, pdev);
> +       rc = kcs_bmc_init(kcs_bmc, dev, chan);
>         if (rc)
>                 return rc;
>
> -       rc = misc_register(&kcs_bmc->miscdev);
> +       rc = npcm7xx_kcs_config_irq(kcs_bmc, pdev);
>         if (rc) {
> -               dev_err(dev, "Unable to register device\n");
> +               kcs_bmc_stop(kcs_bmc);
>                 return rc;
>         }
>
>         dev_dbg(&pdev->dev,
> -               "Probed KCS device %d (DIB=0x%x, DOB=0x%x, STS=0x%x )\n",
> -               chan, priv->reg->dib, priv->reg->dob, priv->reg->sts);
> +               "Probed KCS device %d (DIB=0x%x, DOB=0x%x, STS=0x%x)\n",
> +               chan, npcm7xx_kcs->reg->dib, npcm7xx_kcs->reg->dob,
> +               npcm7xx_kcs->reg->sts);
>
>         return 0;
>  }
>
>  static int npcm7xx_kcs_remove(struct platform_device *pdev)
>  {
> -       struct kcs_bmc *kcs_bmc = dev_get_drvdata(&pdev->dev);
> -
> -       misc_deregister(&kcs_bmc->miscdev);
> -
> +       kcs_bmc_stop(dev_get_drvdata(&pdev->dev));
>         return 0;
>  }
>
> --
> 2.30.0.478.g8a0d178c01-goog
>
>

--000000000000f8020005bb83584a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please ignore this patch, it&#39;s a previous revision of =
the other 3/4 patch in the series. I&#39;m sure there will be required chan=
ges and newer versions will not have the duplication.</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 16, 2021=
 at 11:33 PM William A. Kennington III &lt;<a href=3D"mailto:wak@google.com=
">wak@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">This is a more typical pattern for having the platform spec=
ific drivers<br>
store their own data around the generic driver data.<br>
<br>
Signed-off-by: William A. Kennington III &lt;<a href=3D"mailto:wak@google.c=
om" target=3D"_blank">wak@google.com</a>&gt;<br>
---<br>
=C2=A0drivers/char/ipmi/kcs_bmc.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =
40 +++---<br>
=C2=A0drivers/char/ipmi/kcs_bmc.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =
13 +-<br>
=C2=A0drivers/char/ipmi/kcs_bmc_aspeed.c=C2=A0 | 216 ++++++++++++++--------=
------<br>
=C2=A0drivers/char/ipmi/kcs_bmc_npcm7xx.c |=C2=A0 61 ++++----<br>
=C2=A04 files changed, 163 insertions(+), 167 deletions(-)<br>
<br>
diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c<br>
index 4c504588e714..f182c4f6f982 100644<br>
--- a/drivers/char/ipmi/kcs_bmc.c<br>
+++ b/drivers/char/ipmi/kcs_bmc.c<br>
@@ -277,9 +277,6 @@ static ssize_t kcs_bmc_read(struct file *filp, char __u=
ser *buf,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (count &lt; data_len) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pr_err(&quot;channe=
l=3D%u with too large data : %zu\n&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0kcs_bmc-&gt;channel, data_len);<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spin_lock_irq(&amp;=
kcs_bmc-&gt;lock);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_force_abort(kcs=
_bmc);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spin_unlock_irq(&am=
p;kcs_bmc-&gt;lock);<br>
@@ -402,17 +399,11 @@ static const struct file_operations kcs_bmc_fops =3D =
{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .unlocked_ioctl =3D kcs_bmc_ioctl,<br>
=C2=A0};<br>
<br>
-struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 cha=
nnel)<br>
+int kcs_bmc_init(struct kcs_bmc *kcs_bmc, struct device *dev, u32 channel)=
<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct kcs_bmc *kcs_bmc;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc =3D devm_kzalloc(dev, sizeof(*kcs_bmc) =
+ sizeof_priv, GFP_KERNEL);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!kcs_bmc)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int rc;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 spin_lock_init(&amp;kcs_bmc-&gt;lock);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc-&gt;channel =3D channel;<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_init(&amp;kcs_bmc-&gt;mutex);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 init_waitqueue_head(&amp;kcs_bmc-&gt;queue);<br=
>
<br>
@@ -420,17 +411,28 @@ struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int=
 sizeof_priv, u32 channel)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;data_out =3D devm_kmalloc(dev, KCS_=
MSG_BUFSIZ, GFP_KERNEL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;kbuffer =3D devm_kmalloc(dev, KCS_M=
SG_BUFSIZ, GFP_KERNEL);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc-&gt;miscdev.minor =3D MISC_DYNAMIC_MINO=
R;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc-&gt;<a href=3D"http://miscdev.name" rel=
=3D"noreferrer" target=3D"_blank">miscdev.name</a> =3D devm_kasprintf(dev, =
GFP_KERNEL, &quot;%s%u&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 DEVICE_NAME, channel);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!kcs_bmc-&gt;data_in || !kcs_bmc-&gt;data_o=
ut || !kcs_bmc-&gt;kbuffer ||<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0!kcs_bmc-&gt;<a href=3D"http://mi=
scdev.name" rel=3D"noreferrer" target=3D"_blank">miscdev.name</a>)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return NULL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;miscdev.fops =3D &amp;kcs_bmc_fops;=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc-&gt;miscdev.minor =3D MISC_DYNAMIC_MINO=
R;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc-&gt;<a href=3D"http://miscdev.name" rel=
=3D"noreferrer" target=3D"_blank">miscdev.name</a> =3D<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0devm_kasprintf(dev,=
 GFP_KERNEL, &quot;%s%u&quot;, DEVICE_NAME, channel);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!kcs_bmc-&gt;<a href=3D"http://miscdev.name=
" rel=3D"noreferrer" target=3D"_blank">miscdev.name</a>)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D misc_register(&amp;kcs_bmc-&gt;miscdev);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;=
Registering kcs_bmc: %d\n&quot;, rc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return kcs_bmc;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+}<br>
+EXPORT_SYMBOL(kcs_bmc_init);<br>
+<br>
+void kcs_bmc_stop(struct kcs_bmc *kcs_bmc)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0misc_deregister(&amp;kcs_bmc-&gt;miscdev);<br>
=C2=A0}<br>
-EXPORT_SYMBOL(kcs_bmc_alloc);<br>
+EXPORT_SYMBOL(kcs_bmc_stop);<br>
<br>
=C2=A0MODULE_LICENSE(&quot;GPL v2&quot;);<br>
=C2=A0MODULE_AUTHOR(&quot;Haiyue Wang &lt;<a href=3D"mailto:haiyue.wang@lin=
ux.intel.com" target=3D"_blank">haiyue.wang@linux.intel.com</a>&gt;&quot;);=
<br>
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h<br>
index 8c541251fe97..d65ffd479e9b 100644<br>
--- a/drivers/char/ipmi/kcs_bmc.h<br>
+++ b/drivers/char/ipmi/kcs_bmc.h<br>
@@ -64,7 +64,6 @@ enum kcs_errors {<br>
=C2=A0struct kcs_bmc {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 spinlock_t lock;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 channel;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int running;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Setup by BMC KCS controller driver */<br>
@@ -89,16 +88,10 @@ struct kcs_bmc {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *kbuffer;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct miscdevice miscdev;<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long priv[];<br>
=C2=A0};<br>
<br>
-static inline void *kcs_bmc_priv(struct kcs_bmc *kcs_bmc)<br>
-{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return kcs_bmc-&gt;priv;<br>
-}<br>
-<br>
=C2=A0irqreturn_t kcs_bmc_irq(int irq, void *arg);<br>
-struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 chann=
el);<br>
+int kcs_bmc_init(struct kcs_bmc *kcs_bmc, struct device *dev, u32 channel)=
;<br>
+void kcs_bmc_stop(struct kcs_bmc *kcs_bmc);<br>
+<br>
=C2=A0#endif /* __KCS_BMC_H__ */<br>
diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc=
_aspeed.c<br>
index d3b771e4d039..b466569d049d 100644<br>
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c<br>
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c<br>
@@ -69,11 +69,29 @@ struct aspeed_kcs_reg {<br>
=C2=A0};<br>
<br>
=C2=A0struct aspeed_kcs {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct kcs_bmc kcs_bmc;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 channel;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct regmap *map;<br>
+};<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct aspeed_kcs_reg *reg;<br>
+static const struct aspeed_kcs_reg aspeed_kcs_regs[KCS_CHANNEL_MAX] =3D {<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR1, .odr =3D LPC_ODR1, .str =
=3D LPC_STR1 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR2, .odr =3D LPC_ODR2, .str =
=3D LPC_STR2 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR3, .odr =3D LPC_ODR3, .str =
=3D LPC_STR3 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR4, .odr =3D LPC_ODR4, .str =
=3D LPC_STR4 },<br>
=C2=A0};<br>
<br>
+static struct aspeed_kcs *to_aspeed_kcs(struct kcs_bmc *kcs_bmc)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return container_of(kcs_bmc, struct aspeed_kcs,=
 kcs_bmc);<br>
+}<br>
+<br>
+static const struct aspeed_kcs_reg *to_aspeed_kcs_reg(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct aspeed=
_kcs *aspeed_kcs)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return &amp;aspeed_kcs_regs[aspeed_kcs-&gt;chan=
nel-1];<br>
+}<br>
<br>
=C2=A0static u8 aspeed_kcs_inb(struct aspeed_kcs *aspeed_kcs, u32 reg)<br>
=C2=A0{<br>
@@ -91,26 +109,26 @@ static void aspeed_kcs_outb(struct aspeed_kcs *aspeed_=
kcs, u32 reg, u8 data)<br>
<br>
=C2=A0static u8 aspeed_kcs_read_status(struct kcs_bmc *kcs_bmc)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D kcs_bmc_priv(=
kcs_bmc);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return aspeed_kcs_inb(aspeed_kcs, aspeed_kcs-&g=
t;reg-&gt;str);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D to_aspeed_kcs=
(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return aspeed_kcs_inb(aspeed_kcs, to_aspeed_kcs=
_reg(aspeed_kcs)-&gt;str);<br>
=C2=A0}<br>
<br>
=C2=A0static void aspeed_kcs_write_status(struct kcs_bmc *kcs_bmc, u8 data)=
<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D kcs_bmc_priv(=
kcs_bmc);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_outb(aspeed_kcs, aspeed_kcs-&gt;reg-=
&gt;str, data);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D to_aspeed_kcs=
(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_outb(aspeed_kcs, to_aspeed_kcs_reg(a=
speed_kcs)-&gt;str, data);<br>
=C2=A0}<br>
<br>
=C2=A0static u8 aspeed_kcs_read_data_in(struct kcs_bmc *kcs_bmc)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D kcs_bmc_priv(=
kcs_bmc);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return aspeed_kcs_inb(aspeed_kcs, aspeed_kcs-&g=
t;reg-&gt;idr);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D to_aspeed_kcs=
(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return aspeed_kcs_inb(aspeed_kcs, to_aspeed_kcs=
_reg(aspeed_kcs)-&gt;idr);<br>
=C2=A0}<br>
<br>
=C2=A0static void aspeed_kcs_write_data_out(struct kcs_bmc *kcs_bmc, u8 dat=
a)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D kcs_bmc_priv(=
kcs_bmc);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_outb(aspeed_kcs, aspeed_kcs-&gt;reg-=
&gt;odr, data);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs =3D to_aspeed_kcs=
(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_outb(aspeed_kcs, to_aspeed_kcs_reg(a=
speed_kcs)-&gt;odr, data);<br>
=C2=A0}<br>
<br>
<br>
@@ -127,32 +145,31 @@ static void aspeed_kcs_write_data_out(struct kcs_bmc =
*kcs_bmc, u8 data)<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0C. KCS4<br>
=C2=A0 *=C2=A0 =C2=A0 =C2=A0 =C2=A0 D / C : CA4h / CA5h<br>
=C2=A0 */<br>
-static void aspeed_kcs_set_address(struct kcs_bmc *kcs_bmc, u16 addr)<br>
+static void aspeed_kcs_set_address(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *=
aspeed_kcs, u16 addr)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *priv =3D kcs_bmc_priv(kcs_bm=
c);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (kcs_bmc-&gt;channel) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (aspeed_kcs-&gt;channel) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 1:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(=
priv-&gt;map, LPC_HICR4,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(=
aspeed_kcs-&gt;map, LPC_HICR4,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR4_LADR12AS, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(priv-&=
gt;map, LPC_LADR12H, addr &gt;&gt; 8);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(priv-&=
gt;map, LPC_LADR12L, addr &amp; 0xFF);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(aspeed=
_kcs-&gt;map, LPC_LADR12H, addr &gt;&gt; 8);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(aspeed=
_kcs-&gt;map, LPC_LADR12L, addr &amp; 0xFF);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 2:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(=
priv-&gt;map, LPC_HICR4,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(=
aspeed_kcs-&gt;map, LPC_HICR4,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR4_LADR12AS, LPC_HICR4_LADR12=
AS);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(priv-&=
gt;map, LPC_LADR12H, addr &gt;&gt; 8);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(priv-&=
gt;map, LPC_LADR12L, addr &amp; 0xFF);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(aspeed=
_kcs-&gt;map, LPC_LADR12H, addr &gt;&gt; 8);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(aspeed=
_kcs-&gt;map, LPC_LADR12L, addr &amp; 0xFF);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 3:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(priv-&=
gt;map, LPC_LADR3H, addr &gt;&gt; 8);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(priv-&=
gt;map, LPC_LADR3L, addr &amp; 0xFF);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(aspeed=
_kcs-&gt;map, LPC_LADR3H, addr &gt;&gt; 8);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(aspeed=
_kcs-&gt;map, LPC_LADR3L, addr &amp; 0xFF);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 4:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(priv-&=
gt;map, LPC_LADR4, ((addr + 1) &lt;&lt; 16) |<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_write(aspeed=
_kcs-&gt;map, LPC_LADR4, ((addr + 1) &lt;&lt; 16) |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 addr);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
@@ -161,64 +178,63 @@ static void aspeed_kcs_set_address(struct kcs_bmc *kc=
s_bmc, u16 addr)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0}<br>
<br>
-static void aspeed_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable=
)<br>
+static void aspeed_kcs_enable_channel(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *=
aspeed_kcs, bool enable)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *priv =3D kcs_bmc_priv(kcs_bm=
c);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (kcs_bmc-&gt;channel) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (aspeed_kcs-&gt;channel) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 1:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (enable) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR2,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR2,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
2_IBFIF1, LPC_HICR2_IBFIF1);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR0,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
0_LPC1E, LPC_HICR0_LPC1E);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR0,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
0_LPC1E, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR2,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR2,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
2_IBFIF1, 0);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 2:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (enable) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR2,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR2,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
2_IBFIF2, LPC_HICR2_IBFIF2);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR0,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
0_LPC2E, LPC_HICR0_LPC2E);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR0,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
0_LPC2E, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR2,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR2,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
2_IBFIF2, 0);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 3:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (enable) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR2,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR2,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
2_IBFIF3, LPC_HICR2_IBFIF3);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR0,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
0_LPC3E, LPC_HICR0_LPC3E);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR4,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR4,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
4_KCSENBL, LPC_HICR4_KCSENBL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR0,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR0,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
0_LPC3E, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR4,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR4,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
4_KCSENBL, 0);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICR2,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICR2,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
2_IBFIF3, 0);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case 4:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (enable)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICRB,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICRB,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
B_IBFIF4 | LPC_HICRB_LPC4E,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
B_IBFIF4 | LPC_HICRB_LPC4E);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(priv-&gt;map, LPC_HICRB,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0regmap_update_bits(aspeed_kcs-&gt;map, LPC_HICRB,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LPC_HICR=
B_IBFIF4 | LPC_HICRB_LPC4E,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
@@ -242,18 +258,10 @@ static int aspeed_kcs_config_irq(struct kcs_bmc *kcs_=
bmc,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_name(dev), kcs_bmc);<br>
=C2=A0}<br>
<br>
-static const struct aspeed_kcs_reg aspeed_kcs_regs[KCS_CHANNEL_MAX] =3D {<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR1, .odr =3D LPC_ODR1, .str =
=3D LPC_STR1 },<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR2, .odr =3D LPC_ODR2, .str =
=3D LPC_STR2 },<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR3, .odr =3D LPC_ODR3, .str =
=3D LPC_STR3 },<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .idr =3D LPC_IDR4, .odr =3D LPC_ODR4, .str =
=3D LPC_STR4 },<br>
-};<br>
-<br>
-static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev=
)<br>
+static int aspeed_kcs_probe_of_v1(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *=
aspeed_kcs, struct platform_device *pdev)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *priv;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct device_node *np;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct kcs_bmc *kcs;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 channel;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 slave;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int rc;<br>
@@ -263,30 +271,25 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct =
platform_device *pdev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D of_property_read_u32(np, &quot;kcs_chan&=
quot;, &amp;channel);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((rc !=3D 0) || (channel =3D=3D 0 || channel=
 &gt; KCS_CHANNEL_MAX)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(&amp;pdev-&=
gt;dev, &quot;no valid &#39;kcs_chan&#39; configured\n&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-EIN=
VAL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs-&gt;channel =3D channel;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs =3D kcs_bmc_alloc(&amp;pdev-&gt;dev, sizeof=
(struct aspeed_kcs), channel);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!kcs)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENO=
MEM);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv =3D kcs_bmc_priv(kcs);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;map =3D syscon_node_to_regmap(pdev-&gt=
;dev.parent-&gt;of_node);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;map)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs-&gt;map =3D syscon_node_to_regmap(pd=
ev-&gt;dev.parent-&gt;of_node);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(aspeed_kcs-&gt;map)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(&amp;pdev-&=
gt;dev, &quot;Couldn&#39;t get regmap\n&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENO=
DEV);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D of_property_read_u32(np, &quot;kcs_addr&=
quot;, &amp;slave);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(&amp;pdev-&=
gt;dev, &quot;no valid &#39;kcs_addr&#39; configured\n&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-EIN=
VAL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;reg =3D &amp;aspeed_kcs_regs[channel -=
 1];<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_set_address(kcs, slave);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_set_address(aspeed_kcs, slave);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return kcs;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
=C2=A0}<br>
<br>
=C2=A0static int aspeed_kcs_calculate_channel(const struct aspeed_kcs_reg *=
reg)<br>
@@ -301,12 +304,11 @@ static int aspeed_kcs_calculate_channel(const struct =
aspeed_kcs_reg *reg)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EINVAL;<br>
=C2=A0}<br>
<br>
-static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device *pdev=
)<br>
+static int aspeed_kcs_probe_of_v2(<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *=
aspeed_kcs, struct platform_device *pdev)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *priv;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct device_node *np;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct aspeed_kcs_reg reg;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct kcs_bmc *kcs;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 const __be32 *of_reg;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int channel;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 slave;<br>
@@ -317,120 +319,116 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v2(struc=
t platform_device *pdev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Don&#39;t translate addresses, we want offse=
ts for the regmaps */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 of_reg =3D of_get_address(np, 0, NULL, NULL);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!of_reg)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-EIN=
VAL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 reg.idr =3D be32_to_cpup(of_reg);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 of_reg =3D of_get_address(np, 1, NULL, NULL);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!of_reg)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-EIN=
VAL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 reg.odr =3D be32_to_cpup(of_reg);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 of_reg =3D of_get_address(np, 2, NULL, NULL);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!of_reg)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-EIN=
VAL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 reg.str =3D be32_to_cpup(of_reg);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 channel =3D aspeed_kcs_calculate_channel(&amp;r=
eg);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (channel &lt; 0)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(chan=
nel);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return channel;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs-&gt;channel =3D channel;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs =3D kcs_bmc_alloc(&amp;pdev-&gt;dev, sizeof=
(struct aspeed_kcs), channel);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!kcs)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENO=
MEM);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv =3D kcs_bmc_priv(kcs);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;reg =3D &amp;aspeed_kcs_regs[channel -=
 1];<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;map =3D syscon_node_to_regmap(pdev-&gt=
;dev.parent-&gt;of_node);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;map)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs-&gt;map =3D syscon_node_to_regmap(pd=
ev-&gt;dev.parent-&gt;of_node);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(aspeed_kcs-&gt;map)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(&amp;pdev-&=
gt;dev, &quot;Couldn&#39;t get regmap\n&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(-ENO=
DEV);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D of_property_read_u32(np, &quot;aspeed,lp=
c-io-reg&quot;, &amp;slave);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ERR_PTR(rc);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_set_address(kcs, slave);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_set_address(aspeed_kcs, slave);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0return kcs;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
=C2=A0}<br>
<br>
=C2=A0static int aspeed_kcs_probe(struct platform_device *pdev)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct device *dev =3D &amp;pdev-&gt;dev;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct kcs_bmc *kcs_bmc;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *priv;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct aspeed_kcs *aspeed_kcs;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct device_node *np;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct aspeed_kcs_reg *reg;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int rc;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs =3D devm_kzalloc(dev, sizeof(*aspeed=
_kcs), GFP_KERNEL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!aspeed_kcs)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOMEM;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc =3D &amp;aspeed_kcs-&gt;kcs_bmc;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dev_set_drvdata(dev, kcs_bmc);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 np =3D pdev-&gt;dev.of_node;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (of_device_is_compatible(np, &quot;aspeed,as=
t2400-kcs-bmc&quot;) ||<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 of_device_is_compatible(np, &quot;aspeed,ast2500-kcs-bmc&quot;))=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc =3D aspeed_=
kcs_probe_of_v1(pdev);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D aspeed_kcs_p=
robe_of_v1(aspeed_kcs, pdev);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (of_device_is_compatible(np, &quot;aspe=
ed,ast2400-kcs-bmc-v2&quot;) ||<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 of_device_is_compatible(np, &quot;aspeed,ast2500-kcs-bmc-v2&quot=
;))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc =3D aspeed_=
kcs_probe_of_v2(pdev);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D aspeed_kcs_p=
robe_of_v2(aspeed_kcs, pdev);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D -EINVAL;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return rc;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(kcs_bmc))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return PTR_ERR(kcs_=
bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_enable_channel(aspeed_kcs, true);<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;read_status =3D aspeed_kcs_read_sta=
tus;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;write_status =3D aspeed_kcs_write_s=
tatus;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;read_data_in =3D aspeed_kcs_read_da=
ta_in;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;write_data_out =3D aspeed_kcs_write=
_data_out;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D aspeed_kcs_config_irq(kcs_bmc, pdev);<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D kcs_bmc_init(kcs_bmc, dev, aspeed_kcs-&g=
t;channel);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0dev_set_drvdata(dev, kcs_bmc);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs_enable_channel(kcs_bmc, true);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D misc_register(&amp;kcs_bmc-&gt;miscdev);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D aspeed_kcs_config_irq(kcs_bmc, pdev);<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;=
Unable to register device\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc_stop(kcs_bm=
c);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv =3D kcs_bmc_priv(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D to_aspeed_kcs_reg(aspeed_kcs);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_dbg(&amp;pdev-&gt;dev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Probed KCS de=
vice %d (IDR=3D0x%x, ODR=3D0x%x, STR=3D0x%x)\n&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc-&gt;channel=
, priv-&gt;reg-&gt;idr, priv-&gt;reg-&gt;odr,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;reg-&gt;st=
r);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0aspeed_kcs-&gt;chan=
nel, reg-&gt;idr, reg-&gt;odr, reg-&gt;str);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
=C2=A0static int aspeed_kcs_remove(struct platform_device *pdev)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct kcs_bmc *kcs_bmc =3D dev_get_drvdata(&am=
p;pdev-&gt;dev);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0misc_deregister(&amp;kcs_bmc-&gt;miscdev);<br>
-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc_stop(dev_get_drvdata(&amp;pdev-&gt;dev)=
);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
-static const struct of_device_id ast_kcs_bmc_match[] =3D {<br>
+static const struct of_device_id aspeed_kcs_bmc_match[] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D &quot;aspeed,ast2400-kcs-bmc&=
quot; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D &quot;aspeed,ast2500-kcs-bmc&=
quot; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D &quot;aspeed,ast2400-kcs-bmc-=
v2&quot; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .compatible =3D &quot;aspeed,ast2500-kcs-bmc-=
v2&quot; },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { }<br>
=C2=A0};<br>
-MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);<br>
+MODULE_DEVICE_TABLE(of, aspeed_kcs_bmc_match);<br>
<br>
-static struct platform_driver ast_kcs_bmc_driver =3D {<br>
+static struct platform_driver aspeed_kcs_bmc_driver =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .driver =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .name=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D DEVICE_NAME,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.of_match_table =3D=
 ast_kcs_bmc_match,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0.of_match_table =3D=
 aspeed_kcs_bmc_match,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .probe=C2=A0 =3D aspeed_kcs_probe,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 .remove =3D aspeed_kcs_remove,<br>
=C2=A0};<br>
-module_platform_driver(ast_kcs_bmc_driver);<br>
+module_platform_driver(aspeed_kcs_bmc_driver);<br>
<br>
=C2=A0MODULE_LICENSE(&quot;GPL v2&quot;);<br>
=C2=A0MODULE_AUTHOR(&quot;Haiyue Wang &lt;<a href=3D"mailto:haiyue.wang@lin=
ux.intel.com" target=3D"_blank">haiyue.wang@linux.intel.com</a>&gt;&quot;);=
<br>
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bm=
c_npcm7xx.c<br>
index 572501f7da71..e9ba95d0d560 100644<br>
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c<br>
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c<br>
@@ -65,8 +65,9 @@ struct npcm7xx_kcs_reg {<br>
=C2=A0};<br>
<br>
=C2=A0struct npcm7xx_kcs {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct regmap *map;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct kcs_bmc kcs_bmc;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct regmap *map;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 const struct npcm7xx_kcs_reg *reg;<br>
=C2=A0};<br>
<br>
@@ -76,6 +77,11 @@ static const struct npcm7xx_kcs_reg npcm7xx_kcs_reg_tbl[=
KCS_CHANNEL_MAX] =3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 { .sts =3D KCS3ST, .dob =3D KCS3DO, .dib =3D KC=
S3DI, .ctl =3D KCS3CTL, .ie =3D KCS3IE },<br>
=C2=A0};<br>
<br>
+static struct npcm7xx_kcs *to_npcm7xx_kcs(struct kcs_bmc *kcs_bmc)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return container_of(kcs_bmc, struct npcm7xx_kcs=
, kcs_bmc);<br>
+}<br>
+<br>
=C2=A0static u8 npcm7xx_kcs_inb(struct npcm7xx_kcs *npcm7xx_kcs, u32 reg)<b=
r>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 val =3D 0;<br>
@@ -92,36 +98,35 @@ static void npcm7xx_kcs_outb(struct npcm7xx_kcs *npcm7x=
x_kcs, u32 reg, u8 data)<br>
<br>
=C2=A0static u8 npcm7xx_kcs_read_status(struct kcs_bmc *kcs_bmc)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D kcs_bmc_pri=
v(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D to_npcm7xx_=
kcs(kcs_bmc);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return npcm7xx_kcs_inb(npcm7xx_kcs, npcm7xx_kcs=
-&gt;reg-&gt;sts);<br>
=C2=A0}<br>
<br>
=C2=A0static void npcm7xx_kcs_write_status(struct kcs_bmc *kcs_bmc, u8 data=
)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D kcs_bmc_pri=
v(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D to_npcm7xx_=
kcs(kcs_bmc);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 npcm7xx_kcs_outb(npcm7xx_kcs, npcm7xx_kcs-&gt;r=
eg-&gt;sts, data);<br>
=C2=A0}<br>
<br>
=C2=A0static u8 npcm7xx_kcs_read_data_in(struct kcs_bmc *kcs_bmc)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D kcs_bmc_pri=
v(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D to_npcm7xx_=
kcs(kcs_bmc);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return npcm7xx_kcs_inb(npcm7xx_kcs, npcm7xx_kcs=
-&gt;reg-&gt;dib);<br>
=C2=A0}<br>
<br>
=C2=A0static void npcm7xx_kcs_write_data_out(struct kcs_bmc *kcs_bmc, u8 da=
ta)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D kcs_bmc_pri=
v(kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs =3D to_npcm7xx_=
kcs(kcs_bmc);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 npcm7xx_kcs_outb(npcm7xx_kcs, npcm7xx_kcs-&gt;r=
eg-&gt;dob, data);<br>
=C2=A0}<br>
<br>
-static void npcm7xx_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enabl=
e)<br>
+static void npcm7xx_kcs_enable_channel(struct npcm7xx_kcs *npcm7xx_kcs, bo=
ol enable)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *priv =3D kcs_bmc_priv(kcs_b=
mc);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(priv-&gt;map, priv-&gt;reg-&=
gt;ctl, KCS_CTL_IBFIE,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 enable ? KCS_CTL_IBFIE : 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(npcm7xx_kcs-&gt;map, npcm7xx=
_kcs-&gt;reg-&gt;ctl,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 KCS_CTL_IBFIE, enable ? KCS_CTL_IBFIE : 0);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(priv-&gt;map, priv-&gt;reg-&=
gt;ie, KCS_IE_IRQE | KCS_IE_HIRQE,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0regmap_update_bits(npcm7xx_kcs-&gt;map, npcm7xx=
_kcs-&gt;reg-&gt;ie,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 KCS_IE_IRQE | KCS_IE_HIRQE,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0enable ? KCS_IE_IRQE | KCS_IE_HIRQE : 0);<br>
=C2=A0}<br>
<br>
@@ -142,7 +147,7 @@ static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_b=
mc,<br>
=C2=A0static int npcm7xx_kcs_probe(struct platform_device *pdev)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct device *dev =3D &amp;pdev-&gt;dev;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *priv;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct npcm7xx_kcs *npcm7xx_kcs;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct kcs_bmc *kcs_bmc;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 chan;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int rc;<br>
@@ -153,49 +158,47 @@ static int npcm7xx_kcs_probe(struct platform_device *=
pdev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENODEV;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc =3D kcs_bmc_alloc(dev, sizeof(*priv), c=
han);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!kcs_bmc)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0npcm7xx_kcs =3D devm_kzalloc(dev, sizeof(*npcm7=
xx_kcs), GFP_KERNEL);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!npcm7xx_kcs)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENOMEM;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc =3D &amp;npcm7xx_kcs-&gt;kcs_bmc;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0dev_set_drvdata(dev, kcs_bmc);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv =3D kcs_bmc_priv(kcs_bmc);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;map =3D syscon_node_to_regmap(dev-&gt;=
parent-&gt;of_node);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(priv-&gt;map)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0npcm7xx_kcs-&gt;map =3D syscon_node_to_regmap(d=
ev-&gt;parent-&gt;of_node);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ERR(npcm7xx_kcs-&gt;map)) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(dev, &quot;=
Couldn&#39;t get regmap\n&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENODEV;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0priv-&gt;reg =3D &amp;npcm7xx_kcs_reg_tbl[chan =
- 1];<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0npcm7xx_kcs-&gt;reg =3D &amp;npcm7xx_kcs_reg_tb=
l[chan - 1];<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;read_status =3D npcm7xx_kcs_read_st=
atus;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;write_status =3D npcm7xx_kcs_write_=
status;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;read_data_in =3D npcm7xx_kcs_read_d=
ata_in;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 kcs_bmc-&gt;write_data_out =3D npcm7xx_kcs_writ=
e_data_out;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0dev_set_drvdata(dev, kcs_bmc);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0npcm7xx_kcs_enable_channel(npcm7xx_kcs, true);<=
br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0npcm7xx_kcs_enable_channel(kcs_bmc, true);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D npcm7xx_kcs_config_irq(kcs_bmc, pdev);<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D kcs_bmc_init(kcs_bmc, dev, chan);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D misc_register(&amp;kcs_bmc-&gt;miscdev);=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D npcm7xx_kcs_config_irq(kcs_bmc, pdev);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (rc) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dev_err(dev, &quot;=
Unable to register device\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc_stop(kcs_bm=
c);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return rc;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_dbg(&amp;pdev-&gt;dev,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Probed KCS de=
vice %d (DIB=3D0x%x, DOB=3D0x%x, STS=3D0x%x )\n&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chan, priv-&gt;reg-=
&gt;dib, priv-&gt;reg-&gt;dob, priv-&gt;reg-&gt;sts);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;Probed KCS de=
vice %d (DIB=3D0x%x, DOB=3D0x%x, STS=3D0x%x)\n&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0chan, npcm7xx_kcs-&=
gt;reg-&gt;dib, npcm7xx_kcs-&gt;reg-&gt;dob,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0npcm7xx_kcs-&gt;reg=
-&gt;sts);<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
=C2=A0static int npcm7xx_kcs_remove(struct platform_device *pdev)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct kcs_bmc *kcs_bmc =3D dev_get_drvdata(&am=
p;pdev-&gt;dev);<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0misc_deregister(&amp;kcs_bmc-&gt;miscdev);<br>
-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0kcs_bmc_stop(dev_get_drvdata(&amp;pdev-&gt;dev)=
);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
-- <br>
2.30.0.478.g8a0d178c01-goog<br>
<br>
</blockquote></div>

--000000000000f8020005bb83584a--


--===============9001950182418216692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9001950182418216692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============9001950182418216692==--

