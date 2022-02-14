Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E92BD4B5AFC
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Feb 2022 21:31:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nJi0n-0005Xv-NB; Mon, 14 Feb 2022 20:31:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nJYPR-0001sT-8B
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 10:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S2am0DFxduOgwoQwT68+E41W4lZGdJUn7syiWx4Tjqc=; b=PvucP0MU+t8ZNcSzS2Zgb26UoK
 dGg2B8WOlSoTIkPfNd+8hneN4EgDnrzy+P9g+6YF2zk7qqqU+jgaszB0Y41isLAyMmr4hhCu0hEKD
 RXGCuSo9YnfyV2u2ldsmSCOOPXLCEUbqdVDIArsoQMsc3+fqeZuCCYwyeD/aJa7lgHkY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S2am0DFxduOgwoQwT68+E41W4lZGdJUn7syiWx4Tjqc=; b=YFf1k+dVhi1GIG74RSjrIo6DlY
 s4RXBATcb4JlyQ3eWE1Ipnk+lQbUX90v7iSyENuZvDbtq1nowD7sChFjXIs0W6B7V114x64p7rGhn
 rTlmHXuvWkpxhcCcnhyIhrPhmd7pwRhPk4+RUrAcjpn6cIk3QvPuVWJKIDzQ28L3Nu/M=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nJYPP-0008C1-1e
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 10:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644833799; x=1676369799;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iMfir8Hys8PoRkg7XbbXRj39pNMes8hLErnltaIltH8=;
 b=ARRsZwyPYBQpomTNIjtlP2E9A7Gs1ib20LUNdJcbCdpMiDYPCr96QRX1
 FaO34SY53TjZATnK9BVwudw+vznR2HW+bugKljamBhFNY6fcm2/q4PsMU
 6pmjDiolXngTzIf3WNLdCkCLhGQLln1gVb0X4VqVf74KiTH5OKZ/QijFC
 VHI4DJs66ndXyJsUU9UbKmROzf4NIR/GEIY9p0pW4SGh8KRM1pBFotEJP
 N2wdU99F5zt06XDBmCsHZ+YMgdfTwreXGmsDOS+Yk0d8JI5+sx1w6y5tB
 VUZPbGUv+FEIJzq2RfgNWhy/b8iwv+f3PdBNaUksfWgh8eKySFXUXSlwF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="249808079"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="249808079"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:16:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="603187011"
Received: from smile.fi.intel.com ([10.237.72.61])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:16:17 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nJYLy-004PC8-6n; Mon, 14 Feb 2022 12:13:06 +0200
Date: Mon, 14 Feb 2022 12:13:01 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <YgorLXUr8aT+1ttv@smile.fi.intel.com>
References: <20220212201631.12648-1-s.shtylyov@omp.ru>
 <20220212201631.12648-2-s.shtylyov@omp.ru>
 <20220214071351.pcvstrzkwqyrg536@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220214071351.pcvstrzkwqyrg536@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Feb 14, 2022 at 08:13:51AM +0100, Uwe Kleine-König
    wrote: > On Sat, Feb 12, 2022 at 11:16:30PM +0300, Sergey Shtylyov wrote:
    > > This patch is based on the former Andy Shevchenko's patch: > > [...] 
 
 Content analysis details:   (-3.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [134.134.136.24 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [134.134.136.24 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nJYPP-0008C1-1e
X-Mailman-Approved-At: Mon, 14 Feb 2022 20:31:50 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/2] platform: make
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
 Vignesh Raghavendra <vigneshr@ti.com>, kvm@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Guenter Roeck <groeck@chromium.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Oleksij Rempel <linux@rempel-privat.de>, Lee Jones <lee.jones@linaro.org>,
 "David S. Miller" <davem@davemloft.net>, Peter Korsgaard <peter@korsgaard.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 linux-pwm@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Corey Minyard <minyard@acm.org>, linux-pm@vger.kernel.org,
 John Garry <john.garry@huawei.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Eric Auger <eric.auger@redhat.com>,
 Takashi Iwai <tiwai@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net, Jaroslav Kysela <perex@perex.cz>,
 Benson Leung <bleung@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Zha Qipeng <qipeng.zha@intel.com>, Richard Weinberger <richard@nod.at>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Brian Norris <computersforpeace@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Feb 14, 2022 at 08:13:51AM +0100, Uwe Kleine-K=F6nig wrote:
> On Sat, Feb 12, 2022 at 11:16:30PM +0300, Sergey Shtylyov wrote:
> > This patch is based on the former Andy Shevchenko's patch:
> > =

> > https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shevchenko@l=
inux.intel.com/
> > =

> > Currently platform_get_irq_optional() returns an error code even if IRQ
> > resource simply has not been found.  It prevents the callers from being
> > error code agnostic in their error handling:
> > =

> > 	ret =3D platform_get_irq_optional(...);
> > 	if (ret < 0 && ret !=3D -ENXIO)
> > 		return ret; // respect deferred probe
> > 	if (ret > 0)
> > 		...we get an IRQ...
> > =

> > All other *_optional() APIs seem to return 0 or NULL in case an optional
> > resource is not available.  Let's follow this good example, so that the
> > callers would look like:
> > =

> > 	ret =3D platform_get_irq_optional(...);
> > 	if (ret < 0)
> > 		return ret;
> > 	if (ret > 0)
> > 		...we get an IRQ...
> > =

> > Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> > Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> =

> While this patch is better than v1, I still don't like it for the
> reasons discussed for v1. (i.e. 0 isn't usable as a dummy value which I
> consider the real advantage for the other _get_optional() functions.)

I think you haven't reacted anyhow to my point that you mixing apples and
bananas together when comparing this 0 to the others _optional APIs.

> Apart from that, I think the subject is badly chosen. With "Make
> somefunc() optional" I would expect that you introduce a Kconfig symbol
> that results in the function not being available when disabled.


-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
