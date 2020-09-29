Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5F4286749
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC4-0008BW-VB; Wed, 07 Oct 2020 18:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <julia.lawall@inria.fr>) id 1kNEsb-0002ok-Ut
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gqfAcs/xL4Hbo5/6BvBKUp1/s7KW3A6jYHcSAWmoXeE=; b=ZrGlEL8DMH604TdP5SV9t77vPB
 CHVFj/k2BBkRI4rrmj38gO9M6DPIA4yIrMgMGRxmVXUoY2Fj5pNS577NkxG9DR1+D+CeGwbFprpAz
 Ak8bt3/dUZqvmuZiLapH8qzjl2ERqozLObcbbjEaYnL22V+59dPaxHMwPgnzyI7QQNCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gqfAcs/xL4Hbo5/6BvBKUp1/s7KW3A6jYHcSAWmoXeE=; b=UB98hL0j0czLSk0FYRb5cBWrbz
 UHAVpbzNcDzakA3qyYSMJ21gCIvwNJRx4MhU0K3GfRC+sqS44+GZCtVKEO6eivR3e8Kw6w5On3rMo
 2+Xlw4n74XAGsOTXQ26XWJSo/FUSEGFSp8V4lvwNWp5opGLwt1s/Darjo7jwfG7y8xZI=;
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNEsW-00A48W-Kf
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:37:13 +0000
X-IronPort-AV: E=Sophos;i="5.77,318,1596492000"; d="scan'208";a="360346486"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:36:52 +0200
Date: Tue, 29 Sep 2020 14:36:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Ard Biesheuvel <ardb@kernel.org>
In-Reply-To: <CAMj1kXGh+CzuXkAnqsoMO2A3T1p=D6uFOV347Ym5+VFn5U1gWg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2009291428020.2808@hadrien>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <CAMj1kXGh+CzuXkAnqsoMO2A3T1p=D6uFOV347Ym5+VFn5U1gWg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lip6.fr]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.134.164.104 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kNEsW-00A48W-Kf
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



On Tue, 29 Sep 2020, Ard Biesheuvel wrote:

> On Sun, 27 Sep 2020 at 21:56, Julia Lawall <Julia.Lawall@inria.fr> wrote:
> >
> > These patches replace commas by semicolons.
>
>
> Why?

Among the complete 5000 lines of changes there is one probable bug where
an if branch ends with a comma and thus pulls the subsequent statement
under the if branch, in contradiction to what is indicated by the
indentation.

The use of comma often appears to be random, with a sequence of similar
statements where some have commas and some don't.

From a self-interested point of view, commas are not good for Coccinelle,
because multiple statements are put into one.  Any problems involving them
are thus likely to be overlooked unless one thinks of looking for them
explicitly.  As an example, Christophe Jaillet noticed that one sequence
of comma assignments would be better written using swap.  If one looked
for opportunities for using swap in the most obvious way, one wouldn't
find it.

julia


