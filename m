Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AA74A9AD0
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Feb 2022 15:17:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nFzPC-00023C-VM; Fri, 04 Feb 2022 14:17:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <linux+openipmi-developer=lists.sourceforge.net@armlinux.org.uk>)
 id 1nFxds-0000je-19
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 12:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/R6k+zfCQLtzC5fphtSolIP5mV88jokWbtj5V/Bndfo=; b=fY4fUtzn0UwechI6EcE33uZIPo
 L1VVadqwtTxQoF9mWw8BfbYa+i96GOEAEXh60q5yvx8mDZLxfgVGNi2Q3XKG7Y2kZzLtI/1Pfao+t
 F0D3TKcGCKtX29wyelM3DsIuXu2omYNThEQKMch2+yFnRA5z2/n9nMDWMSBfeF1/M6GU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/R6k+zfCQLtzC5fphtSolIP5mV88jokWbtj5V/Bndfo=; b=FBgyq/et1agqx/qrl1t9PTpfsq
 XwPHQXBtAHO1HrybuKlCCC+hjuO9GvZKC/424IQylg74tN/dlWzxvoFHkS/fqkIZ2dTIKurst2TKK
 8GQ0XVZRBdc9y1KDrQWr3m5smOvz8T5isPWCPzv/h4fqSVxjbqGRtgwl+wq7fDRbT6i4=;
Received: from pandora.armlinux.org.uk ([78.32.30.218])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nFxdl-0003d9-Mc
 for openipmi-developer@lists.sourceforge.net; Fri, 04 Feb 2022 12:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/R6k+zfCQLtzC5fphtSolIP5mV88jokWbtj5V/Bndfo=; b=vV7FwD6+1HFcDi0WBK1n+WSa7j
 6nwzQzVzi5+eBGfJjLkVBTDdciJmM/ODHbnAIn87wlDZaVGFppfZ+kIcVCeEP48y2KiwVKc1CXNfQ
 HwbFgydFmju4PHbiyUdIr78S1W5mmqAZMOHdMJ60inw6Pv5vWMco470p1tf3mR8GjcuActvmp9Gnr
 Z9+xF0g185xIO5+pwflcRJvACgdLLsPqZdl98F1xB1/Oqr2qR03hqug7ilKFZdiBMIRSQqoHVRy6N
 J+0BDyiJuXcdfPlkRiuNVwP3B59jQ/pap32T5wWhmLteCCuu+rRjcExlmQpfogonB4SlWXln36qcV
 sZ5TRa+A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57036)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1nFxLl-0004VH-H0; Fri, 04 Feb 2022 12:06:01 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1nFxLX-0004xK-P8; Fri, 04 Feb 2022 12:05:47 +0000
Date: Fri, 4 Feb 2022 12:05:47 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: nick.hawkins@hpe.com
Message-ID: <Yf0Wm1kOV1Pss9HJ@shell.armlinux.org.uk>
References: <nick.hawkins@hpe.com>
 <20220202165315.18282-1-nick.hawkins@hpe.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202165315.18282-1-nick.hawkins@hpe.com>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Feb 02, 2022 at 10:52:50AM -0600,
 nick.hawkins@hpe.com
 wrote: > diff --git a/arch/arm/mach-hpe/Makefile b/arch/arm/mach-hpe/Makefile
 > new file mode 100644 > index 000000000000..8b0a91234df4 > [...] 
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
X-Headers-End: 1nFxdl-0003d9-Mc
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

Hi,

On Wed, Feb 02, 2022 at 10:52:50AM -0600, nick.hawkins@hpe.com wrote:
> diff --git a/arch/arm/mach-hpe/Makefile b/arch/arm/mach-hpe/Makefile
> new file mode 100644
> index 000000000000..8b0a91234df4
> --- /dev/null
> +++ b/arch/arm/mach-hpe/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_ARCH_HPE_GXP) += gxp.o
> diff --git a/arch/arm/mach-hpe/gxp.c b/arch/arm/mach-hpe/gxp.c
> new file mode 100644
> index 000000000000..a37838247948
> --- /dev/null
> +++ b/arch/arm/mach-hpe/gxp.c
> @@ -0,0 +1,62 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2022 Hewlett-Packard Enterprise Development Company, L.P.
> + *
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +
> +#include <linux/init.h>
> +#include <asm/mach/arch.h>
> +#include <asm/mach/map.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/clk-provider.h>
> +#include <linux/clocksource.h>

It's normal to list all linux/ includes before asm/ includes. Please
rearrange.

