Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFB32825E6
	for <lists+openipmi-developer@lfdr.de>; Sat,  3 Oct 2020 20:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kOmT6-0000bK-I8; Sat, 03 Oct 2020 18:41:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joe@perches.com>) id 1kOmT4-0000b1-7z
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 18:41:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wIbr3lajCQTEQX+lS+qa+AMFF1ievL5T4OHQDKFUjjQ=; b=hFbuMVaBM6oPKvBn4cJcbfqnQ7
 Tvvg0D7eLLVtBM7L2L7oR6bnJczt2hYoTznedhEgAGWlw6MVgv3HhibJ+CtKa5p/KYD3Tl1DQghkW
 VB+ehjRfwCm/HFAXt94KufKz6/pkHC9daIV7tz6qq0MCkSAw6UQ/ZxUqGvywF/DUyTlA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wIbr3lajCQTEQX+lS+qa+AMFF1ievL5T4OHQDKFUjjQ=; b=YNRF04BFL4rLwiPDYA3vLe3l3p
 Bu+498qBL5rljp/krd+q+OYOBjs8vlU87HfG4Z2r/81NqEVwNv5dI9TQnHRvkQ/Ubo+iEOmAv9sPB
 z6B9U490mn4QwAi4x0I6LaAFrnQhLWdTbKS39GlK8UgceZW9UmVf3XnGG3ONG8+CQ7E0=;
Received: from smtprelay0023.hostedemail.com ([216.40.44.23]
 helo=smtprelay.hostedemail.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kOmSw-001KUA-Rw
 for openipmi-developer@lists.sourceforge.net; Sat, 03 Oct 2020 18:41:14 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 9054F18029210;
 Sat,  3 Oct 2020 18:40:53 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:966:967:968:973:982:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1711:1712:1730:1747:1777:1792:1801:2196:2199:2393:2525:2553:2567:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3355:3770:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4117:4250:4321:4385:4605:5007:6742:6743:7903:8829:9025:9121:9388:9391:10004:10848:11026:11232:11233:11473:11658:11914:12043:12262:12295:12297:12438:12555:12663:12679:12740:12760:12895:12986:13161:13229:13439:13845:14093:14096:14097:14181:14659:14721:21063:21080:21365:21433:21451:21611:21627:21740:21749:21811:21819:21939:30054:30070:30083:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: stop55_5311f74271af
X-Filterd-Recvd-Size: 6242
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Sat,  3 Oct 2020 18:40:49 +0000 (UTC)
Message-ID: <f44d19ad596f261c0287c9ab18c45161003efb43.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mark Brown <broonie@kernel.org>, tools@linux.kernel.org, Konstantin
 Ryabitsev <konstantin@linuxfoundation.org>
Date: Sat, 03 Oct 2020 11:40:48 -0700
In-Reply-To: <20201001110150.GA6715@sirena.org.uk>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <db26d49401dc0bd6b9013a603a155f9827f404a4.camel@perches.com>
 <20201001110150.GA6715@sirena.org.uk>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lip6.fr]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.40.44.23 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.23 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kOmSw-001KUA-Rw
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-acpi@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Valdis =?UTF-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-crypto@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

(Adding tools and Konstantin Ryabitsev)

There seems to be some mismatch between b4's use of the
cover letter to a patch series and what maintainers that
apply a subset of the patches in the patch series.

The merge description shows the entire patch series as
applied, but the actual merge is only a subset of the
series.

Can this be improved in b4?

For example, regarding:

https://lore.kernel.org/linux-amlogic/160132172369.55460.9237357219623604216.b4-ty@kernel.org/
https://lore.kernel.org/lkml/b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com/#t

On Thu, 2020-10-01 at 12:01 +0100, Mark Brown wrote:
> On Wed, Sep 30, 2020 at 12:33:39PM -0700, Joe Perches wrote:
> > On Tue, 2020-09-29 at 12:37 +0100, Mark Brown wrote:
> > > Feel free to submit patches to b4.
> > Have you tried the existing option to send
> > thank you's on a specific ranges of patches?
> 
> I am relying on b4 to identify which patches that I've downloaded are in
> the pushed branches.  Given that it explicitly lists the patches that
> are applied it appears to be doing an OK job here.

I'm not so sure about that.

The commit merge description in -next shows 23 files
modified but the commit range shown in the merge shows
only a single patch applied:

From next-20201002:

(I've removed some of the commit description below)

$ git log --stat -1 2defc3fa18a68963a330187f5386968e50832d06
commit 2defc3fa18a68963a330187f5386968e50832d06
Merge: eb45df24fe82 7f4a122d0b50
Author: Mark Brown <broonie@kernel.org>
Date:   Mon Sep 28 18:28:48 2020 +0100

    Merge series "use semicolons rather than commas to separate statements" from Julia Lawall <Julia.Lawall@inria.fr>:
    
    These patches replace commas by semicolons.  This was done using the
    Coccinelle semantic patch (http://coccinelle.lip6.fr/) shown below.

[some of the long description elided]

        ---
    
     drivers/acpi/processor_idle.c               |    4 +++-
     drivers/ata/pata_icside.c                   |   21 +++++++++++++--------
     drivers/base/regmap/regmap-debugfs.c        |    2 +-
     drivers/bcma/driver_pci_host.c              |    4 ++--
     drivers/block/drbd/drbd_receiver.c          |    6 ++++--
     drivers/char/agp/amd-k7-agp.c               |    2 +-
     drivers/char/agp/nvidia-agp.c               |    2 +-
     drivers/char/agp/sworks-agp.c               |    2 +-
     drivers/char/hw_random/iproc-rng200.c       |    8 ++++----
     drivers/char/hw_random/mxc-rnga.c           |    6 +++---
     drivers/char/hw_random/stm32-rng.c          |    8 ++++----
     drivers/char/ipmi/bt-bmc.c                  |    6 +++---
     drivers/clk/meson/meson-aoclk.c             |    2 +-
     drivers/clk/mvebu/ap-cpu-clk.c              |    2 +-
     drivers/clk/uniphier/clk-uniphier-cpugear.c |    2 +-
     drivers/clk/uniphier/clk-uniphier-mux.c     |    2 +-
     drivers/clocksource/mps2-timer.c            |    6 +++---
     drivers/clocksource/timer-armada-370-xp.c   |    8 ++++----
     drivers/counter/ti-eqep.c                   |    2 +-
     drivers/crypto/amcc/crypto4xx_alg.c         |    2 +-
     drivers/crypto/atmel-tdes.c                 |    2 +-
     drivers/crypto/hifn_795x.c                  |    4 ++--
     drivers/crypto/talitos.c                    |    8 ++++----
     23 files changed, 60 insertions(+), 51 deletions(-)

But the commit range of the merge shows only the single commit:

$ git log --stat eb45df24fe82..7f4a122d0b50
commit 7f4a122d0b50b40c64d24a5cf7aafe26dd9487ee
Author: Julia Lawall <Julia.Lawall@inria.fr>
Date:   Sun Sep 27 21:12:24 2020 +0200

    regmap: debugfs: use semicolons rather than commas to separate statements
    
    Replace commas with semicolons.  What is done is essentially described by
    the following Coccinelle semantic patch (http://coccinelle.lip6.fr/):
    
    // <smpl>
    @@ expression e1,e2; @@
    e1
    -,
    +;
    e2
    ... when any
    // </smpl>
    
    Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>
    Link: https://lore.kernel.org/r/1601233948-11629-15-git-send-email-Julia.La>
    Signed-off-by: Mark Brown <broonie@kernel.org>

 drivers/base/regmap/regmap-debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
