Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A39359391
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 06:08:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUiRQ-0000yo-BK; Fri, 09 Apr 2021 04:08:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <joel.stan@gmail.com>) id 1lUiRO-0000yg-Nt
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 04:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6yyDCVy3mgN7UIfoc4Ica7qnzkHDt6TIUyqqtfM/zDo=; b=PqW64ceNoqJxJ2FtvFHwra8YK7
 Zw0n53RX07vUD9YNykNBedQEUqlQcGVbeAUK2CH+BV5UJ0FZSm8cgqZdsxs87kJXMUP8RiVBhYkiy
 0PVy7FCOnENb6k9ChYgyEx11d41Zn1b/0SBmxE9G7xI3ahEF7OnoUdTVkpAoVDQlcQvk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6yyDCVy3mgN7UIfoc4Ica7qnzkHDt6TIUyqqtfM/zDo=; b=SKTXRSORWHCEMOAoq9ftd0rz3b
 BpQ0JJm4sIfP47oPGa54dCLs9gv3NZyZPLl971sC54JLsMVGWfRCX8q0whimwCmrs977iK79ffO2h
 q8DKR1w9XwBQEQNIShFN76HBbmyniZJw1Yw6p8r0p/EPUaxfiZGD3J4A46yACmdmCMic=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lUiR6-0000gB-1i
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 04:08:18 +0000
Received: by mail-qt1-f179.google.com with SMTP id c6so3288838qtc.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 21:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6yyDCVy3mgN7UIfoc4Ica7qnzkHDt6TIUyqqtfM/zDo=;
 b=etu1TFPpik1av1/qSzQkkOdpkLUwlHQfWIufkgDSas80OORkeuUMA2SfOv6IMJsDBj
 D11FbakI/UtmiZUE3c2n6Y9I015razUdcPx+m/1QyUkoowcm1GLD4lgIiROIbQ+HVsbZ
 gIoYRGTc22RZDxmJ9TBzF22uLhbjo15pMflAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6yyDCVy3mgN7UIfoc4Ica7qnzkHDt6TIUyqqtfM/zDo=;
 b=WhpV61E4lNylz6fXFPVYzGnnS21PzwKvW54ALkXURL+W06WYMxR6e9qh0EMaAa1tmS
 6ZuWDONjrweFILSWPeSZ0QZ5QyQwUp5YNmBF6v7BDZ9LZ9ysk2mtK1OFt2Kus1Ghrvur
 LYHPPJ6bsnh/LtpQIDv4LVidmpiIuRMMO+xECWx62axGkU8f6TQxEWwSsZab7arZhUs/
 NvVZlDThVPIyJCw+X1LCNg6eG8An4SaEJMfgihgvQTpMaCCVDp5EK1NjXv5Y1BqO5nB6
 IFmVydZfx+Vph5h1nl9YRmTgahEk+XFaE+t34zAaYlyKb6pFa5+wURoaZ6rnWx1Tv5zJ
 B/mg==
X-Gm-Message-State: AOAM532kQZShjYJg3imAJbg5LislzknPmab1oR8Aji5XSz4UZ5EQ87ya
 isqlIoTSXGFxwNoW3IBaPpQclX/bNjwK7jHx8UA=
X-Google-Smtp-Source: ABdhPJxL9rRQjeysZInGfbAHqF/7yTWuj4Sgw3/i2T+opVmkZocP5jOEO3AeeBapuqiz1ZJDZdAR+BRPln4hRFaqmtw=
X-Received: by 2002:ac8:4d1b:: with SMTP id w27mr5588742qtv.363.1617941274284; 
 Thu, 08 Apr 2021 21:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210319061952.145040-1-andrew@aj.id.au>
 <2db77e16-3f44-4c02-a7ba-a4fac8141ae3@www.fastmail.com>
 <20210408121441.GG7166@minyard.net>
 <6ff29d26-543a-4790-abb4-ebaa3f8d0265@www.fastmail.com>
In-Reply-To: <6ff29d26-543a-4790-abb4-ebaa3f8d0265@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 9 Apr 2021 04:07:41 +0000
Message-ID: <CACPK8Xc5HC7TZ6cUDH6+uHQO1LQCZE0YeENua1sE8nDXs0R2mg@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>, Arnd Bergmann <arnd@arndb.de>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lUiR6-0000gB-1i
Subject: Re: [Openipmi-developer] [PATCH v2 00/21] ipmi: Allow raw access to
 KCS devices
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
Cc: devicetree <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 8 Apr 2021 at 23:47, Andrew Jeffery <andrew@aj.id.au> wrote:
> On Thu, 8 Apr 2021, at 21:44, Corey Minyard wrote:
> > On Thu, Apr 08, 2021 at 10:27:46AM +0930, Andrew Jeffery wrote:

> > > > 1. It begins with patches 1-5 put together by Chia-Wei, which I've
> > > > rebased on v5.12-rc2. These fix the ASPEED LPC bindings and other
> > > > non-KCS LPC-related ASPEED device drivers in a way that enables the
> > > > SerIRQ patches at the end of the series. With Joel's review I'm hoping
> > > > these 5 can go through the aspeed tree, and that the rest can go through
> > > > the IPMI tree.

> > > >
> > > > Please review!
> > >
> > > Unfortunately the cover letter got detached from the rest of the series.
> > >
> > > Any chance you can take a look at the patches?
> >
> > There were some minor concerns that were unanswered, and there really
> > was no review by others for many of the patches.
>
> Right; I was planning to clean up the minor concerns once I'd received
> some more feedback. I could have done a better job of communicating
> that :)

I'll merge the first five through the aspeed tree this coming merge
window. We have acks from the relevant maintainers.

Arnd: would you prefer that this come as it's own pull request, or as
part of the device tree branch?

Andrew, Corey: once I've got my pull requests out I'll look at
reviewing the rest of the series. Perhaps it would pay to re-send that
hunk of patches Andrew with the nits fixed?

Cheers,

Joel


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
