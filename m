Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D80B442425
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 00:37:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhgrL-0003tb-Ce; Mon, 01 Nov 2021 23:36:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mhgrJ-0003tN-6Y
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pmid3FU5YvCxo0zgOGInuBcMmgEuXW80FVg90+iTmBQ=; b=II5eXLqo/VFbU9q0VSrmpQjm/h
 doj+zW2HsmhvL3SJx/xhMTJ2s86SBscmoluUDdKYI55HKv/hu8e6KKAHp1vZG9MJLn8jd5jjucCUk
 n26IBvngx0rRId2uGVYej0qQGoSsCl0C07CDmXIRMzn9wpQFkPQkjfGwY8TXW+b/Pm7U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pmid3FU5YvCxo0zgOGInuBcMmgEuXW80FVg90+iTmBQ=; b=CZU55dA43DLYiT/GREq0jCIxAA
 DS0QU5hqNDRsVWwz8uMo/wFlGj+OYFz4vQIo29UD9f16jKHBbmW45NStdjSZ+bXCtxxeNdARhPBIB
 10+eSigfXoO43h5I8kowLZycFrkl/L7gUpl8YRdnAnucS2IG/fjaFQo6MeNgrve43PE0=;
Received: from mail-qt1-f181.google.com ([209.85.160.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhgrI-00051R-DZ
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:36:57 +0000
Received: by mail-qt1-f181.google.com with SMTP id h16so13001806qtk.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 16:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pmid3FU5YvCxo0zgOGInuBcMmgEuXW80FVg90+iTmBQ=;
 b=TI5IZanq3Fhrg9BqUaGHomQGExeanmPBRt6rkePMxm+nhhpNKkkWjJOc0GsInRMNk7
 VPlRfeqdhel3q3OV8PBcmLt79mL3j2cNQ6RJ8mmzNWYqOf7SBgHXjQFzYyKKzHKIGCkt
 dJv7isjhUh3GOcHeYHSDDq426L916mLlzJGUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pmid3FU5YvCxo0zgOGInuBcMmgEuXW80FVg90+iTmBQ=;
 b=jIbLY2xC6OfQVpH/+X5vA3RMKfqF8FshP6/04lAgRH7I3vdCJ2xotPm1LBNdCcTBC/
 +PwR3lAuf8diKt4Y9ivoV/hvLAFMUVExEZmfJrH5HFbfZ8rdF9rd0LisMEQOUvdKDIPZ
 SI7X9mOrGuGRNbG/mZZyLzx+G2AOr4gKyq05OLRL0U5gSz2T3psMP6tZ38ciilJGRhC0
 CWWBKeqGSWHiBNjENjtbD4M5XHkUxwTI3JJbBpngzrdvmK0+btWDCCk6QzyK+kWW4UKi
 pTZYWlgmAwJhHFSc6g4chDWg5McEL/Xesvx1P3s4fV7RlkNvh0V1TRzY4gkomnpghQZz
 5eVQ==
X-Gm-Message-State: AOAM530+xQwkEmI5xCs8Wj3ZLs9j9Rai7R5j3jkSCuxTzPWinOfo1adh
 0H0HDtt1qa+V+q2Lh0k0YOiDuVAuda1VrHQ0Jl3YJJWQPH4=
X-Google-Smtp-Source: ABdhPJyRea5xbiVxpgagPn5g8jYKHqnv1Wr8Iudl5+8G0cJaDNMGFdAblrI+/llOFZb3xgPlWKt9BlHm3lZ6cZ5SSD8=
X-Received: by 2002:ac8:5e49:: with SMTP id i9mr32849455qtx.145.1635809810659; 
 Mon, 01 Nov 2021 16:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 1 Nov 2021 23:36:38 +0000
Message-ID: <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
To: Jae Hyun Yoo <jae.hyun.yoo@intel.com>, Zev Weiss <zev@bewilderbeest.net>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
 > > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > Hello all, > >
 This series is for appliying below fix to all Aspped LPC sub drive [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.181 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhgrI-00051R-DZ
Subject: Re: [Openipmi-developer] [PATCH -next 0/4] Add LCLK control into
 Aspeed LPC sub drivers
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
> Hello all,
>
> This series is for appliying below fix to all Aspped LPC sub drivers.
> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>
> An LPC sub driver can be enabled without using the lpc-ctrl driver or it
> can be registered ahead of lpc-ctrl depends on each system configuration and
> this difference introduces that LPC can be enabled without heart beating of
> LCLK so it causes improper handling on host interrupts when the host sends
> interrupts in that time frame. Then kernel eventually forcibly disables the
> interrupt with dumping stack and printing a 'nobody cared this irq' message
> out.
>
> To prevent this issue, all LPC sub drivers should enable LCLK individually
> so this patch adds clock control logic into the remaining Aspeed LPC sub
> drivers.

Thanks for sending this out!

This will resolve a few of the issues we have in the issue tracker:

https://github.com/openbmc/linux/issues/210
https://github.com/openbmc/linux/issues/130

The patches look good to me. I think you've just missed Corey's PR for
v5.16, but I will stick them in the openbmc tree once they've had a
review.

Cheers,

Joel

>
> Please review this series.
>
> Thanks,
> Jae
>
> Jae Hyun Yoo (4):
>   ARM: dts: aspeed: add LCLK setting into LPC IBT node
>   ipmi: bt: add clock control logic
>   ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
>   ipmi: kcs_bmc_aspeed: add clock control logic
>
>  arch/arm/boot/dts/aspeed-g4.dtsi   |  1 +
>  arch/arm/boot/dts/aspeed-g5.dtsi   |  5 +++++
>  arch/arm/boot/dts/aspeed-g6.dtsi   |  5 +++++
>  drivers/char/ipmi/bt-bmc.c         | 24 ++++++++++++++++++++++-
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
>  5 files changed, 61 insertions(+), 5 deletions(-)
>
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
