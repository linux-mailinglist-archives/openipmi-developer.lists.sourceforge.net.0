Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D784478711E
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Aug 2023 16:08:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qZB0y-0005WA-MZ;
	Thu, 24 Aug 2023 14:08:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=Q3Mp=EJ=robh_at_kernel.org=rob@kernel.org>)
 id 1qZB0w-0005W4-Jq for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 14:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UKozvatRXhBctbLLVoOllFwYvB/bWdCZHDRIR6Aq7FE=; b=buIVjf6Hggts+wkOYtnHYZupC2
 e8+QxdwprlIId0aqfUvMqb8Y07de4FWmWLAblApJIJ7s2agDXc5g+p2rte0BxOaG+Wd17NgZl28hg
 7/EmbADtY85yu34iCH+vtBhb3p87lbX58bXZdXqcK5RFKuD1xR9JSJPx6hO60o6lOV0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UKozvatRXhBctbLLVoOllFwYvB/bWdCZHDRIR6Aq7FE=; b=CEu6Ce09xV8Huv3vE2v8oR3xL7
 iPHjmxa3UEsHEtmwpbRfbb9jS+zYur2gePNcLif/Mv7JDlQcYCmP8QuTfknB8sKPUWKlAgTFpsKfo
 otjWfO9+0MUk7bBj7fXaKexklTT51pZgQKP459mBS1ygslPuCnfdwP14t3zxY4Noy1ME=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qZB0u-00EJZe-Ru for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 14:08:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 429A26509A;
 Thu, 24 Aug 2023 14:08:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C84DC433C8;
 Thu, 24 Aug 2023 14:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1692886118;
 bh=Txv2hLu3aNTzAJTERw9RD8bqeBXNErQSFrwmmEc0au8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kp/1S1ZFiWvvuWExBcwO/OObuBsvLi9vpHONcBnBulHBYsKh6etFwSXLCht3YMPDY
 q3DtqvUXyK6BuS6p7O0E1EvsuLphrBEvXUuCl4B2cV+DmABIhs09OJ8UWPmhbtzW8T
 plYop65+oQA6dhe+cH4ywZPp2RO25QXDLDsIYi+xjGEg0zEyfQkT/2ac89u8jeiRsc
 A8YQPQX0/xIoUfBHcIK6l6YATFhR34HKsIw/R/5jvau4fSX0FRplzzUqgJ0uuIuEZR
 0L5r3b0+iLneCymF/gr/VEJTqFQnTrOkt3gkgNBludZ4GuF3IyCco/vzA3UUROOlv8
 iL0wOedoKYCTQ==
Received: (nullmailer pid 715627 invoked by uid 1000);
 Thu, 24 Aug 2023 14:08:33 -0000
Date: Thu, 24 Aug 2023 09:08:33 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <169288610889.715445.11107086315099689865.robh@kernel.org>
References: <20230823183749.2609013-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 23 Aug 2023 13:28:47 -0500,
 Rob Herring wrote: > Cleanup
 bindings dropping the last remaining unneeded quotes. With this, > the check
 for this can be enabled in yamllint. > > Signed-off-by: Ro [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qZB0u-00EJZe-Ru
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Drop remaining
 unneeded quotes
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
Cc: alsa-devel@alsa-project.org, Emil Renner Berthing <kernel@esmil.dk>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-mips@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 James Clark <james.clark@arm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-i3c@lists.infradead.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Magnus Damm <magnus.damm@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Ulf Hansson <ulf.hansson@linaro.org>, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>, coresight@lists.linaro.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-gpio@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Andy Shevchenko <andy@kernel.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, M ark Brown <broonie@kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Mike Leach <mike.leach@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Wed, 23 Aug 2023 13:28:47 -0500, Rob Herring wrote:
> Cleanup bindings dropping the last remaining unneeded quotes. With this,
> the check for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/arm/arm,embedded-trace-extension.yaml   |  4 ++--
>  .../bindings/arm/arm,trace-buffer-extension.yaml     |  7 ++++---
>  .../devicetree/bindings/arm/arm,vexpress-juno.yaml   |  2 +-
>  .../devicetree/bindings/arm/aspeed/aspeed,sbc.yaml   |  4 ++--
>  .../arm/firmware/tlm,trusted-foundations.yaml        |  4 ++--
>  .../bindings/arm/mstar/mstar,l3bridge.yaml           |  4 ++--
>  .../devicetree/bindings/arm/mstar/mstar,smpctrl.yaml |  4 ++--
>  .../devicetree/bindings/arm/stm32/st,mlahb.yaml      |  4 ++--
>  .../bindings/arm/stm32/st,stm32-syscon.yaml          |  4 ++--
>  .../devicetree/bindings/connector/usb-connector.yaml |  4 ++--
>  Documentation/devicetree/bindings/eeprom/at24.yaml   |  4 ++--
>  Documentation/devicetree/bindings/eeprom/at25.yaml   |  4 ++--
>  .../intel,ixp4xx-network-processing-engine.yaml      |  4 ++--
>  .../bindings/gpio/x-powers,axp209-gpio.yaml          |  4 ++--
>  .../bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml      |  4 ++--
>  .../devicetree/bindings/gpio/xylon,logicvc-gpio.yaml |  4 ++--
>  .../devicetree/bindings/hwmon/iio-hwmon.yaml         |  4 ++--
>  .../bindings/hwmon/starfive,jh71x0-temp.yaml         |  8 ++++----
>  .../devicetree/bindings/i3c/mipi-i3c-hci.yaml        |  4 ++--
>  .../devicetree/bindings/iio/accel/fsl,mma7455.yaml   |  4 ++--
>  .../bindings/iio/adc/atmel,sama9260-adc.yaml         |  4 ++--
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml        |  8 ++++----
>  .../devicetree/bindings/ipmi/ipmi-ipmb.yaml          |  2 +-
>  .../devicetree/bindings/ipmi/ipmi-smic.yaml          |  2 +-
>  .../bindings/media/qcom,msm8916-venus.yaml           |  4 ++--
>  .../bindings/mips/loongson/ls2k-reset.yaml           |  4 ++--
>  .../bindings/mips/loongson/rs780e-acpi.yaml          |  4 ++--
>  .../misc/intel,ixp4xx-ahb-queue-manager.yaml         |  4 ++--
>  .../devicetree/bindings/mmc/marvell,xenon-sdhci.yaml |  4 ++--
>  .../bindings/mtd/microchip,mchp48l640.yaml           |  4 ++--
>  .../devicetree/bindings/soc/aspeed/uart-routing.yaml |  4 ++--
>  .../bindings/soc/intel/intel,hps-copy-engine.yaml    |  4 ++--
>  .../bindings/soc/litex/litex,soc-controller.yaml     |  4 ++--
>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml     |  4 ++--
>  .../devicetree/bindings/soc/ti/k3-ringacc.yaml       |  4 ++--
>  .../devicetree/bindings/sound/dialog,da7219.yaml     |  4 ++--
>  .../bindings/sound/nvidia,tegra-audio-max9808x.yaml  | 12 ++++++------
>  .../bindings/sound/nvidia,tegra-audio-rt5631.yaml    |  8 ++++----
>  .../devicetree/bindings/ufs/ufs-common.yaml          |  2 +-
>  .../bindings/watchdog/toshiba,visconti-wdt.yaml      |  4 ++--
>  40 files changed, 88 insertions(+), 87 deletions(-)
> 

Applied, thanks!



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