> +
> +#define IOP_REGS_PHYS_BASE 0xc0000000
> +#define IOP_REGS_VIRT_BASE 0xf0000000
> +#define IOP_REGS_SIZE (240*SZ_1M)
> +
> +#define IOP_EHCI_USBCMD 0x0efe0010
> +
> +static struct map_desc gxp_io_desc[] __initdata = {
> +	{
> +	.virtual	= (unsigned long)IOP_REGS_VIRT_BASE,
> +	.pfn		= __phys_to_pfn(IOP_REGS_PHYS_BASE),
> +	.length		= IOP_REGS_SIZE,
> +	.type		= MT_DEVICE,

If you keep this, please indent the above four lines by one more tab.

> +	},
> +};
> +
> +void __init gxp_map_io(void)
> +{
> +	iotable_init(gxp_io_desc, ARRAY_SIZE(gxp_io_desc));
> +}
> +
> +static void __init gxp_dt_init(void)
> +{
> +	/*reset EHCI host controller for clear start*/
> +	__raw_writel(0x00080002,
> +		(void __iomem *)(IOP_REGS_VIRT_BASE + IOP_EHCI_USBCMD));

Please consider making IOP_REGS_VIRT_BASE a 'void __iomem' pointer, it
being a _virtual_ iomem address. This should save you needing repeated
casts except for the initialiser above.

> +	of_platform_populate(NULL, of_default_bus_match_table, NULL, NULL);
> +}
> +
> +static void gxp_restart(enum reboot_mode mode, const char *cmd)
> +{
> +	__raw_writel(1, (void __iomem *) IOP_REGS_VIRT_BASE);
> +}
> +
> +static const char * const gxp_board_dt_compat[] = {
> +	"HPE,GXP",
> +	NULL,
> +};
> +
> +DT_MACHINE_START(GXP_DT, "HPE GXP")
> +	.init_machine	= gxp_dt_init,
> +	.map_io		= gxp_map_io,
> +	.restart	= gxp_restart,
> +	.dt_compat	= gxp_board_dt_compat,
> +MACHINE_END
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index cfb8ea0df3b1..5916dade7608 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -617,6 +617,14 @@ config CLKSRC_ST_LPC
>  	  Enable this option to use the Low Power controller timer
>  	  as clocksource.
>  
> +config GXP_TIMER
> +	bool "GXP timer driver"
> +	depends on ARCH_HPE
> +	default y
> +	help
> +	  Provides a driver for the timer control found on HPE
> +	  GXP SOCs. This is required for all GXP SOCs.
> +
>  config ATCPIT100_TIMER
>  	bool "ATCPIT100 timer driver"
>  	depends on NDS32 || COMPILE_TEST
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index fa5f624eadb6..ffca09ec34de 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -89,3 +89,4 @@ obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
>  obj-$(CONFIG_HYPERV_TIMER)		+= hyperv_timer.o
>  obj-$(CONFIG_MICROCHIP_PIT64B)		+= timer-microchip-pit64b.o
>  obj-$(CONFIG_MSC313E_TIMER)		+= timer-msc313e.o
> +obj-$(CONFIG_GXP_TIMER)			+= gxp_timer.o
> diff --git a/drivers/clocksource/gxp_timer.c b/drivers/clocksource/gxp_timer.c
> new file mode 100644
> index 000000000000..e3c617036e0d
> --- /dev/null
> +++ b/drivers/clocksource/gxp_timer.c
> @@ -0,0 +1,158 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2022 Hewlett-Packard Enterprise Development Company, L.P.
> + *
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/clockchips.h>
> +#include <linux/clocksource.h>
> +#include <linux/interrupt.h>
> +#include <linux/irqreturn.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_platform.h>
> +#include <linux/slab.h>
> +#include <linux/string.h>
> +#include <linux/sched_clock.h>
> +
> +#include <asm/irq.h>

Why do you need asm/irq.h ?

