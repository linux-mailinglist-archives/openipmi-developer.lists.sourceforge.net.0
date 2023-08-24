Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAA4788917
	for <lists+openipmi-developer@lfdr.de>; Fri, 25 Aug 2023 15:55:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qZXHj-0004XR-LF;
	Fri, 25 Aug 2023 13:55:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <alexandre.belloni@bootlin.com>) id 1qZGts-0007z6-Fu
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 20:25:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ujvMeJdRrlwdpn7qQgMLktbCGIyae1LBRG+zxTv3lqU=; b=TjVqkmjnHCdDeI205KCOD/liZp
 G5imJSWGIgpVm7258/htDwq1ED0lW79YEuKGMtDmLu8ez5FzWF4dye9WPZFVgosNX7x6tRstIlee3
 Owk/FsaL60bexj4r/UVKtLOxUyAzGr6xb5ZLT2yTsjHXn9L7yFVDSyIwr4AIq+QFAGzQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ujvMeJdRrlwdpn7qQgMLktbCGIyae1LBRG+zxTv3lqU=; b=MppYoLFMAyJEgeLQk6Up4rDuvw
 oYutBnixvHQtJ517ogzEAoWwcxMNkTgFJCRGUy/cMPRI23/+BnbI0da3LB+sReXSf+M3kzOfuJwsY
 VjNmMdvKJYk++1Gd+T4c1XhQrgp1Ot0wX6qcx3PyLDJceP5MQTFS980t5Lj1g8NfGuw0=;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qZGtl-00EbYA-5i for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Aug 2023 20:25:53 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 12945240004;
 Thu, 24 Aug 2023 20:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1692908737;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ujvMeJdRrlwdpn7qQgMLktbCGIyae1LBRG+zxTv3lqU=;
 b=Ula8hEOcS+/eKkw3qByvNwkENDIVN4W8dILOW2xA3QeZByi1NFKT4qjpR20ylYIrPR/LPn
 8ZC6T3xf65QonT74gL16iUsIdr1fuBn4EDOGgijSzoAPQ/Fb6/9wr81q4yL1eTihpwM+/d
 fSRL6wO8TBroYggS+h1LB85zHjhOXdzIS2YlpkafjfL685M9ItlEfOxA61XsiZxswwH6HK
 JA9dLTxrCBdPhkJrRkKdm2JLl6bAHCX8ASzdgEHn5qbguMdu7i7IG/LXWSCd6ZshcO7ZLA
 yqmMZES++aBOm7AqwsgUyH2FPWNSXrx+/IFEY7P7uy1f38YVMbAG6o3ie5IJhQ==
