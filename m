Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9619749BDDA
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Jan 2022 22:26:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nCTL1-0003WH-CD; Tue, 25 Jan 2022 21:26:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <matthias.schiffer@ew.tq-group.com>)
 id 1nCLcN-0006kj-6b
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jan 2022 13:12:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qmHH9G8TVCwWdo3uTby79rF+j0/3SailZLcBZpByLtg=; b=i8PyRB0CRSQLQVZA4L6GLpRZNH
 RRqj7k0HVIXRGtc0qRdzjh2Kyp7WE0oxponKpokJqXLZH8xztyrU/ApQi8s4cpfgV465CvUCMpTtR
 4QKvUlfU0+IASnnHCKXriClDX3YeP15eyByXKWWCUqgV++OpOnqpUv0LlXdYRmquAhVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qmHH9G8TVCwWdo3uTby79rF+j0/3SailZLcBZpByLtg=; b=EmD+Yg5pLU/mJChM1vILqydzym
 SLzE3igsR2/CqsLDDmudIaLAJMetCVWYZFsGxvSSOq0MuWwaeW8RTQwIAbtt/A4+dZTptgntx2Fo7
 coWudrACcrcmrwdmbZPCfmFoipFn+4ro+0+55rw2aQXCdSvGAppwYBZwyQ7r8Q6XGCEY=;
Received: from mx1.tq-group.com ([93.104.207.81])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nCLcG-0008OB-SW
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jan 2022 13:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1643116328; x=1674652328;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qmHH9G8TVCwWdo3uTby79rF+j0/3SailZLcBZpByLtg=;
 b=qQRp7EpxNBvFDt4fNPuVegPTTBYRQB3bl6KFa4iDFevnM2fj0jPvAk/t
 cigCoKRoRj+I0axI7M/bbp6izhS3X5hi6hliOMll/d/MJeumGdfjijSBY
 4T2kahSdMjjTsyC9EBv+9TItWI3o/Ynr0fuLVt3+r3i2aI7gLQ5HaWFip
 Yu4Ic/ERkAaiLyTDiLtrPwHFSfo8mDPGMTAkEwXHqaKd27QP/OEpBiIk+
 bqR4scGLq9gfhMZ/RU+6RmxDnIDMFFcyxWk8dkCiXgIYkSREkeLYGdN+O
 lFfJDHjNJL82u8f6lov29jYd0sRDXQdBgdURtMwgJvB0JpmTciHSoHKZ/ Q==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; d="scan'208";a="21697222"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 25 Jan 2022 13:56:09 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Tue, 25 Jan 2022 13:56:09 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Tue, 25 Jan 2022 13:56:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1643115369; x=1674651369;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qmHH9G8TVCwWdo3uTby79rF+j0/3SailZLcBZpByLtg=;
 b=qzYLcPSMgGM/jDgybQQC0hKCR3aRrdymevnaT4ydaFVxIjMrnrBcV4T6
 C5NEX/Uz1J9BcAy/7VV5kAdwi/kxjCsKhTL988mrL1Mf+41YL82U19pTm
 UIK7b/78zU00Wx1VC2U+5oXhxLzKUsxejHCf55h8+VcSSbzQy6uRt/Qgn
 jvT61jUGnXXTaU/jyQn1pkY79EM0wk4g7hgaDex//2xlHHq2lIMsC8h0H
 2HrYsEYbYjeLAYBA23nQl139MTwAqHxltuCAUqBGA/+5++FvzqsMq6v5y
 4URwO2uqbIVjwWBSkS4vRvG/pq3OGi9pHvaUWYVGDg0PfEAcXZz0W9Ise w==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; d="scan'208";a="21697219"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 25 Jan 2022 13:56:08 +0100
Received: from schifferm-ubuntu (SCHIFFERM-M2.tq-net.de [10.121.201.138])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 966B4280065;
 Tue, 25 Jan 2022 13:56:07 +0100 (CET)
Message-ID: <33e55c4c0a637b23d76db5d33872378ad04121bd.camel@ew.tq-group.com>
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Sergey Shtylyov
 <s.shtylyov@omp.ru>
