Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CF25E6B55
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Sep 2022 20:57:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obROD-0005Kz-Ef;
	Thu, 22 Sep 2022 18:57:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1obROB-0005Kt-Qt
 for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 18:57:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h9c+xPWJyC5OnFGo12v4TpTLnof1p8+esOXYmciFsQA=; b=XZ/6EwwqrhTgjmvhNj88hNapbN
 0+m24SeYrGVIIMX0cvleVi0EqrYprePZzrQlDCwVeZnIPKmdr2dGYtcvhSeUrH95ULchkGlDT/ro4
 kSAHg1R7O6ZGAl6zCxHoED8yp84BbbgLXmIXOtV7OHcU+37JEYp6/Q+ueoUTQCCaeQg8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h9c+xPWJyC5OnFGo12v4TpTLnof1p8+esOXYmciFsQA=; b=DjJVb/IXv6B9cKJmgYfLG9WYaZ
 woxrWrLdL6O4zERUre+MQa20gyw/9W8rnf6SqrFgMRbOR4o0XPB5tbiGJ+o7Kg5+pphYiNkY4Ufb9
 A2SXAoy07u04YLESH/0J/U2dwcv85msZ2GWjlXNbrxOJeGZgJ8RNVHil7MxB4sF6o2mw=;
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obRON-00Gq1g-Ng for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 18:57:48 +0000
Received: by mail-qk1-f180.google.com with SMTP id y2so6844666qkl.11
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 11:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date;
 bh=h9c+xPWJyC5OnFGo12v4TpTLnof1p8+esOXYmciFsQA=;
 b=axhceb0omg3rX8tkuuP0AQ9Uwq2axBINJntz4zOv/BEVfSxg/ddN5kY3Gx/C6vrdw3
 N8hqgRa5R76RpCqg4mTHnN1dbWkPdjFId8w5nvxn7A758diY5owUDU4phu9NrtF3TRjT
 AgIvXm92Oiy4/Fv7p63YBmwatogCuf/3r0pDbYlAiDeNGHkjx2XnylVlLFmbm8jiq93t
 pxusF/6VqWeyojGb6Qk9yeub6PRZsXQCBF3bcJAWHvEG9OeH3noFYuWi5tp+0MGcV7ua
 SAmWYz21zlNRLFScWZssJ1x6kr7EW2DUHxCjTYisq41CBg3nS44wrqYhQJhVGi09hKPg
 P20g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date;
 bh=h9c+xPWJyC5OnFGo12v4TpTLnof1p8+esOXYmciFsQA=;
 b=YjBq7HRQPvmQnnJvqhdInFVax6BXgjU5BawxKfBGAUHn9hU3i/qsLWygoUYB7JJjlC
 +nANC7ixYoy8ZAPi7+SqA7SRhu6OqrFkkJ1s8kfoghzhfq/gvuORLjRy/5kVkqJ3QA8i
 y6qC9dVZwAQK8Nu/ws0SPtreAXc7H0fCZsnCcZMrzGUSv/eSLU2gz8O3pJASwgi2ESLz
 9shKqX6961+vgpkXNNBAiuyaRd1uipLmzpWDJUPulnl6m9kbLr1yzq2+lidENGaqbwP5
 tCEl12//T3Bi5zWc0P7/Byimser0GiF0iJTJeZ3M5TBN1jdKd9HsehT8eoHtp/dydELq
 yYsg==
X-Gm-Message-State: ACrzQf0redm48BH9Gk4TgLGmQgpk+e9DRfP5WYT5tt0KDt7gR/J/M1gl
 v2FPVM+seZ1VR0CSeGqHXg==
X-Google-Smtp-Source: AMsMyM7lRX/UtjmtPjX7vd4fBl38n/2HwjotYxOaQHYiv6AR68EPDuLkUGmGjF8Iz8qfIhSJckxh4Q==
X-Received: by 2002:a05:620a:1d02:b0:6ce:5820:2fdc with SMTP id
 dl2-20020a05620a1d0200b006ce58202fdcmr3246580qkb.638.1663873061853; 
 Thu, 22 Sep 2022 11:57:41 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 g17-20020ac87751000000b003434e47515csm3889217qtu.7.2022.09.22.11.57.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 11:57:41 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:5d3f:d09:85d2:d6e])
 by serve.minyard.net (Postfix) with ESMTPSA id AEF841800BD;
 Thu, 22 Sep 2022 18:57:40 +0000 (UTC)
Date: Thu, 22 Sep 2022 13:57:39 -0500
From: Corey Minyard <minyard@acm.org>
To: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
Message-ID: <YyywI8265vECnEHv@minyard.net>
References: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 20, 2022 at 10:03:33AM +0800,
 Chia-Wei Wang wrote:
 > Remove AST_usrGuide_KCS.pdf as it is no longer maintained. Even if it's
 no longer maintained,
 is it useful? It seems better to leave in useful documentation
 unless it has been replaced with something else. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.180 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1obRON-00Gq1g-Ng
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Update port
 address comments
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Sep 20, 2022 at 10:03:33AM +0800, Chia-Wei Wang wrote:
> Remove AST_usrGuide_KCS.pdf as it is no longer maintained.

Even if it's no longer maintained, is it useful?  It seems better to
leave in useful documentation unless it has been replaced with something
else.

-corey

> 
> Add more descriptions as the driver now supports the I/O
> address configurations for both the KCS Data and Cmd/Status
> interface registers.
> 
> Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 29 ++++++++++++++++++-----------
>  1 file changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index cdc88cde1e9a..19c32bf50e0e 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -207,17 +207,24 @@ static void aspeed_kcs_updateb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask,
>  }
>  
>  /*
> - * AST_usrGuide_KCS.pdf
> - * 2. Background:
> - *   we note D for Data, and C for Cmd/Status, default rules are
> - *     A. KCS1 / KCS2 ( D / C:X / X+4 )
> - *        D / C : CA0h / CA4h
> - *        D / C : CA8h / CACh
> - *     B. KCS3 ( D / C:XX2h / XX3h )
> - *        D / C : CA2h / CA3h
> - *        D / C : CB2h / CB3h
> - *     C. KCS4
> - *        D / C : CA4h / CA5h
> + * We note D for Data, and C for Cmd/Status, default rules are
> + *
> + * 1. Only the D address is given:
> + *   A. KCS1/KCS2 (D/C: X/X+4)
> + *      D/C: CA0h/CA4h
> + *      D/C: CA8h/CACh
> + *   B. KCS3 (D/C: XX2/XX3h)
> + *      D/C: CA2h/CA3h
> + *   C. KCS4 (D/C: X/X+1)
> + *      D/C: CA4h/CA5h
> + *
> + * 2. Both the D/C addresses are given:
> + *   A. KCS1/KCS2/KCS4 (D/C: X/Y)
> + *      D/C: CA0h/CA1h
> + *      D/C: CA8h/CA9h
> + *      D/C: CA4h/CA5h
> + *   B. KCS3 (D/C: XX2/XX3h)
> + *      D/C: CA2h/CA3h
>   */
>  static int aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u32 addrs[2], int nr_addrs)
>  {
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
