Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C4E4982F3
	for <lists+openipmi-developer@lfdr.de>; Mon, 24 Jan 2022 16:03:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nC0sV-0003er-LH; Mon, 24 Jan 2022 15:03:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nC0ro-0000Os-KC
 for openipmi-developer@lists.sourceforge.net; Mon, 24 Jan 2022 15:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tBMJlW0JBkSH0f02NNujTpEoUSOQSWP7BvnnHPfF0Eo=; b=liXYhJipdgy7+ck0Zw6+85Rjox
 LK7u67zTXU1eglxXtec8SI0/FHj72R2E6v1M8GNoxj/sfa0EWXIjdOCZpNUFsTSoBRRi+Y9yKk5ku
 8lUmGeqBEyXNkGF7gaA4xFw1jvSF3HjbKlS9Qi5cNp+FfRy0Zl+n2Wa3E+f84+KJrB4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tBMJlW0JBkSH0f02NNujTpEoUSOQSWP7BvnnHPfF0Eo=; b=L4c/pHsZaJJbTt3dqpQU+9yu5v
 jPaw5DEaJ7DkbP18QZqYjxzZJh/29EjJAPCwHuFcOQw8SA9ci6QT+w0Zfd4+VnpwU8JomrESKqMFG
 7TFwt512EnniQPd/mgUgUxpMXF74dk7Ei+KlKgH+VHUlPxeW+7IpZXTpvqMDXCjO/WYg=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nC0rj-0006dq-9p
 for openipmi-developer@lists.sourceforge.net; Mon, 24 Jan 2022 15:02:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643036563; x=1674572563;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=12MT7URXnDq/Fp4XFhkmyf3ldBVGzHv0vwmewAlkDXU=;
 b=Zi3kzTgsu0RiuhQUUsTzHSMX9mFco7ZEEmpZxzNawfHv3xTnzdbj1A2C
 E9Hiiw+wMA0wDPrtYHTKDds4vcqDLfzf5at8JJInfFYeEQf8qU460igcG
 KmljmcNCzzDHgNlr9CMzUOSff3LeL27uozw7GhGWlTwShI2EZJMTXwktp
 p0/szkHEvoM+vrRJKY13uq6L63waWHFd7VJDZcaXUgZ181ag5YEsH0A3m
 GLgh5cONw4aPE9HzxPhFdSJsZxZwEokMp1OIxbn5Jy7ykidSc+Po4SNOb
 nAgaNIfy03b/Onjli9wHpxZYz+NTX3zo6/JY+vvM1D1yDFWaE897GsQNL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="332416598"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="332416598"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 07:02:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="519972062"
Received: from smile.fi.intel.com ([10.237.72.61])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 07:02:20 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nC0qE-00Dvkq-Jt; Mon, 24 Jan 2022 17:01:10 +0200
Date: Mon, 24 Jan 2022 17:01:10 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <Ye6/NgfxsZnpXE09@smile.fi.intel.com>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220120075718.5qtrpc543kkykaow@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jan 20, 2022 at 08:57:18AM +0100, Uwe Kleine-König
    wrote: > On Wed, Jan 19, 2022 at 08:51:29PM +0200, Andy Shevchenko wrote:
    > > On Sat, Jan 15, 2022 at 04:45:39PM +0100, Uwe Kleine-König wrot [...]
    
 
 Content analysis details:   (-3.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [192.55.52.43 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nC0rj-0006dq-9p
X-Mailman-Approved-At: Mon, 24 Jan 2022 15:03:30 +0000
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Benson Leung <bleung@chromium.org>,
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
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Sebastian Reichel <sre@kernel.org>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jan 20, 2022 at 08:57:18AM +0100, Uwe Kleine-K=F6nig wrote:
> On Wed, Jan 19, 2022 at 08:51:29PM +0200, Andy Shevchenko wrote:
> > On Sat, Jan 15, 2022 at 04:45:39PM +0100, Uwe Kleine-K=F6nig wrote:
> > > On Fri, Jan 14, 2022 at 03:04:38PM +0200, Andy Shevchenko wrote:
> > > > On Thu, Jan 13, 2022 at 08:43:58PM +0100, Uwe Kleine-K=F6nig wrote:
> > > > > > It'd certainly be good to name anything that doesn't correspond=
 to one
> > > > > > of the existing semantics for the API (!) something different r=
ather
> > > > > > than adding yet another potentially overloaded meaning.
> > > > > =

> > > > > It seems we're (at least) three who agree about this. Here is a p=
atch
> > > > > fixing the name.
> > > > =

> > > > And similar number of people are on the other side.
> > > =

> > > If someone already opposed to the renaming (and not only the name) I
> > > must have missed that.
> > > =

> > > So you think it's a good idea to keep the name
> > > platform_get_irq_optional() despite the "not found" value returned by=
 it
> > > isn't usable as if it were a normal irq number?
> > =

> > I meant that on the other side people who are in favour of Sergey's pat=
ch.
> > Since that I commented already that I opposed the renaming being a stan=
dalone
> > change.
> > =

> > Do you agree that we have several issues with platform_get_irq*() APIs?
> > =

> > 1. The unfortunate naming
> =

> unfortunate naming for the currently implemented semantic, yes.

Yes.

> > 2. The vIRQ0 handling: a) WARN() followed by b) returned value 0
> =

