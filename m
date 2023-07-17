Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A80756617
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Jul 2023 16:15:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qLP0M-0007T0-BK;
	Mon, 17 Jul 2023 14:15:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jarkko@kernel.org>) id 1qLP05-0007SX-J7
 for openipmi-developer@lists.sourceforge.net;
 Mon, 17 Jul 2023 14:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:References:To:From:Subject:Cc:
 Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k2/qwR1rAMw43MB9pANvTEz47qr4G1VG0H5/aNymDYY=; b=FBIkgpILZpw2MXkTWrwbROcXD8
 u/wuMjAI0E1b8GDoObWw8fGGm38H7eTUh/i2e+TbAlr7zQ3aNe9u2P9KudTDRSKzig6AQRYmWB/P8
 nZf675kQGZCJQXZrWi3JWaRaLrUEf9MyMgfdpGQvIBWS3JIcIXj5Kc+/O3GmG0PPzxFE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Content-Type:
 Content-Transfer-Encoding:Mime-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k2/qwR1rAMw43MB9pANvTEz47qr4G1VG0H5/aNymDYY=; b=VG3LsKs+RlF/F3Sj4AFRg7tuzb
 LaDS/AVVTmvyWPN/FBET39zzNQxoDjihpfzcxj0jYbqoFm5Fu+DY0d0LMLzZOoyUKTKqNpz8o49gy
 HraAKKe0CTs/7TavK2REBL/z5o5c3PZq4Ao4/0o1MU5BrexCfN+W1lBJOCG3xGT7cVs0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qLP03-00045R-24 for openipmi-developer@lists.sourceforge.net;
 Mon, 17 Jul 2023 14:14:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A0E6061083;
 Mon, 17 Jul 2023 14:14:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66E21C433C7;
 Mon, 17 Jul 2023 14:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1689603280;
 bh=DsVLgJx2JovG0BwaBnx+6xFRFrkyvGDsH0nInttVSzE=;
 h=Date:Cc:Subject:From:To:References:In-Reply-To:From;
 b=ucKzLgH+gYQ2yeRHpjUzVozbucN60bF3TCnu8zVxmvt8XM4guK8u2YW5zz40XNW+o
 SxXAUnD8/tyKAjpZlzccK3s6pV7RsqSrUHQ6zBDGWZHqyIrsQF5rF+DKseMQK7glYr
 hFurZA14yZingf2xQNYQX6dlkCD/9ymz80dMUmsNMgX7mXuNMKJJjePpZpkoCS5cnd
 smDDnAFsvX7prND8pXk6QtXkaXkujMCGgjleIxOmNa8cZsuhMAbE77VWF8Bv19rQZK
 Z2F4xFH/0IJyUjraJg5PAlTtOnr7xTJ045g27ztrz6BTnuPcKNMwNJdSZhKfFjGCrs
 zFF3/nXHR/bYA==
Mime-Version: 1.0
Date: Mon, 17 Jul 2023 14:14:30 +0000
Message-Id: <CU4IDETDBZ0C.1N1XJ58T5O5K3@seitikki>
From: "Jarkko Sakkinen" <jarkko@kernel.org>
To: "Rob Herring" <robh@kernel.org>, "David Airlie" <airlied@redhat.com>,
 "Arnd Bergmann" <arnd@arndb.de>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Olivia Mackall" <olivia@selenic.com>,
 "Herbert Xu" <herbert@gondor.apana.org.au>, "Nicolas Ferre"
 <nicolas.ferre@microchip.com>, "Alexandre Belloni"
 <alexandre.belloni@bootlin.com>, "Claudiu Beznea"
 <claudiu.beznea@microchip.com>, "Florian Fainelli"
 <florian.fainelli@broadcom.com>, "Broadcom internal kernel review list"
 <bcm-kernel-feedback-list@broadcom.com>, "Ray Jui" <rjui@broadcom.com>,
 "Scott Branden" <sbranden@broadcom.com>, "Avi Fishman"
 <avifishman70@gmail.com>, "Tomer Maimon" <tmaimon77@gmail.com>, "Tali
 Perry" <tali.perry1@gmail.com>, "Patrick Venture" <venture@google.com>,
 "Nancy Yuen" <yuenn@google.com>, "Benjamin Fair" <benjaminfair@google.com>,
 "Deepak Saxena" <dsaxena@plexity.net>, "Michael Ellerman"
 <mpe@ellerman.id.au>, "Nicholas Piggin" <npiggin@gmail.com>, "Christophe
 Leroy" <christophe.leroy@csgroup.eu>, "Maxime Coquelin"
 <mcoquelin.stm32@gmail.com>, "Alexandre Torgue"
 <alexandre.torgue@foss.st.com>, "Corey Minyard" <minyard@acm.org>, "Joel
 Stanley" <joel@jms.id.au>, "Andrew Jeffery" <andrew@aj.id.au>, "Peter
 Huewe" <peterhuewe@gmx.de>, "Jason Gunthorpe" <jgg@ziepe.ca>
