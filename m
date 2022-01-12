Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 620E648DB12
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PM-0002RF-HF; Thu, 13 Jan 2022 15:53:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1n7ckh-0003Wr-MP
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 12:29:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u92L/t7+nBM3qKGqFBL1ot6i1kI4rflRuba3cWfMFx0=; b=I4pnG27qIvL8+WclB/zBXAUlxp
 9tPXcKiXSJ7f6AnR8LiwEB4vtixhBE5USOJGiokH6IbwQJKnTaOwIfGvQfDCYDwzHFFkmTn4veYQS
 fd6AksJpQKTTIlz8Flr/IOoXv3HbjtvDX6Jz7E7Ju/a1u8dIA5OC6F2oLQMDmz7jIJUw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u92L/t7+nBM3qKGqFBL1ot6i1kI4rflRuba3cWfMFx0=; b=je+C/fo1WLpobw7t12fxIAZMNN
 1cdP3P2PKot3IWFVY2MwU5/FqWdAWELNhkuF65mHHJYZzD601cIukvpGWmpL4kXE5QYI4jWrlS087
 5Hl5H0FrQWb8TeIOmQEtLnTH2qHINH2kPgEJl7BaboznKpNKEb5LaUmZijmXDvD7mJ1I=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7ckz-00Cwqy-L5
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 12:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641990577; x=1673526577;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7u2c/+u/7900R51hbSn1pNSHHzU5y3Q///2YVkNposY=;
 b=njxVlYYJqHEwokOY+ww47QllPHrLiuMTqehcidOayppNlQAzjmLzcuKG
 JB28s6pruAJcjPb6ebuZ/GHBOJhRnj6Lop1vdYBt8ymZ9iWnH5b53K6hm
 FqbUR6AgZvKrQDb3WLViXkGB/rsUpssVMZ5FsACzCdmSmwfxsaEeRwjEe
 rYxpMbvk0L8PewJdEs8XrPZUyzKnsgwouZjctDA5aamg8D6Lqxeirptwh
 phwNYivb9ex0Xrkr1Pm73sBP+eOCvV0HtJczjW64nLlm4IJas+XNwm8yn
 HbR/U3WM1cFf+rXTRB57Igfl9H5a0J+p3SfzztCCdX81dRAfaLImvHKiN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="224417608"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="224417608"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 04:29:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="691367097"
Received: from smile.fi.intel.com ([10.237.72.61])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 04:29:15 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1n7cjO-009gDi-VM; Wed, 12 Jan 2022 14:27:58 +0200
Date: Wed, 12 Jan 2022 14:27:58 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <Yd7JTvfblG0Ge4AN@smile.fi.intel.com>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jan 12, 2022 at 11:27:02AM +0100, Geert Uytterhoeven
    wrote: > On Wed, Jan 12, 2022 at 9:51 AM Uwe Kleine-König > <u.kleine-koenig@pengutronix.de>
    wrote: > > On Wed, Jan 12, 2022 at 09:33:48AM [...] 
 
 Content analysis details:   (-3.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [192.55.52.151 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n7ckz-00Cwqy-L5
X-Mailman-Approved-At: Thu, 13 Jan 2022 15:52:57 +0000
Subject: Re: [Openipmi-developer] [PATCH 1/2] platform: make
 platform_get_irq_optional() optional
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
 Joakim Zhang <qiangqing.zhang@nxp.com>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 12, 2022 at 11:27:02AM +0100, Geert Uytterhoeven wrote:
> On Wed, Jan 12, 2022 at 9:51 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Wed, Jan 12, 2022 at 09:33:48AM +0100, Geert Uytterhoeven wrote:
> > > On Mon, Jan 10, 2022 at 10:20 PM Andrew Lunn <andrew@lunn.ch> wrote:
> > > > On Mon, Jan 10, 2022 at 09:10:14PM +0100, Uwe Kleine-K=F6nig wrote:
> > > > > On Mon, Jan 10, 2022 at 10:54:48PM +0300, Sergey Shtylyov wrote:
> > > > > > This patch is based on the former Andy Shevchenko's patch:
> > > > > >
> > > > > > https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shev=
chenko@linux.intel.com/
> > > > > >
> > > > > > Currently platform_get_irq_optional() returns an error code eve=
n if IRQ
> > > > > > resource simply has not been found. It prevents the callers fro=
m being
> > > > > > error code agnostic in their error handling:
> > > > > >
> > > > > >     ret =3D platform_get_irq_optional(...);
> > > > > >     if (ret < 0 && ret !=3D -ENXIO)
> > > > > >             return ret; // respect deferred probe
> > > > > >     if (ret > 0)
> > > > > >             ...we get an IRQ...
> > > > > >
> > > > > > All other *_optional() APIs seem to return 0 or NULL in case an=
 optional
> > > > > > resource is not available. Let's follow this good example, so t=
hat the
> > > > > > callers would look like:
> > > > > >
> > > > > >     ret =3D platform_get_irq_optional(...);
> > > > > >     if (ret < 0)
> > > > > >             return ret;
> > > > > >     if (ret > 0)
> > > > > >             ...we get an IRQ...
> > > > >
> > > > > The difference to gpiod_get_optional (and most other *_optional) =
is that
> > > > > you can use the NULL value as if it were a valid GPIO.
> > > > >
> > > > > As this isn't given with for irqs, I don't think changing the ret=
urn
> > > > > value has much sense.
> > > >
> > > > We actually want platform_get_irq_optional() to look different to a=
ll
> > > > the other _optional() methods because it is not equivalent. If it
> > > > looks the same, developers will assume it is the same, and get
> > > > themselves into trouble.
> > >
> > > Developers already assume it is the same, and thus forget they have
> > > to check against -ENXIO instead of zero.
> >
> > Is this an ack for renaming platform_get_irq_optional() to
> > platform_get_irq_silent()?
> =

> No it isn't ;-)
> =

> If an optional IRQ is not present, drivers either just ignore it (e.g.
> for devices that can have multiple interrupts or a single muxed IRQ),
> or they have to resort to polling. For the latter, fall-back handling
> is needed elsewhere in the driver.
> To me it sounds much more logical for the driver to check if an
> optional irq is non-zero (available) or zero (not available), than to
> sprinkle around checks for -ENXIO. In addition, you have to remember
> that this one returns -ENXIO, while other APIs use -ENOENT or -ENOSYS
> (or some other error code) to indicate absence. I thought not having
> to care about the actual error code was the main reason behind the
> introduction of the *_optional() APIs.

For the record, I'm on the same page with Geert.

-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
