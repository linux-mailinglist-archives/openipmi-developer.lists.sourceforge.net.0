Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E45444A9ACF
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Feb 2022 15:17:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFzPD-00023b-4f; Fri, 04 Feb 2022 14:17:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>) id 1nFyio-0005gf-9n
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 13:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Ca9I/sAMzQIMCAYXBkIkytKRwdb7KuHMc9w1XGE+7A=; b=XSIDx0HkUFO2uQL7t+ZXEJAfur
 9I/hvy1vJiR2wWfDgAXhWWuE+iayeJF+/6wBwHG154gVw7vny1a6N3gARfN7soeQ/WceeYZ7Yiw2a
 7wocNq2QU1jrEaaLdeo+mpBgMd3qAhNt9GMjJ0wkk+kbdkZGATuCdqJletdCBk5+nuy4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Ca9I/sAMzQIMCAYXBkIkytKRwdb7KuHMc9w1XGE+7A=; b=bsqJdlLdC4HPo/2OH2FXMfAc3O
 aJZ9FnxrCX6+oNcq2niztWM50pGKquRUlQQh/TdMtZma4SAaEVVqGsCeqIQG2+aXHcT/en8BanHaq
 6xrLEKkb/42J9dN0ffwqPwb5uS5hs6wtHBieRCayw/AHOkiF30mSomlVu5e/vf2jomb0=;
Received: from [185.16.172.187] (helo=vps0.lunn.ch)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFyii-0003OP-Mf
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 13:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=4Ca9I/sAMzQIMCAYXBkIkytKRwdb7KuHMc9w1XGE+7A=; b=0N30fHOeJKKiEmBzHSSAjOwTCo
 NpvFMTne+ReR7L/rMoQIq2d5/1hRKjsDPqIORGjajQW+UTS2E2q3Z/w61nDp6gVZ6OVzpiYsw2EyW
 pLoL11FZdneTXfJN6pJjgvs7Ay984ejA0+yx0g4+Hjhydr9jhY9l2gbt/i994/BsW7lk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nFyhL-004Gxv-Fm; Fri, 04 Feb 2022 14:32:23 +0100
Date: Fri, 4 Feb 2022 14:32:23 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Message-ID: <Yf0q5/Jus+mz0B2E@lunn.ch>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <Yf0Wm1kOV1Pss9HJ@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yf0Wm1kOV1Pss9HJ@shell.armlinux.org.uk>
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > +#include <linux/init.h> > > +#include <asm/mach/arch.h>
 > > +#include <asm/mach/map.h> > > +#include <linux/of.h> > > +#include
 <linux/of_platform.h>
 > > +#include <linux/clk-provider.h> > > +#in [...] 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nFyii-0003OP-Mf
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

> > +#include <linux/init.h>
> > +#include <asm/mach/arch.h>
> > +#include <asm/mach/map.h>
> > +#include <linux/of.h>
> > +#include <linux/of_platform.h>
> > +#include <linux/clk-provider.h>
> > +#include <linux/clocksource.h>
> 
> It's normal to list all linux/ includes before asm/ includes. Please
> rearrange.

Hi Nick

Since you are new to the kernel, please let me point out, you should
consider Russell comments for all your code, not just this one file.
Many of the comments are generic to code anywhere in the kernel. So it
would be good to fix the same issues in the rest of your code base
before submitting them.

I would also suggest that when you start submitting drivers, submit
just one or two to start with. You will learn a lot from the feedback
you get, and you can apply what you have learnt to the rest of your
code before you post them for review.

I would also suggest you spend 30 minutes a day just reading comments
other patches receive. You can also learn a lot that way, see if the
comments apply to your own code. You will also learn about processes
this way, which can be just as challenging to get right as code.

     Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