X-Mailer: aerc 0.14.0
References: <20230714174315.4052438-1-robh@kernel.org>
In-Reply-To: <20230714174315.4052438-1-robh@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri Jul 14, 2023 at 5:43 PM UTC, Rob Herring wrote: > The
 DT of_device.h and of_platform.h date back to the separate >
 of_platform_bus_type
 before it as merged into the regular platform bus. > As p [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qLP03-00045R-24
Subject: Re: [Openipmi-developer] [PATCH] char: Explicitly include correct
 DT includes
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rpi-kernel@lists.infradead.org,
 linux-integrity@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linuxppc-dev@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri Jul 14, 2023 at 5:43 PM UTC, Rob Herring wrote:
> The DT of_device.h and of_platform.h date back to the separate
> of_platform_bus_type before it as merged into the regular platform bus.
> As part of that merge prepping Arm DT support 13 years ago, they
> "temporarily" include each other. They also include platform_device.h
> and of.h. As a result, there's a pretty much random mix of those include
> files used throughout the tree. In order to detangle these headers and
> replace the implicit includes with struct declarations, users need to
> explicitly include the correct includes.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/char/agp/uninorth-agp.c        | 1 +
>  drivers/char/bsr.c                     | 3 +--
>  drivers/char/hw_random/atmel-rng.c     | 2 +-
>  drivers/char/hw_random/bcm2835-rng.c   | 3 +--
>  drivers/char/hw_random/ingenic-trng.c  | 2 +-
>  drivers/char/hw_random/iproc-rng200.c  | 3 +--
>  drivers/char/hw_random/npcm-rng.c      | 3 +--
>  drivers/char/hw_random/omap-rng.c      | 2 --
>  drivers/char/hw_random/omap3-rom-rng.c | 1 -
>  drivers/char/hw_random/pasemi-rng.c    | 3 +--
>  drivers/char/hw_random/pic32-rng.c     | 3 +--
>  drivers/char/hw_random/stm32-rng.c     | 3 ++-
>  drivers/char/hw_random/xgene-rng.c     | 5 ++---
>  drivers/char/hw_random/xiphera-trng.c  | 1 -
>  drivers/char/ipmi/kcs_bmc_aspeed.c     | 1 -
>  drivers/char/tpm/tpm_ftpm_tee.c        | 1 -
>  drivers/char/tpm/tpm_tis.c             | 1 -
>  drivers/char/tpm/tpm_tis_spi_main.c    | 2 +-
>  drivers/char/tpm/tpm_tis_synquacer.c   | 1 -
>  19 files changed, 14 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/char/agp/uninorth-agp.c b/drivers/char/agp/uninorth-agp.c
> index 62de7f4ba864..84411b13c49f 100644
> --- a/drivers/char/agp/uninorth-agp.c
> +++ b/drivers/char/agp/uninorth-agp.c
> @@ -3,6 +3,7 @@
>   * UniNorth AGPGART routines.
>   */
>  #include <linux/module.h>
> +#include <linux/of.h>
>  #include <linux/pci.h>
>  #include <linux/slab.h>
>  #include <linux/init.h>
> diff --git a/drivers/char/bsr.c b/drivers/char/bsr.c
> index 12143854aeac..70d31aed9011 100644
> --- a/drivers/char/bsr.c
> +++ b/drivers/char/bsr.c
> @@ -6,11 +6,10 @@
>   * Author: Sonny Rao <sonnyrao@us.ibm.com>
>   */
>  
> +#include <linux/device.h>
>  #include <linux/kernel.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> -#include <linux/of_device.h>
> -#include <linux/of_platform.h>
>  #include <linux/fs.h>
>  #include <linux/module.h>
>  #include <linux/cdev.h>
> diff --git a/drivers/char/hw_random/atmel-rng.c b/drivers/char/hw_random/atmel-rng.c
> index b8effe77d80f..a37367ebcbac 100644
> --- a/drivers/char/hw_random/atmel-rng.c
> +++ b/drivers/char/hw_random/atmel-rng.c
> @@ -15,7 +15,7 @@
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
>  #include <linux/hw_random.h>
> -#include <linux/of_device.h>
> +#include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  
> diff --git a/drivers/char/hw_random/bcm2835-rng.c b/drivers/char/hw_random/bcm2835-rng.c
> index e98fcac578d6..e19b0f9f48b9 100644
> --- a/drivers/char/hw_random/bcm2835-rng.c
> +++ b/drivers/char/hw_random/bcm2835-rng.c
> @@ -8,8 +8,7 @@
>  #include <linux/io.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> -#include <linux/of_address.h>
> -#include <linux/of_platform.h>
> +#include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/printk.h>
>  #include <linux/clk.h>
> diff --git a/drivers/char/hw_random/ingenic-trng.c b/drivers/char/hw_random/ingenic-trng.c
> index 0eb80f786f4d..759445d4f65a 100644
> --- a/drivers/char/hw_random/ingenic-trng.c
> +++ b/drivers/char/hw_random/ingenic-trng.c
> @@ -11,8 +11,8 @@
>  #include <linux/hw_random.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
> -#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>  
> diff --git a/drivers/char/hw_random/iproc-rng200.c b/drivers/char/hw_random/iproc-rng200.c
> index 06bc060534d8..34df3f0d3e45 100644
> --- a/drivers/char/hw_random/iproc-rng200.c
> +++ b/drivers/char/hw_random/iproc-rng200.c
> @@ -12,8 +12,7 @@
>  #include <linux/io.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> -#include <linux/of_address.h>
> -#include <linux/of_platform.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/platform_device.h>
>  #include <linux/delay.h>
>  
> diff --git a/drivers/char/hw_random/npcm-rng.c b/drivers/char/hw_random/npcm-rng.c
> index 9903d0357e06..8a304b754217 100644
> --- a/drivers/char/hw_random/npcm-rng.c
> +++ b/drivers/char/hw_random/npcm-rng.c
> @@ -8,12 +8,11 @@
>  #include <linux/init.h>
>  #include <linux/random.h>
>  #include <linux/err.h>
> +#include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/hw_random.h>
>  #include <linux/delay.h>
> -#include <linux/of_irq.h>
>  #include <linux/pm_runtime.h>
> -#include <linux/of_device.h>
>  
>  #define NPCM_RNGCS_REG		0x00	/* Control and status register */
>  #define NPCM_RNGD_REG		0x04	/* Data register */
> diff --git a/drivers/char/hw_random/omap-rng.c b/drivers/char/hw_random/omap-rng.c
> index 00ff96703dd2..be03f76a2a80 100644
> --- a/drivers/char/hw_random/omap-rng.c
> +++ b/drivers/char/hw_random/omap-rng.c
> @@ -26,8 +26,6 @@
>  #include <linux/slab.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/of.h>
> -#include <linux/of_device.h>
> -#include <linux/of_address.h>
>  #include <linux/interrupt.h>
>  #include <linux/clk.h>
>  #include <linux/io.h>
> diff --git a/drivers/char/hw_random/omap3-rom-rng.c b/drivers/char/hw_random/omap3-rom-rng.c
> index f06e4f95114f..18dc46b1b58e 100644
> --- a/drivers/char/hw_random/omap3-rom-rng.c
> +++ b/drivers/char/hw_random/omap3-rom-rng.c
> @@ -20,7 +20,6 @@
>  #include <linux/err.h>
>  #include <linux/io.h>
>  #include <linux/of.h>
> -#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  
> diff --git a/drivers/char/hw_random/pasemi-rng.c b/drivers/char/hw_random/pasemi-rng.c
> index 2498d4ef9fe2..6959d6edd44c 100644
> --- a/drivers/char/hw_random/pasemi-rng.c
> +++ b/drivers/char/hw_random/pasemi-rng.c
> @@ -9,11 +9,10 @@
>  
>  #include <linux/module.h>
>  #include <linux/kernel.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/platform_device.h>
>  #include <linux/hw_random.h>
>  #include <linux/delay.h>
> -#include <linux/of_address.h>
> -#include <linux/of_platform.h>
>  #include <linux/io.h>
>  
>  #define SDCRNG_CTL_REG			0x00
> diff --git a/drivers/char/hw_random/pic32-rng.c b/drivers/char/hw_random/pic32-rng.c
> index 99c8bd0859a1..728b68b1a496 100644
> --- a/drivers/char/hw_random/pic32-rng.c
> +++ b/drivers/char/hw_random/pic32-rng.c
> @@ -12,9 +12,8 @@
>  #include <linux/hw_random.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> +#include <linux/mod_devicetable.h>
>  #include <linux/module.h>
> -#include <linux/of.h>
> -#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
>  
> diff --git a/drivers/char/hw_random/stm32-rng.c b/drivers/char/hw_random/stm32-rng.c
> index a6731cf0627a..efb6a9f9a11b 100644
> --- a/drivers/char/hw_random/stm32-rng.c
> +++ b/drivers/char/hw_random/stm32-rng.c
> @@ -10,8 +10,9 @@
>  #include <linux/iopoll.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> +#include <linux/of.h>
>  #include <linux/of_address.h>
> -#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
> diff --git a/drivers/char/hw_random/xgene-rng.c b/drivers/char/hw_random/xgene-rng.c
> index 7c8f3cb7c6af..c25bb169563d 100644
> --- a/drivers/char/hw_random/xgene-rng.c
> +++ b/drivers/char/hw_random/xgene-rng.c
> @@ -15,9 +15,8 @@
>  #include <linux/init.h>
>  #include <linux/interrupt.h>
>  #include <linux/module.h>
> -#include <linux/of_platform.h>
> -#include <linux/of_irq.h>
> -#include <linux/of_address.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/platform_device.h>
>  #include <linux/timer.h>
>  
>  #define RNG_MAX_DATUM			4
> diff --git a/drivers/char/hw_random/xiphera-trng.c b/drivers/char/hw_random/xiphera-trng.c
> index 2a9fea72b2e0..2c586d1fe8a9 100644
> --- a/drivers/char/hw_random/xiphera-trng.c
> +++ b/drivers/char/hw_random/xiphera-trng.c
> @@ -7,7 +7,6 @@
>  #include <linux/err.h>
>  #include <linux/io.h>
>  #include <linux/hw_random.h>
> -#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/delay.h>
>  
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 2dea8cd5a09a..72640da55380 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -14,7 +14,6 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> -#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/poll.h>
>  #include <linux/regmap.h>
> diff --git a/drivers/char/tpm/tpm_ftpm_tee.c b/drivers/char/tpm/tpm_ftpm_tee.c
> index 528f35b14fb6..76adb108076c 100644
> --- a/drivers/char/tpm/tpm_ftpm_tee.c
> +++ b/drivers/char/tpm/tpm_ftpm_tee.c
> @@ -11,7 +11,6 @@
>  
>  #include <linux/acpi.h>
>  #include <linux/of.h>
> -#include <linux/of_platform.h>
>  #include <linux/platform_device.h>
>  #include <linux/tee_drv.h>
>  #include <linux/tpm.h>
> diff --git a/drivers/char/tpm/tpm_tis.c b/drivers/char/tpm/tpm_tis.c
> index 7db3593941ea..e4030404c64e 100644
> --- a/drivers/char/tpm/tpm_tis.c
> +++ b/drivers/char/tpm/tpm_tis.c
> @@ -25,7 +25,6 @@
>  #include <linux/acpi.h>
>  #include <linux/freezer.h>
>  #include <linux/of.h>
> -#include <linux/of_device.h>
>  #include <linux/kernel.h>
>  #include <linux/dmi.h>
>  #include "tpm.h"
> diff --git a/drivers/char/tpm/tpm_tis_spi_main.c b/drivers/char/tpm/tpm_tis_spi_main.c
> index 1f5207974a17..c6101914629d 100644
> --- a/drivers/char/tpm/tpm_tis_spi_main.c
> +++ b/drivers/char/tpm/tpm_tis_spi_main.c
> @@ -28,7 +28,7 @@
>  #include <linux/module.h>
>  #include <linux/slab.h>
>  
> -#include <linux/of_device.h>
> +#include <linux/of.h>
>  #include <linux/spi/spi.h>
>  #include <linux/tpm.h>
>  
> diff --git a/drivers/char/tpm/tpm_tis_synquacer.c b/drivers/char/tpm/tpm_tis_synquacer.c
> index 49278746b0e2..7f9b4bfceb6e 100644
> --- a/drivers/char/tpm/tpm_tis_synquacer.c
> +++ b/drivers/char/tpm/tpm_tis_synquacer.c
> @@ -9,7 +9,6 @@
>  #include <linux/module.h>
>  #include <linux/slab.h>
>  #include <linux/of.h>
> -#include <linux/of_device.h>
>  #include <linux/kernel.h>
>  #include "tpm.h"
>  #include "tpm_tis_core.h"
> -- 
> 2.40.1

drivers/char/tpm/**

Acked-by: Jarkko Sakkinen <jarkko@kernel.org>

BR, Jarkko


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
