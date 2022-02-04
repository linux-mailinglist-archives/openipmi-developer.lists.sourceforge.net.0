Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7564A9ACB
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Feb 2022 15:17:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFzPD-00023P-2T; Fri, 04 Feb 2022 14:17:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joe@perches.com>) id 1nFxpb-0007p1-Iw
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 12:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TTYD7A710n89LQ9vI0o0t1Jd/yr3/XBLKa8FSQDU288=; b=k5Qc6sxtHPgJJyKQJBmJEpnUA9
 VJItymlNNXFkJm5ykxSWtCS0Hc6V5izC3fnFs9aT6t559xM28KuykDNN8npMmt2tWjlYtlagX4oiu
 1glbPdIjH9K3OglBlC5G2J1kIU7MQras/zTNVAALLMdB8DG8yMejlwYZtctQBMmzFea8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TTYD7A710n89LQ9vI0o0t1Jd/yr3/XBLKa8FSQDU288=; b=Psy4LKFYPLvKDZhX2lHoDYbTu8
 1Z0WCt6jI9GIt5H6DYO+UIRs3DWlFbgBfpOOZ+oGCJ/lmFkiRvbFktsvAOQUj8qgJiJ5v32xVMFSL
 /2jjFTvpb+Iz2F8w0Hhn7wGu0WmxuCfh8wfUTky0L1Y6Sz2w+WvCLbi5CD+4LYuA1dBc=;
Received: from relay3.hostedemail.com ([64.99.140.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFxpW-00057t-Pr
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 12:36:50 +0000
Received: from omf14.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay06.hostedemail.com (Postfix) with ESMTP id CDA3723327;
 Fri,  4 Feb 2022 12:18:46 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf14.hostedemail.com (Postfix) with ESMTPA id 90F8A2D; 
 Fri,  4 Feb 2022 12:18:11 +0000 (UTC)
Message-ID: <ad56e88206a8d66b715035362abe16ece0bde7d3.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>, nick.hawkins@hpe.com
Date: Fri, 04 Feb 2022 04:18:24 -0800
In-Reply-To: <Yf0Wm1kOV1Pss9HJ@shell.armlinux.org.uk>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
 <Yf0Wm1kOV1Pss9HJ@shell.armlinux.org.uk>
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
X-Spam-Status: No, score=2.74
X-Stat-Signature: sr19sijeo6q79z8ey9jcj9w15gn7bijc
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 90F8A2D
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/fXooa1LZuZOlkfFu/TpMmSAbR8ShcuZI=
X-HE-Tag: 1643977091-269336
X-Spam-Score: 3.7 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2022-02-04 at 12:05 +0000,
 Russell King (Oracle) wrote:
 > On Wed, Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote: []
 > > diff --git a/drivers/clocksource/Makefile b/drivers/clock [...] 
 Content analysis details:   (3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [64.99.140.32 listed in dnsbl-1.uceprotect.net]
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [64.99.140.32 listed in psbl.surriel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nFxpW-00057t-Pr
X-Mailman-Approved-At: Fri, 04 Feb 2022 14:17:38 +0000
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
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
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

On Fri, 2022-02-04 at 12:05 +0000, Russell King (Oracle) wrote:
> On Wed, Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote:
[]
> > diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
[]
> > +static irqreturn_t gxp_time_interrupt(int irq, void *dev_id)
> > +{
> > +	struct gxp_timer *timer = dev_id;
> > +	void (*event_handler)(struct clock_event_device *timer);
> > +
> > +
> 
> One too many blank lines.
> 
> > +	if (readb_relaxed(timer->control) & MASK_TCS_TC) {
> > +		writeb_relaxed(MASK_TCS_TC, timer->control);
> > +
> > +		event_handler = READ_ONCE(timer->evt.event_handler);
> > +		if (event_handler)
> > +			event_handler(&timer->evt);
> > +		return IRQ_HANDLED;
> > +	} else {
> > +		return IRQ_NONE;
> > +	}
> > +}

It's also less indented code and perhaps clearer to reverse the test

	if (!readb_relaxed(timer->control) & MASK_TCS_TC)
		return IRQ_NONE;

	writeb_relaxed(MASK_TCS_TC, timer->control);

	event_handler = READ_ONCE(timer->evt.event_handler);
	if (event_handler)
		event_handler(&timer->evt);

	return IRQ_HANDLED;




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
