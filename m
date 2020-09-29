Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70763286747
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC4-0008BB-QL; Wed, 07 Oct 2020 18:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ardb@kernel.org>) id 1kNEcQ-00021N-BD
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:20:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BtHPTwzO/d5SyVrSIlx+m1KP6wn7dp6eklEO/z4+KYA=; b=I7mS9KpCG8t63CBsOacmLn+pbp
 ARRKA2QwegHwSJCbs8GUDT2qr9/Rtl5stuIH8Fp2RE6LspmkcWvQEBNZx5jjkV4+Siihyz/FzG1Af
 hpoT3+4nnzI83tLTK3aALISuO14E+wCDDaFdyoRgOMpGlxavjCA4pI+auxVxDrY0f6Hk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BtHPTwzO/d5SyVrSIlx+m1KP6wn7dp6eklEO/z4+KYA=; b=gWHh3kQLfiOl0lfYDdjtE3udR+
 wIvDc8ft34r1V0xLZyFAvse/gDtcgWvoEQcpbiDlX9Gr6/skQpM5wfz+xJ2LTZQU9IJ1or8jbY54o
 TrT4SoLBoFg+E9GvO+H6VCMZW+bIHYj+8a9S3+163ebMIVfjM/9kypJY5ajpnP+Q/QOk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNEcE-00CuMJ-Bp
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:20:30 +0000
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A07BF21D46
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Sep 2020 12:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601382012;
 bh=ov1elNoAqvpAgkFdDCEUFjYQTLHr/ttO0TQvEJAVa9I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jvmD222GUH8GXZXMqLgvR5A2+dOAEZWZqu4PegoCrdYQdzBlMInSen1U/TUqJEq8O
 ceT34IkdoHIcZvgHpI88n6jirXc5UQcpO8Qz6F77lDrlzzwk0iFCge1wnf1OTx3Elx
 zfbRYdhsjG0Yv1fzcUprrD5yQS1C84H7eKuBhHBY=
Received: by mail-oi1-f170.google.com with SMTP id w16so5198816oia.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Sep 2020 05:20:12 -0700 (PDT)
X-Gm-Message-State: AOAM533O8ayryIG6CNY/V9qYLTt7K5gIAwY0FM+DjL0q/sEfx83PXhRK
 dvpDaod4T/p7P6jWl8Yj56zY1fEi1ogMLWggBkU=
X-Google-Smtp-Source: ABdhPJxHjqLRU0igLQr7uKep0t1UD6JefrmIRI4HIWmkx+yCU9/FWYtVU2YD0jwBcbkAVEkIIOoN6IXn5rWs3UBmGUQ=
X-Received: by 2002:a54:4517:: with SMTP id l23mr2509374oil.174.1601382011805; 
 Tue, 29 Sep 2020 05:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
In-Reply-To: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 29 Sep 2020 14:20:00 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGh+CzuXkAnqsoMO2A3T1p=D6uFOV347Ym5+VFn5U1gWg@mail.gmail.com>
Message-ID: <CAMj1kXGh+CzuXkAnqsoMO2A3T1p=D6uFOV347Ym5+VFn5U1gWg@mail.gmail.com>
To: Julia Lawall <Julia.Lawall@inria.fr>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kNEcE-00CuMJ-Bp
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:29 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>, drbd-dev@lists.linbit.com,
 David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Joe Perches <joe@perches.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, 27 Sep 2020 at 21:56, Julia Lawall <Julia.Lawall@inria.fr> wrote:
>
> These patches replace commas by semicolons.


Why?