Date: Thu, 24 Aug 2023 22:24:02 +0200
To: Rob Herring <robh@kernel.org>
Message-ID: <20230824201756563976f6@mail.local>
References: <20230823183749.2609013-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 23/08/2023 13:28:47-0500, Rob Herring wrote: > Cleanup
 bindings dropping the last remaining unneeded quotes. With this, > the check
 for this can be enabled in yamllint. > > Signed-off-by: Rob Herri [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qZGtl-00EbYA-5i
X-Mailman-Approved-At: Fri, 25 Aug 2023 13:55:35 +0000
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
From: Alexandre Belloni via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-hwmon@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linux-mips@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 James Clark <james.clark@arm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-i3c@lists.infradead.org,
 Lars-Peter Clausen <lars@metafoo.de>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Guenter Roeck <linux@roeck-us.net>, Mike Leach <mike.leach@linaro.org>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, coresight@lists.linaro.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-gpio@vger.kernel.org,
 M ark Brown <broonie@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 23/08/2023 13:28:47-0500, Rob Herring wrote:
> Cleanup bindings dropping the last remaining unneeded quotes. With this,
> the check for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

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
> diff --git a/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml b/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml
> index 108460627d9a..a477a810f9e9 100644
> --- a/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,embedded-trace-extension.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2021, Arm Ltd
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/arm,embedded-trace-extension.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: ARM Embedded Trace Extensions
>  
> diff --git a/Documentation/devicetree/bindings/arm/arm,trace-buffer-extension.yaml b/Documentation/devicetree/bindings/arm/arm,trace-buffer-extension.yaml
> index b1322658063a..8c27e510cb71 100644
> --- a/Documentation/devicetree/bindings/arm/arm,trace-buffer-extension.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,trace-buffer-extension.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2021, Arm Ltd
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/arm,trace-buffer-extension.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/arm,trace-buffer-extension.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: ARM Trace Buffer Extensions
>  
> @@ -19,7 +19,8 @@ description: |
>  
>  properties:
>    $nodename:
> -    const: "trbe"
> +    const: trbe
> +
>    compatible:
>      items:
>        - const: arm,trace-buffer-extension
> diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
> index cdd65881fcdd..8dd6b6446394 100644
> --- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
> +++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
> @@ -143,7 +143,7 @@ patternProperties:
>        "simple-bus". If the compatible is placed in the "motherboard-bus" node,
>        it is stricter and always has two compatibles.
>      type: object
> -    $ref: '/schemas/simple-bus.yaml'
> +    $ref: /schemas/simple-bus.yaml
>      unevaluatedProperties: false
>  
>      properties:
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
> index c72aab706484..b8c5cacb09bd 100644
> --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2021 Joel Stanley, IBM Corp.
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/aspeed/aspeed,sbc.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/aspeed/aspeed,sbc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: ASPEED Secure Boot Controller
>  
> diff --git a/Documentation/devicetree/bindings/arm/firmware/tlm,trusted-foundations.yaml b/Documentation/devicetree/bindings/arm/firmware/tlm,trusted-foundations.yaml
> index 9d1857c0aa07..e3980b659f63 100644
> --- a/Documentation/devicetree/bindings/arm/firmware/tlm,trusted-foundations.yaml
> +++ b/Documentation/devicetree/bindings/arm/firmware/tlm,trusted-foundations.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/firmware/tlm,trusted-foundations.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/firmware/tlm,trusted-foundations.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Trusted Foundations
>  
> diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar,l3bridge.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar,l3bridge.yaml
> index 6816bd68f9cf..a8ac4a2d672d 100644
> --- a/Documentation/devicetree/bindings/arm/mstar/mstar,l3bridge.yaml
> +++ b/Documentation/devicetree/bindings/arm/mstar/mstar,l3bridge.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2020 thingy.jp.
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/mstar/mstar,l3bridge.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/mstar/mstar,l3bridge.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: MStar/SigmaStar Armv7 SoC l3bridge
>  
> diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml
> index 599c65980f5d..5739848000b1 100644
> --- a/Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml
> +++ b/Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2020 thingy.jp.
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/mstar/mstar,smpctrl.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/mstar/mstar,smpctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: MStar/SigmaStar Armv7 SoC SMP control registers
>  
> diff --git a/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
> index 2297ad3f4774..d2dce238ff5d 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/stm32/st,mlahb.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/stm32/st,mlahb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: STMicroelectronics STM32 ML-AHB interconnect
>  
> diff --git a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
> index b63ff591ef8f..d083d8ad48b7 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/arm/stm32/st,stm32-syscon.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/arm/stm32/st,stm32-syscon.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: STMicroelectronics STM32 Platforms System Controller
>  
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> index 3ecb51f55a71..7c8a3e8430d3 100644
> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -232,8 +232,8 @@ properties:
>      type: boolean
>  
>  dependencies:
> -  sink-vdos-v1: [ 'sink-vdos' ]
> -  sink-vdos: [ 'sink-vdos-v1' ]
> +  sink-vdos-v1: [ sink-vdos ]
> +  sink-vdos: [ sink-vdos-v1 ]
>  
>  required:
>    - compatible
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
> index 84af0d5f52aa..b1e5dddf9bf4 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2019 BayLibre SAS
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/eeprom/at24.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/eeprom/at24.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: I2C EEPROMs compatible with Atmel's AT24
>  
> diff --git a/Documentation/devicetree/bindings/eeprom/at25.yaml b/Documentation/devicetree/bindings/eeprom/at25.yaml
> index 0e31bb36ebb1..1715b0c9feea 100644
> --- a/Documentation/devicetree/bindings/eeprom/at25.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at25.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/eeprom/at25.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/eeprom/at25.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: SPI EEPROMs or FRAMs compatible with Atmel's AT25
>  
> diff --git a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
> index 9a785bbaafb7..e6bed7d93e2d 100644
> --- a/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
> +++ b/Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2019 Linaro Ltd.
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/firmware/intel,ixp4xx-network-processing-engine.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/firmware/intel,ixp4xx-network-processing-engine.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Intel IXP4xx Network Processing Engine
>  
> diff --git a/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml b/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml
> index 1638cfe90f1c..5eeb29bcdd21 100644
> --- a/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/x-powers,axp209-gpio.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/gpio/x-powers,axp209-gpio.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/gpio/x-powers,axp209-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: X-Powers AXP209 GPIO
>  
> diff --git a/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml b/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml
> index 18e61aff2185..56143f1fe84a 100644
> --- a/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml
> +++ b/Documentation/devicetree/bindings/gpio/xlnx,zynqmp-gpio-modepin.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/gpio/xlnx,zynqmp-gpio-modepin.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/gpio/xlnx,zynqmp-gpio-modepin.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: ZynqMP Mode Pin GPIO controller
>  
> diff --git a/Documentation/devicetree/bindings/gpio/xylon,logicvc-gpio.yaml b/Documentation/devicetree/bindings/gpio/xylon,logicvc-gpio.yaml
> index a36aec27069c..59c79a6943ec 100644
> --- a/Documentation/devicetree/bindings/gpio/xylon,logicvc-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/xylon,logicvc-gpio.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2019 Bootlin
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/gpio/xylon,logicvc-gpio.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/gpio/xylon,logicvc-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Xylon LogiCVC GPIO controller
>  
> diff --git a/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml b/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml
> index c54b5986b365..e5b24782f448 100644
> --- a/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/iio-hwmon.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/hwmon/iio-hwmon.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/hwmon/iio-hwmon.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: ADC-attached Hardware Sensor
>  
> diff --git a/Documentation/devicetree/bindings/hwmon/starfive,jh71x0-temp.yaml b/Documentation/devicetree/bindings/hwmon/starfive,jh71x0-temp.yaml
> index f5b34528928d..733cba780186 100644
> --- a/Documentation/devicetree/bindings/hwmon/starfive,jh71x0-temp.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/starfive,jh71x0-temp.yaml
> @@ -27,8 +27,8 @@ properties:
>  
>    clock-names:
>      items:
> -      - const: "sense"
> -      - const: "bus"
> +      - const: sense
> +      - const: bus
>  
>    '#thermal-sensor-cells':
>      const: 0
> @@ -39,8 +39,8 @@ properties:
>  
>    reset-names:
>      items:
> -      - const: "sense"
> -      - const: "bus"
> +      - const: sense
> +      - const: bus
>  
>  required:
>    - compatible
> diff --git a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
> index c002afdbfc7c..5dda8cb44cdb 100644
> --- a/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
> +++ b/Documentation/devicetree/bindings/i3c/mipi-i3c-hci.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/i3c/mipi-i3c-hci.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/i3c/mipi-i3c-hci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: MIPI I3C HCI
>  
> diff --git a/Documentation/devicetree/bindings/iio/accel/fsl,mma7455.yaml b/Documentation/devicetree/bindings/iio/accel/fsl,mma7455.yaml
> index c8659c5eba2a..cb31e75ba680 100644
> --- a/Documentation/devicetree/bindings/iio/accel/fsl,mma7455.yaml
> +++ b/Documentation/devicetree/bindings/iio/accel/fsl,mma7455.yaml
> @@ -36,8 +36,8 @@ properties:
>      maxItems: 2
>      items:
>        enum:
> -        - "INT1"
> -        - "INT2"
> +        - INT1
> +        - INT2
>  
>  required:
>    - compatible
> diff --git a/Documentation/devicetree/bindings/iio/adc/atmel,sama9260-adc.yaml b/Documentation/devicetree/bindings/iio/adc/atmel,sama9260-adc.yaml
> index e6a1f915b542..1f30a8569187 100644
> --- a/Documentation/devicetree/bindings/iio/adc/atmel,sama9260-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/atmel,sama9260-adc.yaml
> @@ -56,8 +56,8 @@ properties:
>        String corresponding to an identifier from atmel,adc-res-names property.
>        If not specified, the highest resolution will be used.
>      enum:
> -      - "lowres"
> -      - "highres"
> +      - lowres
> +      - highres
>  
>    atmel,adc-sleep-mode:
>      $ref: /schemas/types.yaml#/definitions/flag
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> index 4ff6fabfcb30..129e32c4c774 100644
> --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> @@ -41,7 +41,7 @@ properties:
>        - description: STR register
>  
>    aspeed,lpc-io-reg:
> -    $ref: '/schemas/types.yaml#/definitions/uint32-array'
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>      minItems: 1
>      maxItems: 2
>      description: |
> @@ -50,7 +50,7 @@ properties:
>        status address may be optionally provided.
>  
>    aspeed,lpc-interrupts:
> -    $ref: "/schemas/types.yaml#/definitions/uint32-array"
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>      minItems: 2
>      maxItems: 2
>      description: |
> @@ -63,12 +63,12 @@ properties:
>  
>    kcs_chan:
>      deprecated: true
> -    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    $ref: /schemas/types.yaml#/definitions/uint32
>      description: The LPC channel number in the controller
>  
>    kcs_addr:
>      deprecated: true
> -    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    $ref: /schemas/types.yaml#/definitions/uint32
>      description: The host CPU IO map address
>  
>  required:
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-ipmb.yaml b/Documentation/devicetree/bindings/ipmi/ipmi-ipmb.yaml
> index 3f25cdb4e99b..52647bff31af 100644
> --- a/Documentation/devicetree/bindings/ipmi/ipmi-ipmb.yaml
> +++ b/Documentation/devicetree/bindings/ipmi/ipmi-ipmb.yaml
> @@ -18,7 +18,7 @@ properties:
>  
>    device_type:
>      items:
> -      - const: "ipmi"
> +      - const: ipmi
>  
>    reg:
>      maxItems: 1
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> index c1b4bf95ef99..4bffa3d86128 100644
> --- a/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> +++ b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> @@ -20,7 +20,7 @@ properties:
>  
>    device_type:
>      items:
> -      - const: "ipmi"
> +      - const: ipmi
>  
>    reg:
>      maxItems: 1
> diff --git a/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml b/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
> index 2350bf4b370e..9410f13ca97c 100644
> --- a/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,msm8916-venus.yaml
> @@ -40,7 +40,7 @@ properties:
>  
>      properties:
>        compatible:
> -        const: "venus-decoder"
> +        const: venus-decoder
>  
>      required:
>        - compatible
> @@ -52,7 +52,7 @@ properties:
>  
>      properties:
>        compatible:
> -        const: "venus-encoder"
> +        const: venus-encoder
>  
>      required:
>        - compatible
> diff --git a/Documentation/devicetree/bindings/mips/loongson/ls2k-reset.yaml b/Documentation/devicetree/bindings/mips/loongson/ls2k-reset.yaml
> index 20b5836efd90..358ac8cd4d1d 100644
> --- a/Documentation/devicetree/bindings/mips/loongson/ls2k-reset.yaml
> +++ b/Documentation/devicetree/bindings/mips/loongson/ls2k-reset.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/mips/loongson/ls2k-reset.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/mips/loongson/ls2k-reset.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Loongson 2K1000 PM Controller
>  
> diff --git a/Documentation/devicetree/bindings/mips/loongson/rs780e-acpi.yaml b/Documentation/devicetree/bindings/mips/loongson/rs780e-acpi.yaml
> index 7c0f9022202c..3e3a3705e879 100644
> --- a/Documentation/devicetree/bindings/mips/loongson/rs780e-acpi.yaml
> +++ b/Documentation/devicetree/bindings/mips/loongson/rs780e-acpi.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/mips/loongson/rs780e-acpi.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/mips/loongson/rs780e-acpi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Loongson RS780E PCH ACPI Controller
>  
> diff --git a/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml b/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml
> index 38ab0499102d..36a9dbdf3f03 100644
> --- a/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml
> +++ b/Documentation/devicetree/bindings/misc/intel,ixp4xx-ahb-queue-manager.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2019 Linaro Ltd.
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/misc/intel,ixp4xx-ahb-queue-manager.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/misc/intel,ixp4xx-ahb-queue-manager.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Intel IXP4xx AHB Queue Manager
>  
> diff --git a/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml b/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml
> index 3ee758886558..3a8e74894ae0 100644
> --- a/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/marvell,xenon-sdhci.yaml
> @@ -71,8 +71,8 @@ properties:
>    marvell,xenon-phy-type:
>      $ref: /schemas/types.yaml#/definitions/string
>      enum:
> -      - "emmc 5.1 phy"
> -      - "emmc 5.0 phy"
> +      - emmc 5.1 phy
> +      - emmc 5.0 phy
>      description: |
>        Xenon support multiple types of PHYs. To select eMMC 5.1 PHY, set:
>        marvell,xenon-phy-type = "emmc 5.1 phy" eMMC 5.1 PHY is the default
> diff --git a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
> index 00882892f47e..0ff32bd00bf6 100644
> --- a/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
> +++ b/Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/mtd/microchip,mchp48l640.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/mtd/microchip,mchp48l640.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Microchip 48l640 (and similar) serial EERAM
>  
> diff --git a/Documentation/devicetree/bindings/soc/aspeed/uart-routing.yaml b/Documentation/devicetree/bindings/soc/aspeed/uart-routing.yaml
> index 6876407124dc..51aaf34acb32 100644
> --- a/Documentation/devicetree/bindings/soc/aspeed/uart-routing.yaml
> +++ b/Documentation/devicetree/bindings/soc/aspeed/uart-routing.yaml
> @@ -3,8 +3,8 @@
>  # # Copyright (c) 2021 Aspeed Technology Inc.
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/soc/aspeed/uart-routing.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/soc/aspeed/uart-routing.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Aspeed UART Routing Controller
>  
> diff --git a/Documentation/devicetree/bindings/soc/intel/intel,hps-copy-engine.yaml b/Documentation/devicetree/bindings/soc/intel/intel,hps-copy-engine.yaml
> index 8634865015cd..ceb81646fe75 100644
> --- a/Documentation/devicetree/bindings/soc/intel/intel,hps-copy-engine.yaml
> +++ b/Documentation/devicetree/bindings/soc/intel/intel,hps-copy-engine.yaml
> @@ -2,8 +2,8 @@
>  # Copyright (C) 2022, Intel Corporation
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/soc/intel/intel,hps-copy-engine.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/soc/intel/intel,hps-copy-engine.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Intel HPS Copy Engine
>  
> diff --git a/Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml b/Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml
> index ecae9fa8561b..a64406ca17b5 100644
> --- a/Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml
> +++ b/Documentation/devicetree/bindings/soc/litex/litex,soc-controller.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2020 Antmicro <www.antmicro.com>
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/soc/litex/litex,soc-controller.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/soc/litex/litex,soc-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: LiteX SoC Controller driver
>  
> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
> index 398663d21ab1..e52e176d8cb3 100644
> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
> @@ -1,8 +1,8 @@
>  # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/soc/renesas/renesas,rzg2l-sysc.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/soc/renesas/renesas,rzg2l-sysc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Renesas RZ/{G2L,V2L} System Controller (SYSC)
>  
> diff --git a/Documentation/devicetree/bindings/soc/ti/k3-ringacc.yaml b/Documentation/devicetree/bindings/soc/ti/k3-ringacc.yaml
> index 22cf9002fee7..4ac00716885e 100644
> --- a/Documentation/devicetree/bindings/soc/ti/k3-ringacc.yaml
> +++ b/Documentation/devicetree/bindings/soc/ti/k3-ringacc.yaml
> @@ -2,8 +2,8 @@
>  # Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/soc/ti/k3-ringacc.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/soc/ti/k3-ringacc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Texas Instruments K3 NavigatorSS Ring Accelerator
>  
> diff --git a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml b/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
> index 2d01956cefbb..19137abdba3e 100644
> --- a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
> +++ b/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
> @@ -74,7 +74,7 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>  
>    dlg,mic-amp-in-sel:
> -    enum: ["diff", "se_p", "se_n"]
> +    enum: [diff, se_p, se_n]
>      description:
>        Mic input source type.
>  
> @@ -124,7 +124,7 @@ properties:
>          $ref: /schemas/types.yaml#/definitions/uint32
>  
>        dlg,jack-ins-det-pty:
> -        enum: ["low", "high"]
> +        enum: [low, high]
>          description:
>            Polarity for jack insertion detection.
>          $ref: /schemas/types.yaml#/definitions/string
> diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml
> index fc89dbd6bf24..c29d7942915c 100644
> --- a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml
> +++ b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-max9808x.yaml
> @@ -35,12 +35,12 @@ properties:
>      items:
>        enum:
>          # Board Connectors
> -        - "Int Spk"
> -        - "Headphone Jack"
> -        - "Earpiece"
> -        - "Headset Mic"
> -        - "Internal Mic 1"
> -        - "Internal Mic 2"
> +        - Int Spk
> +        - Headphone Jack
> +        - Earpiece
> +        - Headset Mic
> +        - Internal Mic 1
> +        - Internal Mic 2
>  
>          # CODEC Pins
>          - HPL
> diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-rt5631.yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-rt5631.yaml
> index a04487002e88..0c8067c3b056 100644
> --- a/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-rt5631.yaml
> +++ b/Documentation/devicetree/bindings/sound/nvidia,tegra-audio-rt5631.yaml
> @@ -31,10 +31,10 @@ properties:
>      items:
>        enum:
>          # Board Connectors
> -        - "Int Spk"
> -        - "Headphone Jack"
> -        - "Mic Jack"
> -        - "Int Mic"
> +        - Int Spk
> +        - Headphone Jack
> +        - Mic Jack
> +        - Int Mic
>  
>          # CODEC Pins
>          - MIC1
> diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> index 47a4e9e1a775..bbaee4f5f7b2 100644
> --- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> +++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
> @@ -74,7 +74,7 @@ properties:
>        Specifies max. load that can be drawn from VCCQ2 supply.
>  
>  dependencies:
> -  freq-table-hz: [ 'clocks' ]
> +  freq-table-hz: [ clocks ]
>  
>  required:
>    - interrupts
> diff --git a/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
> index 51d03d5b08ad..3e9fd49d935e 100644
> --- a/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/toshiba,visconti-wdt.yaml
> @@ -2,8 +2,8 @@
>  # Copyright 2020 Toshiba Electronic Devices & Storage Corporation
>  %YAML 1.2
>  ---
> -$id: "http://devicetree.org/schemas/watchdog/toshiba,visconti-wdt.yaml#"
> -$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +$id: http://devicetree.org/schemas/watchdog/toshiba,visconti-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>  
>  title: Toshiba Visconti SoCs PIUWDT Watchdog timer
>  
> -- 
> 2.40.1
> 
> 
> -- 
> linux-i3c mailing list
> linux-i3c@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-i3c

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
