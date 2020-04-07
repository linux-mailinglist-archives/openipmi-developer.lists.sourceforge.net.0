Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C291A1888
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Apr 2020 01:19:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jLxUp-0008Kx-V7; Tue, 07 Apr 2020 23:19:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1jLxUo-0008Kh-0E
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 23:19:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=arc0QwF9QkSbUYwece2kAdI0S4w2e8/g1Kg2BaIFivk=; b=iOjH8L+g+psfrqi5mq3p/zixek
 XpaHsPMzm9F6zLtkR7ZO3g4LGr7eqWlhIl7/Ga+zRo52Lh4SxqMtI3R2elKJRlELTcuMZOXkPtrnC
 iZo1ZJFraXF7uM+FkfsH5JtIAqE1MHCYy5E+J/WniHUHSsBtHrX45Mq3bh9ZQ4vQ2JYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=arc0QwF9QkSbUYwece2kAdI0S4w2e8/g1Kg2BaIFivk=; b=DqTr+YeEd7s6+e2E+1MrLVzpQi
 IiIzr0GTnBnZaAW+3FlIq3Pp4WGlUwxlGTmy6/e34AJOqz59zU0gVOipIrSKLkSWuojHxbKnXs+vz
 x3bM0cGPSrOh6TuVA2jdhe5FaY4sOk8ZU35NK0mXh+eX4PADDzS+pzH9SpGGhbXEwIVI=;
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLxUe-006kWM-F3
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 23:19:05 +0000
Received: by mail-qk1-f194.google.com with SMTP id j4so1273940qkc.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Apr 2020 16:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=arc0QwF9QkSbUYwece2kAdI0S4w2e8/g1Kg2BaIFivk=;
 b=joSVl4H3I2jYhGA+Vn8ARJtV17flaV4g5L4ydFwkGzaU4GKGFvvbA33H13/xHIoGGi
 IS8HLQ7QwG13HsWXu+MWcZp2sNzgpNZVje6mMr6PoJuvQ81zI3kZYI0lR3vleehqmKFO
 E+GcOu66YWlvOT5n/VkC5Fikld0uWFi9Wl74c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=arc0QwF9QkSbUYwece2kAdI0S4w2e8/g1Kg2BaIFivk=;
 b=MnJWwjUxctiESVKGd65VeyAp1QXj8DPC33e+hqhNnWYwJ7b8iA32iZo5jbb0Sc4fNf
 m3bfji7J1PmzmxJ1Bq0rp/Fp+6bbwxp/fDT8u9fNyab3B/9HpV07y1jBHZjO6As/wTqi
 Bd/ub5cbWi38xzwv77mn/nwGekoya1/FmnyJU8X0KqfYt0XdOew3yyHC7Vcnn6OCZ2C2
 X4N1+pZJHv8cxnZzBhUafVuyFmpIXktVRl3yOubgVAmOzSLXn6qs4AT4pbliUVbZUiwe
 KiI0Qv1jcYw7ermxPCRPgdK8UMD4asyEBsaDplxNoyE7EEmVy1hBQwVS7lJSqSvXtRgK
 2z/Q==
X-Gm-Message-State: AGi0PuZvDlzFD0sE3RdOUOwftuHF276wgJdKSfCUYnKnCnHNJ6Q1ydqV
 0VXBb+UDok5LUUq0MSoWKqljJBK1gL3tHzyw+lQ=
X-Google-Smtp-Source: APiQypIlWOqiY3c2g2lCk10VKv2zHPQ+qXXZ0U8vk+OcVtVD3SHJ2bsOmTS2udT1T9Bm2A0alpCXLE1dDZOpotPlZn0=
X-Received: by 2002:a37:b285:: with SMTP id b127mr4735607qkf.292.1586301530231; 
 Tue, 07 Apr 2020 16:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200407122149.GA100026@mwanda>
In-Reply-To: <20200407122149.GA100026@mwanda>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 7 Apr 2020 23:18:38 +0000
Message-ID: <CACPK8XfA-4WvgVeEKi-hdC-LgEcicEhpV_0ivwymaEJKy15hGA@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jLxUe-006kWM-F3
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Fix
 aspeed_kcs_probe_of_v1()
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
Cc: Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 7 Apr 2020 at 12:22, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> This needs to return the newly allocated struct but instead it returns
> zero which leads to an immediate Oops in the caller.
>
> Fixes: 09f5f680707e ("ipmi: kcs: aspeed: Implement v2 bindings")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks for the fix Dan.

Andrew, I think this means no one has used the v1 bindings in
mainline, so could remove that code?

> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 9422d55a0476..a140203c079b 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -271,7 +271,7 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
>         kcs->ioreg = ast_kcs_bmc_ioregs[channel - 1];
>         aspeed_kcs_set_address(kcs, slave);
>
> -       return 0;
> +       return kcs;
>  }
>
>  static int aspeed_kcs_calculate_channel(const struct kcs_ioreg *regs)
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
