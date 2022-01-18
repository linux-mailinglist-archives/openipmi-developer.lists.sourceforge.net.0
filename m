Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2491D492672
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 14:05:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9oBG-0003NC-39; Tue, 18 Jan 2022 13:05:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1n9krS-000492-9e
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z/cZcAUaUP8Gbqc9M5Q+peCxz/LK3TVp20Rgkdgmjrw=; b=Ek8OcYkWG7zY/NKTkDIqCe80ts
 a47RtNuVpDON+meHw16eKPE3hoYNXSGRlnX3b8mCPKS6VhVrDdu8CsAgcKqqGCZQMBvxCXt1H+EMZ
 W7TOl3Ky8kw1zGcsoQBOlcf0aIYdR3+xYy0l52YoY713DdHqta69Q9UH1RuY+TS4xskY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z/cZcAUaUP8Gbqc9M5Q+peCxz/LK3TVp20Rgkdgmjrw=; b=U3tayCxtwcFKPO4j1nO8RJ9D+C
 h2b8KrY+CvklU/fu2s/aqdg6Ou+/X89MF88FnImZ+2m1IG48Z4DWOKPVO41J2nt3qWMshPHww2ZiI
 mQUUjUvTvu8z/cfBIhd/vZ9KEfVkCG4GAQxa+CEo2nV+BCWTefqDJbMMBxKou0snc4kI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9krN-00073f-53
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:33:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F1F41611D6;
 Tue, 18 Jan 2022 09:32:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76C83C00446;
 Tue, 18 Jan 2022 09:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1642498373;
 bh=DQsfwtJhv3xPa9stElQYzBQziBxi/lTSvFxbATxprog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IYXMJ0VPjFYSJY4NvlXmFWheHw/XkPbDg6jYdIXLJdD1zglfnvz6feJDneqRQF/Y7
 Xd4h6nOb3hzFwTMGSfrGLMZs9cs+U1HvQaFyP49TIVznh2RAxc+V/DqmrD1t1xwr2a
 25A0Y8zcDbS1ew90c5vIYgg7oo/j34B2Guk1t+0Y=
Date: Tue, 18 Jan 2022 10:32:50 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <YeaJQnzxTqdarQ6T@kroah.com>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220115183643.6zxalxqxrhkfgdfq@pengutronix.de>
 <YeQpWu2sUVOSaT9I@kroah.com>
 <20220118091819.zzxpffrxbckoxiys@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220118091819.zzxpffrxbckoxiys@pengutronix.de>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jan 18, 2022 at 10:18:19AM +0100, Uwe Kleine-König
    wrote: > On Sun, Jan 16, 2022 at 03:19:06PM +0100, Greg Kroah-Hartman wrote:
    > > On Sat, Jan 15, 2022 at 07:36:43PM +0100, Uwe Kleine-König w [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n9krN-00073f-53
X-Mailman-Approved-At: Tue, 18 Jan 2022 13:05:42 +0000
Subject: Re: [Openipmi-developer] [PATCH 1/2] platform: make
 platform_get_irq_optional() optional (summary)
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
 alsa-devel@alsa-project.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, linux-spi@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Jiri Slaby <jirislaby@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-pwm@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 John Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>, netdev@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Sergey Shtylyov <s.shtylyov@omp.ru>,
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

On Tue, Jan 18, 2022 at 10:18:19AM +0100, Uwe Kleine-K=F6nig wrote:
> On Sun, Jan 16, 2022 at 03:19:06PM +0100, Greg Kroah-Hartman wrote:
> > On Sat, Jan 15, 2022 at 07:36:43PM +0100, Uwe Kleine-K=F6nig wrote:
> > > A possible compromise: We can have both. We rename
> > > platform_get_irq_optional() to platform_get_irq_silent() (or
> > > platform_get_irq_silently() if this is preferred) and once all users =
are
> > > are changed (which can be done mechanically), we reintroduce a
> > > platform_get_irq_optional() with Sergey's suggested semantic (i.e.
> > > return 0 on not-found, no error message printking).
> > =

> > Please do not do that as anyone trying to forward-port an old driver
> > will miss the abi change of functionality and get confused.  Make
> > build-breaking changes, if the way a function currently works is
> > changed in order to give people a chance.
> =

> Fine for me. I assume this is a Nack for Sergey's patch?

This set of patches is going nowhere as-is, sorry.  The thread is too
confusing and people are not agreeing at all.

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
