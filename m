Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 896325F5D50
	for <lists+openipmi-developer@lfdr.de>; Thu,  6 Oct 2022 01:51:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogEAC-00042l-5D;
	Wed, 05 Oct 2022 23:50:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joel.stan@gmail.com>) id 1ogEA9-00042e-Hn
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:50:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kx6Wx0sJJqPpK7EB8zBcafQgWESIq3D1YHYnV5vi9x0=; b=XhO8jrhLWV42iIjY9hE3+jFSMo
 ZHUnQRNYFhgNM2lMDJZLpTU7xIZFR3x0BXvpw/bNimOzK6rIDuNdEvgHU40N0qGV44Oeu/IQ65G3W
 8SYfEoQjaSLMBRw5tNKKcHGQ/HvWzN5HgdX2TuVSJxqGCH00qRsEB4xU9g/jw5/6iA6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kx6Wx0sJJqPpK7EB8zBcafQgWESIq3D1YHYnV5vi9x0=; b=aK5VTB30kzF97EcNYqdzvd94oy
 xNWH8rey3T/+ryZDmQlxGQ4KZaNx7sEohcCjn1xc4l9xN73qX6/tv6ZkRjQMs5hw1d+DnTcKA3BDb
 h2/8QjtIIvjz1XrGbvBAdJ56dcWntjrTPYTQDOMmW8tbPoeQt4kZbusRjX2EGTlcJKLw=;
Received: from mail-vs1-f49.google.com ([209.85.217.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogE9y-00E4DP-Hg for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 23:50:53 +0000
Received: by mail-vs1-f49.google.com with SMTP id n186so468160vsc.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 05 Oct 2022 16:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=kx6Wx0sJJqPpK7EB8zBcafQgWESIq3D1YHYnV5vi9x0=;
 b=io90ztoSpWXGa/05vz6ORJe05OOi3DmM8vp/dS83rcWW5B/NGjl2WcvuYsrJLoTmev
 yKK1yYlbhgLpe09k623rUOkoNJ1SPCaFL/udfsA/B71y+b1TtUU35l/jYj473jB99OU4
 xtPje/p9kNXw26pyTG4xsgOz1woFVzkrsGfIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=kx6Wx0sJJqPpK7EB8zBcafQgWESIq3D1YHYnV5vi9x0=;
 b=sDY558Uqjl0SAt08SnT1QRDgd5MMl+cM7No2tQbTThiW6VtlysFVk6aH6fkOSGVM1K
 i59jy5jz2IaBD9C1mtYkqGLz/uOl8QdV9HXnvmhcAWrk2NLuu6/mYmtEATC1dHt2+fMx
 XVAw2ekNavTN+kvGltl9rYYjtrnTzVLyLq8scXgx3KI9GKoz2V0Dp9ywLeoHJQevX2Pk
 Bs4qdIYw4SPZJYIYVNQ6LXIYkimmfGMgFQbIMF8uk530fsvaUQIGnjM7TnOov7WxrsIi
 GK5SLhO0Y+8QAdANTprGlJjI9nKDPaWdTnZgzM2COAhkT39SmrnJNyYz/hhKDha8T3fF
 tV/A==
X-Gm-Message-State: ACrzQf3S2a7roybclJTtw95h7Y6plWPoqKxdx/c+z/J9Yr1L+is6Kkx/
 EckAjatsrzzZ4nXCgRU9AK7iuDZzhaeBdUiVzms=
X-Google-Smtp-Source: AMsMyM6WWdu+CA2L45dPSLzn51m5FH4S206qrxUtWl7qkLJM4GqsLMX6Y1pSTYkWsq2xKn7c0rz2sYFnqeU/hnvdGTM=
X-Received: by 2002:a05:6102:3d05:b0:398:7dce:8492 with SMTP id
 i5-20020a0561023d0500b003987dce8492mr1008369vsv.43.1665013836642; Wed, 05 Oct
 2022 16:50:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220812144741.240315-1-andrew@aj.id.au>
In-Reply-To: <20220812144741.240315-1-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 5 Oct 2022 23:50:23 +0000
Message-ID: <CACPK8XdnFPXZuzAaSMOUnV6ng9y2_ZMcAff12q8Zxvr2HJZy-w@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 12 Aug 2022 at 14:48,
 Andrew Jeffery <andrew@aj.id.au>
 wrote: > > The ASPEED KCS devices don't provide a BMC-side interrupt for
 the host > reading the output data register (ODR). The act of th [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.49 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ogE9y-00E4DP-Hg
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Poll OBF briefly to
 reduce OBE latency
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
Cc: minyard@acm.org, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 12 Aug 2022 at 14:48, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The ASPEED KCS devices don't provide a BMC-side interrupt for the host
> reading the output data register (ODR). The act of the host reading ODR
> clears the output buffer full (OBF) flag in the status register (STR),
> informing the BMC it can transmit a subsequent byte.
>
> On the BMC side the KCS client must enable the OBE event *and* perform a
> subsequent read of STR anyway to avoid races - the polling provides a
> window for the host to read ODR if data was freshly written while
> minimising BMC-side latency.
>

Fixes...?

> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 24 +++++++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index cdc88cde1e9a..417e5a3ccfae 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -399,13 +399,31 @@ static void aspeed_kcs_check_obe(struct timer_list *timer)
>  static void aspeed_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 state)
>  {
>         struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
> +       int rc;
> +       u8 str;

str is status, it would be good to spell that out in full.

>
>         /* We don't have an OBE IRQ, emulate it */
>         if (mask & KCS_BMC_EVENT_TYPE_OBE) {
> -               if (KCS_BMC_EVENT_TYPE_OBE & state)
> -                       mod_timer(&priv->obe.timer, jiffies + OBE_POLL_PERIOD);
> -               else
> +               if (KCS_BMC_EVENT_TYPE_OBE & state) {
> +                       /*
> +                        * Given we don't have an OBE IRQ, delay by polling briefly to see if we can
> +                        * observe such an event before returning to the caller. This is not
> +                        * incorrect because OBF may have already become clear before enabling the
> +                        * IRQ if we had one, under which circumstance no event will be propagated
> +                        * anyway.
> +                        *
> +                        * The onus is on the client to perform a race-free check that it hasn't
> +                        * missed the event.
> +                        */
> +                       rc = read_poll_timeout_atomic(aspeed_kcs_inb, str,
> +                                                     !(str & KCS_BMC_STR_OBF), 1, 100, false,
> +                                                     &priv->kcs_bmc, priv->kcs_bmc.ioreg.str);
> +                       /* Time for the slow path? */

The mod_timer is the slow path? The question mark threw me.

> +                       if (rc == -ETIMEDOUT)
> +                               mod_timer(&priv->obe.timer, jiffies + OBE_POLL_PERIOD);
> +               } else {
>                         del_timer(&priv->obe.timer);
> +               }
>         }
>
>         if (mask & KCS_BMC_EVENT_TYPE_IBF) {
> --
> 2.34.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