>
>
> > This was done using the
> > Coccinelle semantic patch (http://coccinelle.lip6.fr/) shown below.
> >
> > This semantic patch ensures that commas inside for loop headers will not be
> > transformed.  It also doesn't touch macro definitions.
> >
> > Coccinelle ensures that braces are added as needed when a single-statement
> > branch turns into a multi-statement one.
> >
> > This semantic patch has a few false positives, for variable delcarations
> > such as:
> >
> > LIST_HEAD(x), *y;
> >
> > The semantic patch could be improved to avoid these, but for the moment
> > they have been removed manually (2 occurrences).
> >
> > // <smpl>
> > @initialize:ocaml@
> > @@
> >
> > let infunction p =
> >   (* avoid macros *)
> >   (List.hd p).current_element <> "something_else"
> >
> > let combined p1 p2 =
> >   (List.hd p1).line_end = (List.hd p2).line ||
> >   (((List.hd p1).line_end < (List.hd p2).line) &&
> >    ((List.hd p1).col < (List.hd p2).col))
> >
> > @bad@
> > statement S;
> > declaration d;
> > position p;
> > @@
> >
> > S@p
> > d
> >
> > // special cases where newlines are needed (hope for no more than 5)
> > @@
> > expression e1,e2;
> > statement S;
> > position p != bad.p;
> > position p1;
> > position p2 :
> >     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> > @@
> >
> > - e1@p1,@S@p e2@p2;
> > + e1; e2;
> >
> > @@
> > expression e1,e2;
> > statement S;
> > position p != bad.p;
> > position p1;
> > position p2 :
> >     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> > @@
> >
> > - e1@p1,@S@p e2@p2;
> > + e1; e2;
> >
> > @@
> > expression e1,e2;
> > statement S;
> > position p != bad.p;
> > position p1;
> > position p2 :
> >     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> > @@
> >
> > - e1@p1,@S@p e2@p2;
> > + e1; e2;
> >
> > @@
> > expression e1,e2;
> > statement S;
> > position p != bad.p;
> > position p1;
> > position p2 :
> >     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> > @@
> >
> > - e1@p1,@S@p e2@p2;
> > + e1; e2;
> >
> > @@
> > expression e1,e2;
> > statement S;
> > position p != bad.p;
> > position p1;
> > position p2 :
> >     script:ocaml(p1) { infunction p1 && combined p1 p2 };
> > @@
> >
> > - e1@p1,@S@p e2@p2;
> > + e1; e2;
> >
> > @r@
> > expression e1,e2;
> > statement S;
> > position p != bad.p;
> > @@
> >
> > e1 ,@S@p e2;
> >
> > @@
> > expression e1,e2;
> > position p1;
> > position p2 :
> >     script:ocaml(p1) { infunction p1 && not(combined p1 p2) };
> > statement S;
> > position r.p;
> > @@
> >
> > e1@p1
> > -,@S@p
> > +;
> > e2@p2
> > ... when any
> > // </smpl>
> >
> > ---
> >
> >  drivers/acpi/processor_idle.c               |    4 +++-
> >  drivers/ata/pata_icside.c                   |   21 +++++++++++++--------
> >  drivers/base/regmap/regmap-debugfs.c        |    2 +-
> >  drivers/bcma/driver_pci_host.c              |    4 ++--
> >  drivers/block/drbd/drbd_receiver.c          |    6 ++++--
> >  drivers/char/agp/amd-k7-agp.c               |    2 +-
> >  drivers/char/agp/nvidia-agp.c               |    2 +-
> >  drivers/char/agp/sworks-agp.c               |    2 +-
> >  drivers/char/hw_random/iproc-rng200.c       |    8 ++++----
> >  drivers/char/hw_random/mxc-rnga.c           |    6 +++---
> >  drivers/char/hw_random/stm32-rng.c          |    8 ++++----
> >  drivers/char/ipmi/bt-bmc.c                  |    6 +++---
> >  drivers/clk/meson/meson-aoclk.c             |    2 +-
> >  drivers/clk/mvebu/ap-cpu-clk.c              |    2 +-
> >  drivers/clk/uniphier/clk-uniphier-cpugear.c |    2 +-
> >  drivers/clk/uniphier/clk-uniphier-mux.c     |    2 +-
> >  drivers/clocksource/mps2-timer.c            |    6 +++---
> >  drivers/clocksource/timer-armada-370-xp.c   |    8 ++++----
> >  drivers/counter/ti-eqep.c                   |    2 +-
> >  drivers/crypto/amcc/crypto4xx_alg.c         |    2 +-
> >  drivers/crypto/atmel-tdes.c                 |    2 +-
> >  drivers/crypto/hifn_795x.c                  |    4 ++--
> >  drivers/crypto/talitos.c                    |    8 ++++----
> >  23 files changed, 60 insertions(+), 51 deletions(-)
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