Date: Tue, 25 Jan 2022 13:56:05 +0100
In-Reply-To: <CAMuHMdXouECKa43OwUgQ6dA+gNeOqEZHZgOmQzqknzYiA924YA@mail.gmail.com>
References: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeF05vBOzkN+xYCq@smile.fi.intel.com>
 <20220115154539.j3tsz5ioqexq2yuu@pengutronix.de>
 <YehdsUPiOTwgZywq@smile.fi.intel.com>
 <20220120075718.5qtrpc543kkykaow@pengutronix.de>
 <Ye6/NgfxsZnpXE09@smile.fi.intel.com>
 <15796e57-f7d4-9c66-3b53-0b026eaf31d8@omp.ru>
 <CAMuHMdXouECKa43OwUgQ6dA+gNeOqEZHZgOmQzqknzYiA924YA@mail.gmail.com>
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2022-01-25 at 09:25 +0100, Geert Uytterhoeven wrote:
 > Hi Sergey, > > On Mon, Jan 24,
 2022 at 10:02 PM Sergey Shtylyov <s.shtylyov@omp.ru>
 > wrote: > > On 1/24/22 6:01 PM, Andy Shevchenko wrot [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nCLcG-0008OB-SW
X-Mailman-Approved-At: Tue, 25 Jan 2022 21:26:48 +0000
Subject: Re: [Openipmi-developer] [PATCH] driver core: platform: Rename
 platform_get_irq_optional() to platform_get_irq_silent()
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, KVM list <kvm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 linux-spi <linux-spi@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>, "open
 list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Takashi Iwai <tiwai@suse.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 Niklas =?ISO-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2022-01-25 at 09:25 +0100, Geert Uytterhoeven wrote:
> Hi Sergey,
> 
> On Mon, Jan 24, 2022 at 10:02 PM Sergey Shtylyov <s.shtylyov@omp.ru>
> wrote:
> > On 1/24/22 6:01 PM, Andy Shevchenko wrote:
> > > > > > > > > It'd certainly be good to name anything that doesn't
> > > > > > > > > correspond to one
> > > > > > > > > of the existing semantics for the API (!) something
> > > > > > > > > different rather
> > > > > > > > > than adding yet another potentially overloaded
> > > > > > > > > meaning.
> > > > > > > > 
> > > > > > > > It seems we're (at least) three who agree about this.
> > > > > > > > Here is a patch
> > > > > > > > fixing the name.
> > > > > > > 
> > > > > > > And similar number of people are on the other side.
> > > > > > 
> > > > > > If someone already opposed to the renaming (and not only
> > > > > > the name) I
> > > > > > must have missed that.
> > > > > > 
> > > > > > So you think it's a good idea to keep the name
> > > > > > platform_get_irq_optional() despite the "not found" value
> > > > > > returned by it
> > > > > > isn't usable as if it were a normal irq number?
> > > > > 
> > > > > I meant that on the other side people who are in favour of
> > > > > Sergey's patch.
> > > > > Since that I commented already that I opposed the renaming
> > > > > being a standalone
> > > > > change.
> > > > > 
> > > > > Do you agree that we have several issues with
> > > > > platform_get_irq*() APIs?
> > [...]
> > > > > 2. The vIRQ0 handling: a) WARN() followed by b) returned
> > > > > value 0
> > > > 
> > > > I'm happy with the vIRQ0 handling. Today platform_get_irq() and
> > > > it's
> > > > silent variant returns either a valid and usuable irq number or
> > > > a
> > > > negative error value. That's totally fine.
> > > 
> > > It might return 0.
> > > Actually it seems that the WARN() can only be issued in two
> > > cases:
> > > - SPARC with vIRQ0 in one of the array member
> > > - fallback to ACPI for GPIO IRQ resource with index 0
> > 
> >    You have probably missed the recent discovery that
> > arch/sh/boards/board-aps4*.c
> > causes IRQ0 to be passed as a direct IRQ resource?
> 
> So far no one reported seeing the big fat warning ;-)

FWIW, we had a similar issue with an IRQ resource passed from the
tqmx86 MFD driver do the GPIO driver, which we noticed due to this
warning, and which was fixed
in a946506c48f3bd09363c9d2b0a178e55733bcbb6
and 9b87f43537acfa24b95c236beba0f45901356eb2.
I believe these changes are what promted this whole discussion and led
to my "Reported-by" on the patch?

It is not entirely clear to me when IRQ 0 is valid and when it isn't,
but the warning seems useful to me. Maybe it would make more sense to
warn when such an IRQ resource is registered for a platform device, and
not when it is looked up?

My opinion is that it would be very confusing if there are any places
in the kernel (on some platforms) where IRQ 0 is valid, but for
platform_get_irq() it would suddenly mean "not found". Keeping a
negative return value seems preferable to me for this reason.

(An alternative, more involved idea would be to add 1 to all IRQ
"cookies", so IRQ 0 would return 1, leaving 0 as a special value. I
have absolutely no idea how big the API surface is that would need
changes, and it is likely not worth the effort at all.)


> 
> > > The bottom line here is the SPARC case. Anybody familiar with the
> > > platform
> > > can shed a light on this. If there is no such case, we may remove
> > > warning
> > > along with ret = 0 case from platfrom_get_irq().
> > 
> >    I'm afraid you're too fast here... :-)
> >    We'll have a really hard time if we continue to allow IRQ0 to be
> > returned by
> > platform_get_irq() -- we'll have oto fileter it out in the callers
> > then...
> 
> So far no one reported seeing the big fat warning?
> 
> > > > > 3. The specific cookie for "IRQ not found, while no error
> > > > > happened" case
> > > > 
> > > > Not sure what you mean here. I have no problem that a situation
> > > > I can
> > > > cope with is called an error for the query function. I just do
> > > > error
> > > > handling and continue happily. So the part "while no error
> > > > happened" is
> > > > irrelevant to me.
> > > 
> > > I meant that instead of using special error code, 0 is very much
> > > good for
> > > the cases when IRQ is not found. It allows to distinguish -ENXIO
> > > from the
> > > low layer from -ENXIO with this magic meaning.
> > 
> >    I don't see how -ENXIO can trickle from the lower layers,
> > frankly...
> 
> It might one day, leading to very hard to track bugs.

As gregkh noted, changing the return value without also making the
compile fail will be a huge PITA whenever driver patches are back- or
forward-ported, as it would require subtle changes in error paths,
which can easily slip through unnoticed, in particular with half-
automated stable backports.

Even if another return value like -ENODEV might be better aligned with
...regulator_get_optional() and similar functions, or we even find a
way to make 0 usable for this, none of the proposed changes strike me
as big enough a win to outweigh the churn caused by making such a
change at all.

Kind regards,
Matthias



> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- 
> geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a
> hacker. But
> when I'm talking to journalists I just say "programmer" or something
> like that.
>                                 -- Linus Torvalds



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
