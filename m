Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8909E4A9ACE
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Feb 2022 15:17:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFzPD-00023J-0c; Fri, 04 Feb 2022 14:17:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <linux+openipmi-developer=lists.sourceforge.net@armlinux.org.uk>)
 id 1nFxkz-00014t-DP
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 12:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mzxF9rMeHdGHwkTPDimCxRmilWqf6MiwMi9qg5Sr64g=; b=ODfcZOTuDTjcFoSqnbjXaSHbnI
 UHheHAnox0ho2JxylmjcPaIWvhL85oMZFaVY0s7FZcH+3KRU5d+2lK3JGDiJ0cUYkVcDSP2atOgqU
 gvbA00J3jueWWu2Ux2JHKu0JtNltWq6RxXkCSVcYijlEz9/lM3au614jW1v2Ub5o+/8g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mzxF9rMeHdGHwkTPDimCxRmilWqf6MiwMi9qg5Sr64g=; b=UwZYQN9Z18LNoctlLwOeQURTcE
 ESsQOoQZfKkzMQUwgknLIwx2L2cI9YN0jVIiK+uwsnoBJ/QZykrfWaMF6FnUgchLgMv8cWTTccJQy
 MoTV8CxC2KiUDrgym5NLMyWHOKH/yGh9YJ9dibylR65lFCEbMy7UdNduWPHlsOgS0R94=;
Received: from pandora.armlinux.org.uk ([78.32.30.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFxku-0004XR-6M
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 12:32:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mzxF9rMeHdGHwkTPDimCxRmilWqf6MiwMi9qg5Sr64g=; b=vl3i11hF8iQy1h0Ag1YRBLQAG7
 dAUWYNtSwGnV/h/3SZGvDI79vCb1IEbbtu1UQ3FfZta2TTQ2uI3cfSWVhx6A7bIW/Wj5SVNcGD6XY
 418/0rcrILwiuHAWq2bEWrG3CtJrTzBtQ1S0fQbDDKu7PuyDjJWcpusaTPiE+f8BhmPgO0W9dxqG4
 ANF4a80aclwToWxEzEbz1ZbszC59Wpan34MN2z1REh6gVUGqTNlsaxyfNT/K03UeG6PDgF8dQPSMY
 lB6C1Kf71mwm4Og/bizKfCFlky7D1xuMSKf6R6BoJmtueaOi3urC0I9J+3NpAOum1WYjEIoCK3VOg
 bTdYh5bg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57040)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1nFxk9-0004Zj-N4; Fri, 04 Feb 2022 12:31:13 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1nFxk2-0004yb-7L; Fri, 04 Feb 2022 12:31:06 +0000
Date: Fri, 4 Feb 2022 12:31:06 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Joe Perches <joe@perches.com>
Message-ID: <Yf0cihUQ1byjnh3d@shell.armlinux.org.uk>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <Yf0Wm1kOV1Pss9HJ@shell.armlinux.org.uk>
 <ad56e88206a8d66b715035362abe16ece0bde7d3.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad56e88206a8d66b715035362abe16ece0bde7d3.camel@perches.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Feb 04, 2022 at 04:18:24AM -0800, Joe Perches wrote:
 > On Fri, 2022-02-04 at 12:05 +0000, Russell King (Oracle) wrote: > > On
 Wed, Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote: [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [78.32.30.218 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [78.32.30.218 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nFxku-0004XR-6M
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
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
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

On Fri, Feb 04, 2022 at 04:18:24AM -0800, Joe Perches wrote:
> On Fri, 2022-02-04 at 12:05 +0000, Russell King (Oracle) wrote:
> > On Wed, Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote:
> > > +	if (readb_relaxed(timer->control) & MASK_TCS_TC) {
> > > +		writeb_relaxed(MASK_TCS_TC, timer->control);
> > > +
> > > +		event_handler = READ_ONCE(timer->evt.event_handler);
> > > +		if (event_handler)
> > > +			event_handler(&timer->evt);
> > > +		return IRQ_HANDLED;
> > > +	} else {
> > > +		return IRQ_NONE;
> > > +	}
> > > +}
> 
> It's also less indented code and perhaps clearer to reverse the test
> 
> 	if (!readb_relaxed(timer->control) & MASK_TCS_TC)

This will need to be:

 	if (!(readb_relaxed(timer->control) & MASK_TCS_TC))

> 		return IRQ_NONE;
> 
> 	writeb_relaxed(MASK_TCS_TC, timer->control);
> 
> 	event_handler = READ_ONCE(timer->evt.event_handler);
> 	if (event_handler)
> 		event_handler(&timer->evt);
> 
> 	return IRQ_HANDLED;
> 
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