> This was done using the
> Coccinelle semantic patch (http://coccinelle.lip6.fr/) shown below.
>
> This semantic patch ensures that commas inside for loop headers will not be
> transformed.  It also doesn't touch macro definitions.
>
> Coccinelle ensures that braces are added as needed when a single-statement
> branch turns into a multi-statement one.
>
> This semantic patch has a few false positives, for variable delcarations
> such as:
>
> LIST_HEAD(x), *y;
>
> The semantic patch could be improved to avoid these, but for the moment
> they have been removed manually (2 occurrences).
>
> // <smpl>
> @initialize:ocaml@
> @@
>
> let infunction p =
>   (* avoid macros *)
>   (List.hd p).current_element <> "something_else"
>
> let combined p1 p2 =
>   (List.hd p1).line_end = (List.hd p2).line ||
>   (((List.hd p1).line_end < (List.hd p2).line) &&
>    ((List.hd p1).col < (List.hd p2).col))
>
> @bad@
> statement S;
> declaration d;
> position p;
> @@
>
> S@p
> d
>
> // special cases where newlines are needed (hope for no more than 5)
> @@
> expression e1,e2;
> statement S;
> position p != bad.p;
> position p1;
> position p2 :
>     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> @@
>
> - e1@p1,@S@p e2@p2;
> + e1; e2;
>
> @@
> expression e1,e2;
> statement S;
> position p != bad.p;
> position p1;
> position p2 :
>     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> @@
>
> - e1@p1,@S@p e2@p2;
> + e1; e2;
>
> @@
> expression e1,e2;
> statement S;
> position p != bad.p;
> position p1;
> position p2 :
>     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> @@
>
> - e1@p1,@S@p e2@p2;
> + e1; e2;
>
> @@
> expression e1,e2;
> statement S;
> position p != bad.p;
> position p1;
> position p2 :
>     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> @@
>
> - e1@p1,@S@p e2@p2;
> + e1; e2;
>
> @@
> expression e1,e2;
> statement S;
> position p != bad.p;
> position p1;
> position p2 :
>     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> @@
>
> - e1@p1,@S@p e2@p2;
> + e1; e2;
>
> @r@
> expression e1,e2;
> statement S;
> position p != bad.p;
> @@
>
> e1 ,@S@p e2;
>
> @@
> expression e1,e2;
> position p1;
> position p2 :
>     script:ocaml(p1) { infunction p1 && not(combined p1 p2) };
> statement S;
> position r.p;
> @@
>
> e1@p1
> -,@S@p
> +;
> e2@p2
> ... when any
> // </smpl>
>
> ---
>
>  drivers/acpi/processor_idle.c               |    4 +++-
>  drivers/ata/pata_icside.c                   |   21 +++++++++++++--------
>  drivers/base/regmap/regmap-debugfs.c        |    2 +-
>  drivers/bcma/driver_pci_host.c              |    4 ++--
>  drivers/block/drbd/drbd_receiver.c          |    6 ++++--
>  drivers/char/agp/amd-k7-agp.c               |    2 +-
>  drivers/char/agp/nvidia-agp.c               |    2 +-
>  drivers/char/agp/sworks-agp.c               |    2 +-
>  drivers/char/hw_random/iproc-rng200.c       |    8 ++++----
>  drivers/char/hw_random/mxc-rnga.c           |    6 +++---
>  drivers/char/hw_random/stm32-rng.c          |    8 ++++----
>  drivers/char/ipmi/bt-bmc.c                  |    6 +++---
>  drivers/clk/meson/meson-aoclk.c             |    2 +-
>  drivers/clk/mvebu/ap-cpu-clk.c              |    2 +-
>  drivers/clk/uniphier/clk-uniphier-cpugear.c |    2 +-
>  drivers/clk/uniphier/clk-uniphier-mux.c     |    2 +-
>  drivers/clocksource/mps2-timer.c            |    6 +++---
>  drivers/clocksource/timer-armada-370-xp.c   |    8 ++++----
>  drivers/counter/ti-eqep.c                   |    2 +-
>  drivers/crypto/amcc/crypto4xx_alg.c         |    2 +-
>  drivers/crypto/atmel-tdes.c                 |    2 +-
>  drivers/crypto/hifn_795x.c                  |    4 ++--
>  drivers/crypto/talitos.c                    |    8 ++++----
>  23 files changed, 60 insertions(+), 51 deletions(-)
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
