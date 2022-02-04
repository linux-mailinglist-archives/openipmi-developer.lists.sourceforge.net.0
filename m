Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4B74A9ACC
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Feb 2022 15:17:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFzPD-00023j-6b; Fri, 04 Feb 2022 14:17:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joe@perches.com>) id 1nFzAN-0003Kx-5q
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 14:02:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U878SHv2EaXH5SU43ktpKxLnbnIC0095rzNolbtOjSU=; b=mJ9EZwr6QjQzzuryfOvCATlgfn
 YjuFWDEQtteEcEHWWvXc1SyFD0ptAOA+FsxbM7SwU6SUgBHdXXBUeSQGFjaLut0mz81PjWJC17Mra
 OcnmIUEIwU1ivYWYw4ZxhBxBWDxWyPM1+FH8wHnBIbrXiI+J8GXRvgyBLExj4Mo+TC1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U878SHv2EaXH5SU43ktpKxLnbnIC0095rzNolbtOjSU=; b=iAYHkEdCXCaUdbPwF6/rRlKDyC
 DLUU1t4xVRhcqrwZVsD2us4d0sQnJXY8H3BVTRisUneHriRCTAIsNTpRTaactNRoAQqjSTf/5b47Q
 2wHpstewV5nuQCIOQyj3Prb8orP/E32AqA30FZJt9T75Z7+OxFxaX/OQ8dKp1N7qeda4=;
Received: from relay5.hostedemail.com ([64.99.140.38])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFzAK-00HK93-Pf
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 14:02:21 +0000
Received: from omf17.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay01.hostedemail.com (Postfix) with ESMTP id CEA06614A8;
 Fri,  4 Feb 2022 14:02:07 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf17.hostedemail.com (Postfix) with ESMTPA id A72A11B; 
 Fri,  4 Feb 2022 14:01:08 +0000 (UTC)
Message-ID: <7cb1ce88cbf977801f2519178c270c1271100ac6.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Date: Fri, 04 Feb 2022 06:01:44 -0800
In-Reply-To: <Yf0cihUQ1byjnh3d@shell.armlinux.org.uk>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <Yf0Wm1kOV1Pss9HJ@shell.armlinux.org.uk>
 <ad56e88206a8d66b715035362abe16ece0bde7d3.camel@perches.com>
 <Yf0cihUQ1byjnh3d@shell.armlinux.org.uk>
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
X-Rspamd-Queue-Id: A72A11B
X-Spam-Status: No, score=-2.03
X-Stat-Signature: c3yzg6zcu4cpdcebaczubogb94ck3gqq
X-Rspamd-Server: rspamout07
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+KwoOMBfXWPFnO9qh3WITIVuG9hjhnLgA=
X-HE-Tag: 1643983268-605794
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2022-02-04 at 12:31 +0000,
 Russell King (Oracle) wrote:
 > On Fri, Feb 04, 2022 at 04:18:24AM -0800, Joe Perches wrote: > > On Fri,
 2022-02-04 at 12:05 +0000, Russell King (Oracle) wrote: > > > [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nFzAK-00HK93-Pf
X-Mailman-Approved-At: Fri, 04 Feb 2022 14:17:39 +0000
Subject: Re: [Openipmi-developer] [PATCH] HPE BMC GXP SUPPORT
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Wang Kefeng <wangkefeng.wang@huawei.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Sam Ravnborg <sam@ravnborg.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, David Airlie <airlied@linux.ie>,
 verdun@hpe.com, Amit Kucheria <amitk@kernel.org>,
 dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, netdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stanislav Jakubek <stano.jakubek@gmail.com>, Hao Fang <fanghao11@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-pwm@vger.kernel.org,
 linux-serial@vger.kernel.org,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-gpio@vger.kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
 nick.hawkins@hpe.com, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Marc Zyngier <maz@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 2022-02-04 at 12:31 +0000, Russell King (Oracle) wrote:
> On Fri, Feb 04, 2022 at 04:18:24AM -0800, Joe Perches wrote:
> > On Fri, 2022-02-04 at 12:05 +0000, Russell King (Oracle) wrote:
> > > On Wed, Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote:
> > > > +	if (readb_relaxed(timer->control) & MASK_TCS_TC) {
> > > > +		writeb_relaxed(MASK_TCS_TC, timer->control);
> > > > +
> > > > +		event_handler = READ_ONCE(timer->evt.event_handler);
> > > > +		if (event_handler)
> > > > +			event_handler(&timer->evt);
> > > > +		return IRQ_HANDLED;
> > > > +	} else {
> > > > +		return IRQ_NONE;
> > > > +	}
> > > > +}
> > 
> > It's also less indented code and perhaps clearer to reverse the test
> > 
> > 	if (!readb_relaxed(timer->control) & MASK_TCS_TC)
> 
> This will need to be:
> 
>  	if (!(readb_relaxed(timer->control) & MASK_TCS_TC))

right, thanks.




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
