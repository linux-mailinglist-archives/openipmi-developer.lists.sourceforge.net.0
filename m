Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 319A8211F7D
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Jul 2020 11:11:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jqvG0-0006j0-4N; Thu, 02 Jul 2020 09:11:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1jqvFy-0006is-7O
 for openipmi-developer@lists.sourceforge.net; Thu, 02 Jul 2020 09:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OjwToD6Zt1xJAGcOLclLb2voPRUlxtvGtl/z3Lalw+Y=; b=a9z9GCxbRa9CsgNYy1onLjI3l4
 lB5Q7qDpJesstWzAI/AxaOq4oUJLGV5llihoTDXey2KwmIWsgdSa9MtsCjMgZhzsUdDU6328I+uUV
 AIFtq4c69pNddBGtdpTNKwi2j2VeYOr6eZzJuOTxb0po5IocnMSdf1rhPsolCwq9J6gs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OjwToD6Zt1xJAGcOLclLb2voPRUlxtvGtl/z3Lalw+Y=; b=BzfPdGP3BnoszK7TM5FFjV8RTL
 Yfz663/L037LIc3RZoRhxLJPGzBaAv77EMZCBW0FqCRuk/8WGW0Slvs5KeK56tjuFrZZNTucbG7Hn
 DjkIryx7u2cp6kpFhsfEoX3NLB9SvH/zp0bpmvNi7kg0hUQsTKW8eUlDTe3u+eLYdpEQ=;
Received: from mout.kundenserver.de ([212.227.126.131])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jqvFu-007scU-2m
 for openipmi-developer@lists.sourceforge.net; Thu, 02 Jul 2020 09:11:46 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MCXhr-1jiMSa2LvH-009ieN for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Jul 2020 10:58:31 +0200
Received: by mail-qt1-f171.google.com with SMTP id d27so20647155qtg.4
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Jul 2020 01:58:31 -0700 (PDT)
X-Gm-Message-State: AOAM532j/diwbMuKxzwRZEULmXvvwDHBaSq68rCzl6UhN9P75a228rbS
 Gg8YJgvzYumuMMHVhRAnUIk4sxuA4CAQvT/TM9w=
X-Google-Smtp-Source: ABdhPJwmVhcWIjW9naHQ+EtJIo8qem6eHT7ix06ZnfalWEEgAsXZpi1xlLnmHrPnhvrb+Fee92Gc5bSzX/y8gl2q00Y=
X-Received: by 2002:ac8:33d7:: with SMTP id d23mr30244902qtb.204.1593680310449; 
 Thu, 02 Jul 2020 01:58:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200701200950.30314-1-rikard.falkeborn@gmail.com>
In-Reply-To: <20200701200950.30314-1-rikard.falkeborn@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Jul 2020 10:58:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0iVY54EMWYDLdn3QoqmO0CkZMJk-P2G19epm8FCTX8bg@mail.gmail.com>
Message-ID: <CAK8P3a0iVY54EMWYDLdn3QoqmO0CkZMJk-P2G19epm8FCTX8bg@mail.gmail.com>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
X-Provags-ID: V03:K1:/lMFWPnsBPYp+f8uIxbTcmQO42AjjbHBeLEYpquvg0J4GHCvTJ9
 BHV1X55xNXACj/9uMV1wFdX2uIVEgMk3vkkwnd35Psyq4cflkVLyyCtAJFOzSvUSWY+EiHo
 8y08NX2ip9Y2P/TPgwPmCIT4pm/IXXJW892eV5BsMUgHNWpkRYHEfZgCCLsmZuQnbEQvy80
 aEf3Y29v2P6v0Ve50KV+w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dP79zpelfDE=:UhIGPUzWWIsWsG8LRr1S/J
 izoy2vEumEH/OQ7ZT++zPQbfrruJWmuHFoQtRwaq8FvPqQs2BXD+j9I5rLZNDM/CSVotStbUq
 cuV2kCoPnnVN172B4ugpqpWAcUvx3jCk4JPR2npd3z3VfbvbHYQBvesJgZRvSPN/ldqXPKMn9
 XePj5PQELcyVPW0+HVBbxWAmLljPhFzbDlsuBztn0Zr1sVyOUuWwLWWx/KRkJcad8tYq5/e1/
 yjVi4Fd+qda/NY6JaawMKFIeAImL+8MZxQapZtDk2oqi/dv0XxsjXyQrU+esbiZSJXm2dcuSo
 DwYz/BdgKrqsncSv9QtZEfARRukmQ9BMyu2lBLosUI5qRi+sLRWthFkKD2Zj0t0cUdRPD8cxX
 6C1NGYwRPkjioMLgK9OGzFK9r54j3sX4yQFHrdUNJnqCEyPI/RIBAW63uZh1ZLSnpKtdWKlDt
 GGZTFX3OgeQ3/bJkrmEuTr0O3H6LqmmB2PSzRjZpChNJm6gJdjS2gDLEbPstIFLkVIm30t1gs
 nrXCbBATd387hGh0JGKyOlbktrCMVYMtB9hXYczc5JbwqLmFpnrnKfb1BUA/+UJ2XSGDcd9Xf
 gVsqAEqAFWTrPULkf9UJRb2ty5NVgMIFUgFNDUvZsgsa/Es17q0RTOY6hoHsbVy2yK4VdEtes
 o8EJnE1rx9XCzDBJJS9NCBcpnE5D1laaVxpvx1fBcvbi7fsPZqsAQt9Tnn1SEZRIbVAkGwWCZ
 8gi5ZoKIZavlJ5QkzViA7zBAsOGtISj+O3JGUAesXSoEhYqxgPd0c6ZHslbJFVxzoU6OEGhpN
 mXz6Vn3P0fC6n80Z9DnvspaPl6KX8fh/wICUEbp/yru7NskRww=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.131 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jqvFu-007scU-2m
Subject: Re: [Openipmi-developer] [PATCH 0/5] drivers/char: Constify static
 variables
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
Cc: Corey Minyard <minyard@acm.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Amit Shah <amit@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, virtualization@lists.linux-foundation.org,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Matt Mackall <mpm@selenic.com>,
 openipmi-developer@lists.sourceforge.net,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jul 1, 2020 at 11:48 PM Rikard Falkeborn
<rikard.falkeborn@gmail.com> wrote:
>
> Constify some static variables (mostly structs) that are not modified.
>
> Rikard Falkeborn (5):
>   hwrng: bcm2835 - Constify bcm2835_rng_devtype[]
>   hwrng: nomadik - Constify nmk_rng_ids[]
>   hwrng: virtio - Constify id_table[]
>   ipmi: watchdog: Constify ident
>   virtio_console: Constify some static variables

I just realized it was a series rather than a single patch I received. They
all look correct, so

Acked-by: Arnd Bergmann <arnd@arndb.de>

but if you do more of those, I would suggest not including the 'size'
output for the small variables as that is not the main point here.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
