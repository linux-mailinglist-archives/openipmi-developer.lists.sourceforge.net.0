Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 534F73597D0
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 10:27:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUmUH-0004s0-5r; Fri, 09 Apr 2021 08:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <arnd@arndb.de>) id 1lUmUE-0004rs-LH
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nXJo1QvQlYGiV2ydKjOH5WDoUP0Ya8ArIjAZ+wgX9vE=; b=E4CZAfWs+2FgSSUoNYQIO/hMSy
 wi8C1tTp0EY/AmH20Rrlm2b2bpeDS6pG4U/3AXZQ6XTjMquUiZDaKoRhXQqDVKO6S+2rRqPibmQvs
 XHO8VHtFPqVG0vy5wjB8Fc+UfsrE31DR0UcYRv+VZfMPt1PsV6zq9TIgTIm6vdgdyHh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nXJo1QvQlYGiV2ydKjOH5WDoUP0Ya8ArIjAZ+wgX9vE=; b=ALzCY4a2AuGJ3SgHS9WSG9JTWX
 wXrlfPWFn+bB4rUf2uL6J8KbpE6ODNubkYzoFeP/pTWczkGKdPOsVD0+Q2icTQ+vvi4jTfB6jQYIN
 hlo4P1kE5gcQq8csuN1VFe0WhIMEowq88fQ3bGnQ0X/usu9hCeGIxgK+QyVJXoJzbpMY=;
Received: from mout.kundenserver.de ([212.227.17.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUmTq-0001wk-7d
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:27:27 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Macay-1m6r7L2reM-00cDil for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Apr 2021 10:13:53 +0200
Received: by mail-oi1-f178.google.com with SMTP id w70so5041626oie.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Apr 2021 01:13:53 -0700 (PDT)
X-Gm-Message-State: AOAM530oeZIPrbX/sM3l0iwyrHAf/bX7XJslxLiwBUzWmXpBEnnONoeb
 98qelfn7Bo+HuPhA+6qQ1XYR6bhNVzVZ7BhgO64=
X-Google-Smtp-Source: ABdhPJzFdzRK0Fr9sttYZU00DkmHPob2Ue763VfCmKuqxE8AuUxCM9nJfgP3QwCQkKhUcqhD2rg86m1268AEXjhhEyo=
X-Received: by 2002:aca:5945:: with SMTP id n66mr8949399oib.11.1617956032510; 
 Fri, 09 Apr 2021 01:13:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210319061952.145040-1-andrew@aj.id.au>
 <2db77e16-3f44-4c02-a7ba-a4fac8141ae3@www.fastmail.com>
 <20210408121441.GG7166@minyard.net>
 <6ff29d26-543a-4790-abb4-ebaa3f8d0265@www.fastmail.com>
 <CACPK8Xc5HC7TZ6cUDH6+uHQO1LQCZE0YeENua1sE8nDXs0R2mg@mail.gmail.com>
In-Reply-To: <CACPK8Xc5HC7TZ6cUDH6+uHQO1LQCZE0YeENua1sE8nDXs0R2mg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Apr 2021 10:13:36 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2ch82=QccNZboa-e1tVaotyJfGFTfqDuQCO0xPVitXgA@mail.gmail.com>
Message-ID: <CAK8P3a2ch82=QccNZboa-e1tVaotyJfGFTfqDuQCO0xPVitXgA@mail.gmail.com>
To: Joel Stanley <joel@jms.id.au>
X-Provags-ID: V03:K1:c8RWWSzcxVPRYY09fr/EZn9hM/HFMPVzm27eHZ4jC7sC4Z6xGNg
 OfLeFdGXsg8sWsIAXvn5Cgpi7vrrydVFe1sMBdE94AHEpmoqAb0+5J5R4OeLNVfaa4lSOyn
 xpJ7vCDNf8CDDI6cUN+8/sY3nMXVMNTHU0UEH3HAgMnCyytu4MNPJZ2gVofHuhU2vyDoxKf
 sToenf2PEWzebA8yiACGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kqQj3DRg364=:OFN90QYYIRKSMdWPcRyxmv
 tdCWYwrupcZV5hwRiEp45vb3cAr8T6J9ibHojeBw04vO7XaiOi82I2zMVZCH9PV3EXGVhOOzN
 cNaIUjMM04cDwV33s3+ZMCWypoHUfVl+R+K4j100eurM++wrNvVc4UGsfkALZmo2z24QYAQ8h
 HfL9/yaDmZerJvSvZNLdxwknXvHxgb3RObS09xgusSSFocKgx3Xe+Dp76oreOoenD1cfNfbLC
 67SNOpZ4H5QxwZKZUXsu6zteqqJsnOwNKF6Z30WBfQgj2azIlE77O14wpTS4qsSB5TBtsJZ4F
 uznMeb1R1MzhkVhjJQU+UlcirfUYaBDTZdgZuUqiIUA09i/KJSRhefo5hVfz5GNJtvT/i1Iwm
 G+0DX19MlgS2Okv42q70zTXdvmF+3ReBiwt+LNr0Nn3R/s6XqzGn49qiFP9l78CfiecIxm2PW
 S+1N0dFmCEUCsgOGz9aZCQUONHQgn1pRgsWmQVmaZSWCj2Sa6DnIfGbkT4n8d2qbmXkZFg999
 rlzTvJepSgerDCXl5NxHwmZK33C1PVhPDYWHQ8MQ5+c1ypp9qlGPDqZLkYGL1nZSXl0G47IzG
 1HLiwwOhCkJ9RrX7uHTeGTK2XTHEcDVU4T
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.17.10 listed in list.dnswl.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUmTq-0001wk-7d
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
 Andrew Jeffery <andrew@aj.id.au>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Avi Fishman <avifishman70@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 9, 2021 at 6:09 AM Joel Stanley <joel@jms.id.au> wrote:
> On Thu, 8 Apr 2021 at 23:47, Andrew Jeffery <andrew@aj.id.au> wrote:
> > On Thu, 8 Apr 2021, at 21:44, Corey Minyard wrote:
> > > On Thu, Apr 08, 2021 at 10:27:46AM +0930, Andrew Jeffery wrote:
> > > There were some minor concerns that were unanswered, and there really
> > > was no review by others for many of the patches.
> >
> > Right; I was planning to clean up the minor concerns once I'd received
> > some more feedback. I could have done a better job of communicating
> > that :)
>
> I'll merge the first five through the aspeed tree this coming merge
> window. We have acks from the relevant maintainers.
>
> Arnd: would you prefer that this come as it's own pull request, or as
> part of the device tree branch?

When you are unsure, it's almost never wrong to go for a separate
branch, which gives you a chance to have a concise description
of the contents in the tag. This would be particularly helpful if there
are incompatible changes to the DT binding that require a justification.

If you are only adding a few DT nodes to existing files, then merging
these through the regular branch is probably easier.

       Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