> +
> +#define TIMER0_FREQ 1000000
> +#define TIMER1_FREQ 1000000
> +
> +#define MASK_TCS_ENABLE		0x01
> +#define MASK_TCS_PERIOD		0x02
> +#define MASK_TCS_RELOAD		0x04
> +#define MASK_TCS_TC		0x80
> +
> +struct gxp_timer {
> +	void __iomem *counter;
> +	void __iomem *control;
> +	struct clock_event_device evt;
> +};
> +
> +static void __iomem *system_clock __read_mostly;
> +
> +static u64 notrace gxp_sched_read(void)
> +{
> +	return readl_relaxed(system_clock);
> +}
> +
> +static int gxp_time_set_next_event(unsigned long event,
> +					struct clock_event_device *evt_dev)
> +{
> +	struct gxp_timer *timer = container_of(evt_dev, struct gxp_timer, evt);
> +	/*clear TC by write 1 and disable timer int and counting*/
> +	writeb_relaxed(MASK_TCS_TC, timer->control);
> +	/*update counter value*/
> +	writel_relaxed(event, timer->counter);
> +	/*enable timer counting and int*/
> +	writeb_relaxed(MASK_TCS_TC|MASK_TCS_ENABLE, timer->control);

Spaces around the | please. checkpatch probably should've noticed that.

> +
> +	return 0;
> +}
> +
> +static irqreturn_t gxp_time_interrupt(int irq, void *dev_id)
> +{
> +	struct gxp_timer *timer = dev_id;
> +	void (*event_handler)(struct clock_event_device *timer);
> +
> +

One too many blank lines.

> +	if (readb_relaxed(timer->control) & MASK_TCS_TC) {
> +		writeb_relaxed(MASK_TCS_TC, timer->control);
> +
> +		event_handler = READ_ONCE(timer->evt.event_handler);
> +		if (event_handler)
> +			event_handler(&timer->evt);
> +		return IRQ_HANDLED;
> +	} else {
> +		return IRQ_NONE;
> +	}
> +}
> +
> +static int __init gxp_timer_init(struct device_node *node)
> +{
> +	void __iomem *base_counter;
> +	void __iomem *base_control;
> +	u32 freq;
> +	int ret, irq;
> +	struct gxp_timer *gxp_timer;
> +
> +	base_counter = of_iomap(node, 0);
> +	if (!base_counter) {
> +		pr_err("Can't remap counter registers");
> +		return -ENXIO;
> +	}
> +
> +	base_control = of_iomap(node, 1);
> +	if (!base_control) {
> +		pr_err("Can't remap control registers");

iounmap base_counter?

> +		return -ENXIO;
> +	}
> +
> +	system_clock = of_iomap(node, 2);
> +	if (!system_clock) {
> +		pr_err("Can't remap control registers");

iounmap base_counter and base_control?

> +		return -ENXIO;
> +	}
> +
> +	if (of_property_read_u32(node, "clock-frequency", &freq)) {
> +		pr_err("Can't read clock-frequency\n");
> +		goto err_iounmap;
> +	}
> +
> +	sched_clock_register(gxp_sched_read, 32, freq);
> +	clocksource_mmio_init(system_clock, node->name, freq,
> +				300, 32, clocksource_mmio_readl_up);

We normally align continutation lines in function arguments to the
opening ( thusly:

	clocksource_mmio_init(system_clock, node->name, freq,
			      300, 32, clocksource_mmio_readl_up);

> +
> +	irq = irq_of_parse_and_map(node, 0);
> +	if (irq <= 0) {
> +		ret = -EINVAL;
> +		pr_err("GXP Timer Can't parse IRQ %d", irq);
> +		goto err_iounmap;
> +	}
> +
> +	gxp_timer = kzalloc(sizeof(*gxp_timer), GFP_KERNEL);
> +	if (!gxp_timer) {
> +		ret = -ENOMEM;
> +		goto err_iounmap;
> +	}
> +
> +	gxp_timer->counter = base_counter;
> +	gxp_timer->control = base_control;
> +	gxp_timer->evt.name = node->name;
> +	gxp_timer->evt.rating = 300;
> +	gxp_timer->evt.features = CLOCK_EVT_FEAT_ONESHOT;
> +	gxp_timer->evt.set_next_event = gxp_time_set_next_event;
> +	gxp_timer->evt.cpumask = cpumask_of(0);
> +
> +	if (request_irq(irq, gxp_time_interrupt, IRQF_TIMER | IRQF_SHARED,
> +		node->name, gxp_timer)) {

Again:

	if (request_irq(irq, gxp_time_interrupt, IRQF_TIMER | IRQF_SHARED,
			node->name, gxp_timer)) {

> +		pr_err("%s: request_irq() failed\n", "GXP Timer Tick");

Consider storing the error code from request_irq() and printing it here.
So:

	err = request_irq(...);
	if (err) {
		pr_err("%s: request_irq() failed: %pe\n", "GXP Timer Tick",
		       ERR_PTR(err));

> +		goto err_timer_free;
> +	}
> +
> +	clockevents_config_and_register(&gxp_timer->evt, TIMER0_FREQ,
> +					0xf, 0xffffffff);
> +
> +	pr_info("gxp: system timer (irq = %d)\n", irq);
> +	return 0;
> +
> +
> +err_timer_free:
> +	kfree(gxp_timer);
> +
> +err_iounmap:
> +	iounmap(system_clock);
> +	iounmap(base_control);
> +	iounmap(base_counter);
> +	return ret;
> +}
> +
> +TIMER_OF_DECLARE(gxp, "hpe,gxp-timer", gxp_timer_init);

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
