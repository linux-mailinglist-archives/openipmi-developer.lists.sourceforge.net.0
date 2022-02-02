Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F004A7947
	for <lists+openipmi-developer@lfdr.de>; Wed,  2 Feb 2022 21:16:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFM3B-0003aa-Tf; Wed, 02 Feb 2022 20:16:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sam@ravnborg.org>) id 1nFKP1-0000tH-AX
 for openipmi-developer@lists.sourceforge.net; Wed, 02 Feb 2022 18:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kZVYY62i9OL1hbZ3eEDL0yWrteW7BHmWhRGp71SWILE=; b=WEni6vgt68AyzoTWGNB5VpBwIC
 +Rp6Zifa2l/vToDReHQbPdnxEkGEzMQu1gRiWjWNHFLu2Z/Uh25lAFGVpjlp5CYWCzzwrObVv6VId
 zvl632EbQ4suvPwUq6s2BJclX9dnB7z7SZk9K1mUh1rUPn3atxQ3d7UTKncZxRfroueM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kZVYY62i9OL1hbZ3eEDL0yWrteW7BHmWhRGp71SWILE=; b=bT5Zq96eUR/0p6jLXgaWQPmZyc
 hR1FZa8ot0UAw/YbLMWtlZkfu9zG2shBD18pKIK0iYtqhzswNdYfnEkprp0/CYCHIF3Y49+J/+mLW
 vqTmEAkAL1pE9h+1C5+hRt4pUJNppEoeE0u7MdqQDQAAxcK1XGTJX3vQOFj34YPH/Csc=;
Received: from mx1.smtp.larsendata.com ([91.221.196.215])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFKOu-00DiXB-TI
 for openipmi-developer@lists.sourceforge.net; Wed, 02 Feb 2022 18:30:45 +0000
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx1.smtp.larsendata.com (Halon) with ESMTPS
 id 12f30462-8454-11ec-b20b-0050568c148b;
 Wed, 02 Feb 2022 18:15:17 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 67A6F194BFA;
 Wed,  2 Feb 2022 19:14:11 +0100 (CET)
Date: Wed, 2 Feb 2022 19:14:08 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: nick.hawkins@hpe.com
Message-ID: <YfrJ8JWjyH9ptV4z@ravnborg.org>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202165315.18282-1-nick.hawkins@hpe.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nick, good to see all this stuff coming mainline, On Wed, 
 Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote: > From: Nick
 Hawkins <nick.hawkins@hpe.com> > > GXP is the name of the HPE SoC. > This
 SoC is used to implement BMC features of HP [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nFKOu-00DiXB-TI
X-Mailman-Approved-At: Wed, 02 Feb 2022 20:16:19 +0000
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
 Vignesh Raghavendra <vigneshr@ti.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 David Airlie <airlied@linux.ie>, verdun@hpe.com,
 Amit Kucheria <amitk@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, netdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stanislav Jakubek <stano.jakubek@gmail.com>, Hao Fang <fanghao11@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-pwm@vger.kernel.org,
 linux-serial@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
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
 linux-usb@vger.kernel.org,
 "Russell King \(Oracle\)" <rmk+kernel@armlinux.org.uk>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Marc Zyngier <maz@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Nick,

good to see all this stuff coming mainline,

On Wed, Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> GXP is the name of the HPE SoC.
> This SoC is used to implement BMC features of HPE servers
> (all ProLiant, Synergy, and many Apollo, and Superdome machines)
> It does support many features including:
> 	ARMv7 architecture, and it is based on a Cortex A9 core
> 	Use an AXI bus to which
> 		a memory controller is attached, as well as
>                  multiple SPI interfaces to connect boot flash,
>                  and ROM flash, a 10/100/1000 Mac engine which
>                  supports SGMII (2 ports) and RMII
> 		Multiple I2C engines to drive connectivity with a host infrastructure
> 		A video engine which support VGA and DP, as well as
>                  an hardware video encoder
> 		Multiple PCIe ports
> 		A PECI interface, and LPC eSPI
> 		Multiple UART for debug purpose, and Virtual UART for host connectivity
> 		A GPIO engine
> This Patch Includes:
> 	Documentation for device tree bindings
> 	Device Tree Bindings
> 	GXP Timer Support
> 	GXP Architecture Support
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../bindings/display/hpe,gxp-thumbnail.txt    |  21 +
>  .../devicetree/bindings/gpio/hpe,gxp-gpio.txt |  16 +
...

All new bindings must be in the DT-schema format (yaml files).
This enables a lot of syntax checks and validation.

We are slowly migrating away from the .txt based bindings.

Also, for new bindings please follow the guide lines listed in
Documentation/devicetree/bindings/submitting-patches.rst

Consider including the bindings with the drivers using the bindings so
things have a more natural split.

	Sam


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
