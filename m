Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3242048DB0F
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PM-0002RT-Mh; Thu, 13 Jan 2022 15:53:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1n7e3k-0003uP-Ln
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 13:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CjB10lu5ht+hO1wf3Dox0T4FsBR8Ns76AUCFGlfnSaE=; b=akon/K5z/Aq5fQDgyNQxLKkjyb
 XZumWQLexm4OSd5dVRnGajVP0t7ullvy1ga0aO0hrab6k8T3abDEI3tIHRxFzbruWATpx2vJJvpCE
 c1FUB9vysoTvvQPIZES/nMhaLvERSmBELXa4QSgFBgLEw03ePgJ55wIhSrsPVg44bprA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CjB10lu5ht+hO1wf3Dox0T4FsBR8Ns76AUCFGlfnSaE=; b=a8NwCODAsN1QhlitfMJ9rlf38F
 XDpznSJKoInt64quSEHveHdqq5ZXhGfSBbdn7vYXMgaCD+nZoFWVocQOcHmmR3o5m/GzHjKXWbruw
 j7h5uLY9mDaATO1BJpCW5TE5j0pmefQx0z/ooqrqgT26/tybMwOKVk7rTts1ZSb5MiAg=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7e3k-00D3jZ-6J
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 13:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641995584; x=1673531584;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6o9aGlupJ5pLyORTimcn6DvGUzsV6iRYvEXQu/xlHjg=;
 b=hEZiQ68e94LYGp7cRKGKgVEtqxG19YQOgf4YK3RiICBudNetJWu2JFuo
 0a4woJQ5kTOR+/2NY82bn875Rz0/pqo4h+WDOS6+AyCFBjTP3rPFvrCBv
 zHzQAq9X5d/KlCW3fHJ0DlIKxqa8lxUuvkh8giF9uvN/tk4BBP+mK7w7g
 8Cgy2wT1hFPnpK1GgXMlUKd9XXcax6wtapELc2l+uT42XaSgbSDfnBouI
 EKQsGn97QSaDL9mG9V2oRws27vFVr5IyEYtjPjSznbq15Cmlk4QnTfpFd
 JfnXrj+QvJU+cYyUU8Vtbe70kFDsHb4CchNueFgze0B55pdzTAmnHFeix w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="223716123"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="223716123"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 05:52:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="474911438"
Received: from smile.fi.intel.com ([10.237.72.61])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 05:52:41 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1n7e28-009hhk-Us; Wed, 12 Jan 2022 15:51:24 +0200
Date: Wed, 12 Jan 2022 15:51:24 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <Yd7c3BTcdXcbHDUM@smile.fi.intel.com>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <Yd7Z3Qwevb/lEwQZ@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yd7Z3Qwevb/lEwQZ@lunn.ch>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 12, 2022 at 02:38:37PM +0100, Andrew Lunn wrote:
 > > If an optional IRQ is not present, drivers either just ignore it (e.g.
 > > for devices that can have multiple interrupts or a single mu [...] 
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n7e3k-00D3jZ-6J
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 KVM list <kvm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-iio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Amit Kucheria <amitk@kernel.org>,
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
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 12, 2022 at 02:38:37PM +0100, Andrew Lunn wrote:
> > If an optional IRQ is not present, drivers either just ignore it (e.g.
> > for devices that can have multiple interrupts or a single muxed IRQ),
> > or they have to resort to polling. For the latter, fall-back handling
> > is needed elsewhere in the driver.
> > To me it sounds much more logical for the driver to check if an
> > optional irq is non-zero (available) or zero (not available), than to
> > sprinkle around checks for -ENXIO. In addition, you have to remember
> > that this one returns -ENXIO, while other APIs use -ENOENT or -ENOSYS
> > (or some other error code) to indicate absence. I thought not having
> > to care about the actual error code was the main reason behind the
> > introduction of the *_optional() APIs.
> 
> The *_optional() functions return an error code if there has been a
> real error which should be reported up the call stack. This excludes
> whatever error code indicates the requested resource does not exist,
> which can be -ENODEV etc. If the device does not exist, a magic cookie
> is returned which appears to be a valid resources but in fact is
> not. So the users of these functions just need to check for an error
> code, and fail the probe if present.
> 
> You seems to be suggesting in binary return value: non-zero
> (available) or zero (not available)


No, what is suggested is to (besides the API changes):
- do not treat ENXIO as something special in platform_get_irq*()
- allow platform_get_irq*() to return other error codes

> This discards the error code when something goes wrong. That is useful
> information to have, so we should not be discarding it.
> 
> IRQ don't currently have a magic cookie value. One option would be to
> add such a magic cookie to the subsystem. Otherwise, since 0 is
> invalid, return 0 to indicate the IRQ does not exist.
> 
> The request for a script checking this then makes sense. However, i
> don't know how well coccinelle/sparse can track values across function
> calls. They probably can check for:
> 
>    ret = irq_get_optional()
>    if (ret < 0)
>       return ret;
> 
> A missing if < 0 statement somewhere later is very likely to be an
> error. A comparison of <= 0 is also likely to be an error. A check for
> > 0 before calling any other IRQ functions would be good. I'm
> surprised such a check does not already existing in the IRQ API, but
> there are probably historical reasons for that.
> 
>       Andrew

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
