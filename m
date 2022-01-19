Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 906244942D6
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jan 2022 23:11:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAJAQ-0002Zy-N9; Wed, 19 Jan 2022 22:10:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nAI0b-0000MW-Lb
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 20:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TJLIj6FPzI2lP/RC8OWxFYGyUyM0Nd/dVjAMTmubrbU=; b=gzjGzA1GJKenNkkvp9+bwXOveg
 tvW+pWrn3/jKWeChFBPJllgYqJgGwkOkT+KB5C4VHljO5c4o+WfZqWftkDkAletwleQS/XleBGDjD
 wVe7oBAHKjHEQCwAqkFJZXr1VAhELP0r5pvWalgJh4+KAlS/ekviCl6A3FeRKWDFx0T4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TJLIj6FPzI2lP/RC8OWxFYGyUyM0Nd/dVjAMTmubrbU=; b=ev2LxJO+g9A49kpVQWpSkRu+Sf
 cwpkHSOMsRbtNkZ2OA1V76mgVrzqS6F4YXhks4oFsIUq47QC800QGaukou7zR5J0wqiMV17UzdpTR
 R2DfmeyKPq5BkLh+TJ8E/MmSS3/ObgYg9ItkNJEEp2ozQ6Cb+RZsJvBt/Nh3szJ1GxKM=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAI0Z-0005Zf-4Y
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 20:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642625803; x=1674161803;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Zn3K2EdVeDLJCMJ0xbcykPqu/tTiNlke9kM/JdHhcyA=;
 b=RSTv+qXtEIVYaOIBaVJHthkdxuyp0kWtYtAEf2SQq8FQlUNR83L6QOxQ
 OP3R4u2HB3gm3on/JuZFidOO2rZ8sQoRyWnH2t9WFoMJcaXxBQfhvdwqg
 oDu1d8gMTA83NZjWeuFymvYmRVmLHViEZNW0qg8/NqNwUbPTeYq3XgFVu
 zUbOmWEL0yGvYYHdn5pNf7nKRxnb7DvRdOsn/HhSPexjj/T6qcpL9E2dM
 025ZuCMtY7Tl8PvmjqTol59o+1bSfBAW+WCGC+SSOBfa65++Y8x7OZHfk
 X1d/OQcTCEX+4UI1bDCdmNGfe0pTMVVcnUJNxj8RzjG7lIU0umPmOmQhT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="232553764"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="232553764"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 12:56:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="615845335"
Received: from smile.fi.intel.com ([10.237.72.61])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 12:56:21 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nAHz3-00CGxM-Ht; Wed, 19 Jan 2022 22:55:09 +0200
Date: Wed, 19 Jan 2022 22:55:09 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Message-ID: <Yeh6rdBjEMiavLfh@smile.fi.intel.com>
References: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeF05vBOzkN+xYCq@smile.fi.intel.com>
 <20220115154539.j3tsz5ioqexq2yuu@pengutronix.de>
 <YehdsUPiOTwgZywq@smile.fi.intel.com>
 <b7edb713-dd91-14e7-34ff-d8fb559e8e92@omp.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7edb713-dd91-14e7-34ff-d8fb559e8e92@omp.ru>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 19, 2022 at 10:47:06PM +0300, Sergey Shtylyov
 wrote: > On 1/19/22 9:51 PM, Andy Shevchenko wrote: > >>>>> It'd certainly
 be good to name anything that doesn't correspond to one > >>>>> of the
 existing
 semantics for the API (!) something different rather > >>>>> than adding
 yet another potentially [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nAI0Z-0005Zf-4Y
X-Mailman-Approved-At: Wed, 19 Jan 2022 22:10:56 +0000
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
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 19, 2022 at 10:47:06PM +0300, Sergey Shtylyov wrote:
> On 1/19/22 9:51 PM, Andy Shevchenko wrote:

> >>>>> It'd certainly be good to name anything that doesn't correspond to one
> >>>>> of the existing semantics for the API (!) something different rather
> >>>>> than adding yet another potentially overloaded meaning.
> >>>>
> >>>> It seems we're (at least) three who agree about this. Here is a patch
> >>>> fixing the name.
> >>>
> >>> And similar number of people are on the other side.
> >>
> >> If someone already opposed to the renaming (and not only the name) I
> >> must have missed that.
> >>
> >> So you think it's a good idea to keep the name
> >> platform_get_irq_optional() despite the "not found" value returned by it
> >> isn't usable as if it were a normal irq number?
> > 
> > I meant that on the other side people who are in favour of Sergey's patch.
> > Since that I commented already that I opposed the renaming being a standalone
> > change.
> > 
> > Do you agree that we have several issues with platform_get_irq*() APIs?
> > 
> > 1. The unfortunate naming
> 
>    Mmm, "what's in a name?"... is this the topmost prio issue?

The order is arbitrary.

> > 2. The vIRQ0 handling: a) WARN() followed by b) returned value 0
> 
>    This is the most severe issue, I think...
> 
> > 3. The specific cookie for "IRQ not found, while no error happened" case

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
