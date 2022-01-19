Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D37B4941D5
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jan 2022 21:35:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAHfX-0004Lr-MI; Wed, 19 Jan 2022 20:34:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nAGSe-0004K2-TJ
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 19:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aguG1J9pq9K9sRLjW6xTjgJuCL0CzXhpY81Gbri1aSE=; b=UZv4dQEuwQ8ZTfS9JjYbtBIxq8
 Nqa1y9QSXuIA/jedhYnn4E2Oghwcg4g2PAilHp7BOxJ72t1X8/xioDx7Oq03BcidRmcmyfBUDjIdb
 /wOYZ9cKTvIfjzWAafuhIwb9jpE8KyKrHtUO9ADNBzn/7ufmMNOfVuEC+TxkE8HGPm6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aguG1J9pq9K9sRLjW6xTjgJuCL0CzXhpY81Gbri1aSE=; b=Bmhxeac8udhSzKrqmPARqsvZjD
 vMh7sicf+Y5sWjom+gIr7Ko+NNaVN8Y7F79P7oEMNNWrQ+dWWJKRVtDdbfF83UHiKyMmVcLWrj499
 8ttSQVYecR06qxhsZAyQdKRVe729cFYd4kn/zRmmdbiqBEZJGk/PS1mBUGZ9DYmsLp20=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAGSc-0044iH-V0
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 19:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642619854; x=1674155854;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pJ3GNueq7O6gH3lUcp2UWza1P3qxEpzR0oarM5vPP+c=;
 b=Kycwkeac7hAlNIvPmVXGzYRdNjincx0dHMjngLs9/iWNgMGr6yV0cfRN
 IvSBQtHnMmh2Db4hvRtboNhHN4BUPZCaB8izuUL0aMdnodVx6tlbcPlLo
 f56uXfjNmJdcH8FDlh+fx5aoP+RePUUXCPLm0mKl04bNNLN/0MS9SJ+/m
 PFsqHFkjdFoaI2tFFOUaNdtnmxq5Knl9IoRXmmcpIVk460ekTjnXOctE+
 QvnsPj00U78MHp4U/N/suW8SKdFo6JxhR39ukq4GglhLXxygAqhZfiS7G
 /FUSQ2N1Ncl/Xxk8k8prlbUSG4++IuaOSB8GQLfYuqT2XmnZq6E5/h64h g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="331514714"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="331514714"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 10:41:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="765040746"
Received: from smile.fi.intel.com ([10.237.72.61])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 10:41:32 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nAFsa-00CDtL-3g; Wed, 19 Jan 2022 20:40:20 +0200
Date: Wed, 19 Jan 2022 20:40:19 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <YehbE03fMBSuOleX@smile.fi.intel.com>
References: <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <745c601f-c782-0904-f786-c9bfced8f11c@gmail.com>
 <cae0b73e-46df-a491-4a8e-415205038c2c@omp.ru>
 <20220115135550.dr4ngiz2c6rfs2rl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220115135550.dr4ngiz2c6rfs2rl@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, Jan 15, 2022 at 02:55:50PM +0100, Uwe Kleine-König
    wrote: > On Fri, Jan 14, 2022 at 08:55:07PM +0300, Sergey Shtylyov wrote:
    > Or do you think kmalloc should better be called > kmalloc_optional because
    it returns NULL if there is no more memory > available? 
 
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
X-Headers-End: 1nAGSc-0044iH-V0
X-Mailman-Approved-At: Wed, 19 Jan 2022 20:34:57 +0000
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, Tony Luck <tony.luck@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 John Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Jan 15, 2022 at 02:55:50PM +0100, Uwe Kleine-K=F6nig wrote:
> On Fri, Jan 14, 2022 at 08:55:07PM +0300, Sergey Shtylyov wrote:

> Or do you think kmalloc should better be called
> kmalloc_optional because it returns NULL if there is no more memory
> available?

Oh, do you know that kmalloc() may return NULL and small cookie value and
actually one has to check for that (yes, either before or after against
different variables)?

kmalloc() is exactly an example that justifies the Sergey's patch.

-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