> I'm happy with the vIRQ0 handling. Today platform_get_irq() and it's
> silent variant returns either a valid and usuable irq number or a
> negative error value. That's totally fine.

It might return 0.
Actually it seems that the WARN() can only be issued in two cases:
- SPARC with vIRQ0 in one of the array member
- fallback to ACPI for GPIO IRQ resource with index 0

But the latter is bogus, because it would mean a bug in the ACPI code.

The bottom line here is the SPARC case. Anybody familiar with the platform
can shed a light on this. If there is no such case, we may remove warning
along with ret =3D 0 case from platfrom_get_irq().

> > 3. The specific cookie for "IRQ not found, while no error happened" case
> =

> Not sure what you mean here. I have no problem that a situation I can
> cope with is called an error for the query function. I just do error
> handling and continue happily. So the part "while no error happened" is
> irrelevant to me.

I meant that instead of using special error code, 0 is very much good for
the cases when IRQ is not found. It allows to distinguish -ENXIO from the
low layer from -ENXIO with this magic meaning.

> Additionally I see the problems:
> =

> 4. The semantic as implemented in Sergey's patch isn't better than the
> current one.

I disagree on this. See above on why.

> platform_get_irq*() is still considerably different from
> (clk|gpiod)_get* because the not-found value for the _optional variant
> isn't usuable for the irq case. For clk and gpio I get rid of a whole if
> branch, for irq I only change the if-condition. (And if that change is
> considered good or bad seems to be subjective.)

You are mixing up two things:
 - semantics of the pointer
 - semantics of the cookie

Like I said previously the mistake is in putting an equal sign between appl=
es
and oranges (or in terms of Python, which is a good example here, None and
False objects, where in both case 0 is magic and Python `if X`, `while `X` =
will
work in the same way, the `typeof(X)` is different semantically).

> For the idea to add a warning to platform_get_irq_optional for all but
> -ENXIO (and -EPROBE_DEFER), I see the problem:
> =

> 5. platform_get_irq*() issuing an error message is only correct most of
> the time and given proper error handling in the caller (which might be
> able to handle not only -ENXIO but maybe also -EINVAL[1]) the error messa=
ge
> is irritating. Today platform_get_irq() emits an error message for all
> but -EPROBE_DEFER. As soon as we find a driver that handles -EINVAL we
> need a function platform_get_irq_variant1 to be silent for -EINVAL,
> -EPROBE_DEFER and -ENXIO (or platform_get_irq_variant2 that is only
> silent for -EINVAL and -EPROBE_DEFER?)
> =

> IMHO a query function should always be silent and let the caller do the
> error handling. And if it's only because
> =

> 	mydev: IRQ index 0 not found
> =

> is worse than
> =

> 	mydev: neither TX irq not a muxed RX/TX irq found
> =

> . Also "index 0" is irritating for devices that are expected to have
> only a single irq (i.e. the majority of all devices).

Yeah, ack the #5.

> Yes, I admit, we can safe some code by pushing the error message in a
> query function. But that doesn't only have advantages.

> [1] Looking through the source I wonder: What are the errors that can hap=
pen
>     in platform_get_irq*()? (calling everything but a valid irq number
>     an error) Looking at many callers, they only seem to expect "not
>     found" and some "probe defer" (even platform_get_irq() interprets
>     everything but -EPROBE_DEFER as "IRQ index %u not found\n".)
>     IMHO before we should consider to introduce a platform_get_irq*()
>     variant with improved semantics, some cleanup in the internals of
>     the irq lookup are necessary.

-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
