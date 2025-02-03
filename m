Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E277A25EEE
	for <lists+openipmi-developer@lfdr.de>; Mon,  3 Feb 2025 16:37:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1teyVi-00039s-RU;
	Mon, 03 Feb 2025 15:37:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1teyVh-00039l-GK
 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 15:37:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Message-Id:References:In-Reply-To:To:Cc:
 From:MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=neMi7rrM4u2QYObg85ewQokvp8sxvRfILY6POSHdBQA=; b=TUScK87ypC+WXeuuq5f1tQzsTA
 CovPBocbZTXWJYbDbH1URgQSt87gpYfEgq2QMYk1AySXa3FYRnh8F2G6u3EYOiYcegycKW/aF4Vzi
 3DAsgDVAhi20CcrdTlW4LMtbvf2bNj/T6qk9UMVDfKAxG0yp88jpDUQcds7NK5EOUsts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Message-Id:References:In-Reply-To:To:Cc:From:MIME-Version:
 Content-Transfer-Encoding:Content-Type:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=neMi7rrM4u2QYObg85ewQokvp8sxvRfILY6POSHdBQA=; b=iiyBt5WV4z/dfXpPsDURr7yKAW
 GyKn8nUpSOWNqcAhGRhA2H54aO73Dkm2cwim8mNtRCYDxKf6t1lEH0oH2DW4hfA55u85GECiF4/gp
 cOLQ8guzCYcfwJLqBoz5kfBXQphOUUPDMt427bsqmuZQTjLg8F01Kga/s1q3agjooxvM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1teyVg-0000os-GZ for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 15:37:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0F0E15C6594;
 Mon,  3 Feb 2025 15:36:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91200C4CED2;
 Mon,  3 Feb 2025 15:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1738597030;
 bh=zxuCVc3egPezHDqToqET5g5++zkJ6jbKo4UuMIaT+WQ=;
 h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
 b=IN275eiCLwwUJezABuTmgS/US0CW0NZ1G/NPDhDwL0OEXm9WFnsDHjXtv3CUH1K/m
 gnLsaN11HXs/h+hRoYeIBYDx5d1K2Muckr4/8MK7KYcKT8DNAvdxQ0lS673B9Q31af
 9mYoDVPwUB5n6Jpys8Ad5YoevQXO6zg+F95xCEN8lQKLfB+3/HtWXwTTybFP84jZQy
 SxDr1iRDQwF3ls3f/aDfoyvmQLMTSGnJZMxk6Iad3TjfBMmfinoCNHRLiGRL4aWrJ9
 CvpyxtkZg1F87bHwO+tHTkBibNedX7Mktf1+Qd/xhp+Gh3l/7/Ff1hsTZfdheqhila
 lxdB+s965rIEg==
Date: Mon, 03 Feb 2025 09:37:09 -0600
MIME-Version: 1.0
To: Ninad Palsule <ninad@linux.ibm.com>
In-Reply-To: <20250203144422.269948-1-ninad@linux.ibm.com>
References: <20250203144422.269948-1-ninad@linux.ibm.com>
Message-Id: <173859694889.2601726.10618336219726193824.robh@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 03 Feb 2025 08:44:10 -0600, Ninad Palsule wrote: >
 Hello, > > Please review the patch set version 7. > > V7: > --- > - Updated
 pattern in the ast2400-gpio.yaml > - Dropped "dt-bindings: net: f [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1teyVg-0000os-GZ
Subject: Re: [Openipmi-developer] [PATCH v7 0/9] DTS updates for system1 BMC
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, pabeni@redhat.com,
 linux-aspeed@lists.ozlabs.org, minyard@acm.org, netdev@vger.kernel.org,
 linus.walleij@linaro.org, eajames@linux.ibm.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, andrew+netdev@lunn.ch, edumazet@google.com,
 kuba@kernel.org, krzk+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 brgl@bgdev.pl, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Mon, 03 Feb 2025 08:44:10 -0600, Ninad Palsule wrote:
> Hello,
> 
> Please review the patch set version 7.
> 
> V7:
> ---
>   - Updated pattern in the ast2400-gpio.yaml
>   - Dropped "dt-bindings: net: faraday,ftgmac100" patch sending it
>     separately.
> 
> V6:
> ---
>   - Fixed dt_binding_check errors for ipmb-dev.yaml
>   - Changed the hog parsing pattern in ast2400-gpio
> 
> V5:
> ---
>   - Improved IPBM device documentation.
>   - Added the hog parsing in ast2400-gpio
> 
> V4:
> ---
>   - Removed "Add RGMII support" patch as it needs some work from the
>     driver side.
>   - Improved IPBM device documentation.
>   - There is a new warning in CHECK_DTBS which are false positive so
>     ignored them.
>     arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dtb: gpio@1e780000: 'hog-0', 'hog-1', 'hog-2', 'hog-3' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> V3:
> ---
>   - Fixed dt_binding_check warnings in ipmb-dev.yaml
>   - Updated title and description in ipmb-dev.yaml file.
>   - Updated i2c-protocol description in ipmb-dev.yaml file.
> 
> V2:
> ---
>   Fixed CHECK_DTBS errors by
>     - Using generic node names
>     - Documenting phy-mode rgmii-rxid in ftgmac100.yaml
>     - Adding binding documentation for IPMB device interface
> 
> NINAD PALSULE (6):
>   ARM: dts: aspeed: system1: Add IPMB device
>   ARM: dts: aspeed: system1: Add GPIO line name
>   ARM: dts: aspeed: system1: Reduce sgpio speed
>   ARM: dts: aspeed: system1: Update LED gpio name
>   ARM: dts: aspeed: system1: Remove VRs max8952
>   ARM: dts: aspeed: system1: Mark GPIO line high/low
> 
> Ninad Palsule (3):
>   bindings: ipmi: Add binding for IPMB device intf
>   dt-bindings: gpio: ast2400-gpio: Add hogs parsing
>   ARM: dts: aspeed: system1: Disable gpio pull down
> 
>  .../bindings/gpio/aspeed,ast2400-gpio.yaml    |   6 +
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    |  56 +++++++
>  .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 139 +++++++++++-------
>  3 files changed, 147 insertions(+), 54 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 
> --
> 2.43.0
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/aspeed/' for 20250203144422.269948-1-ninad@linux.ibm.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-opp-palmetto.dtb: gpio@1e780000: 'pin_func_mode0', 'pin_func_mode1', 'pin_func_mode2', 'pin_gpio_a0', 'pin_gpio_a1', 'pin_gpio_b1', 'pin_gpio_b2', 'pin_gpio_b7', 'pin_gpio_d1', 'pin_gpio_f1', 'pin_gpio_f4', 'pin_gpio_f5', 'pin_gpio_f7', 'pin_gpio_g3', 'pin_gpio_g4', 'pin_gpio_g5', 'pin_gpio_h0', 'pin_gpio_h1', 'pin_gpio_h2', 'pin_gpio_h7' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-romulus.dtb: gpio@1e780000: 'nic_func_mode0', 'nic_func_mode1', 'seq_cont' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-delta-ahe50dc.dtb: gpio@1e780000: 'doom-guardrail' does not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-lanyang.dtb: gpio@1e780000: 'pin_gpio_aa6', 'pin_gpio_aa7', 'pin_gpio_ab0', 'pin_gpio_b0', 'pin_gpio_b5', 'pin_gpio_h5', 'pin_gpio_z2' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-bytedance-g220a.dtb: gpio@1e780000: 'pin_gpio_b6', 'pin_gpio_i3' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dtb: gpio@1e780000: 'usb_power' does not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-bytedance-g220a.dtb: /ahb/apb/bus@1e78a000/interrupt-controller@0: failed to match any schema with compatible: ['aspeed,ast2500-i2c-ic']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c246d4i.dtb: gpio@1e780000: 'bmc-ready' does not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ampere-mtjade.dtb: gpio@1e780000: 'bmc-ready' does not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier.dtb: gpio@1e780000: 'i2c3_mux_oe_n', 'usb_power' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-1s4u.dtb: gpio@1e780000: 'i2c3_mux_oe_n', 'usb_power' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-rainier-4u.dtb: gpio@1e780000: 'i2c3_mux_oe_n', 'usb_power' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-bonnell.dtb: gpio@1e780000: 'usb_power' does not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-nicole.dtb: gpio@1e780000: 'func_mode0', 'func_mode1', 'func_mode2', 'ncsi_cfg', 'seq_cont' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-lenovo-hr855xg2.dtb: gpio@1e780000: 'pin_gpio_a1', 'pin_gpio_a3', 'pin_gpio_aa0', 'pin_gpio_aa4', 'pin_gpio_ab3', 'pin_gpio_ac6', 'pin_gpio_b5', 'pin_gpio_b7', 'pin_gpio_e0', 'pin_gpio_e2', 'pin_gpio_e5', 'pin_gpio_e6', 'pin_gpio_f0', 'pin_gpio_f1', 'pin_gpio_f2', 'pin_gpio_f3', 'pin_gpio_f4', 'pin_gpio_f6', 'pin_gpio_g7', 'pin_gpio_h6', 'pin_gpio_i3', 'pin_gpio_j1', 'pin_gpio_j2', 'pin_gpio_j3', 'pin_gpio_l0', 'pin_gpio_l1', 'pin_gpio_l4', 'pin_gpio_l5', 'pin_gpio_r6', 'pin_gpio_r7', 'pin_gpio_s1', 'pin_gpio_s2', 'pin_gpio_s6', 'pin_gpio_z3' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-lenovo-hr630.dtb: gpio@1e780000: 'pin_gpio_aa0', 'pin_gpio_aa5', 'pin_gpio_b5', 'pin_gpio_f0', 'pin_gpio_f3', 'pin_gpio_f4', 'pin_gpio_f5', 'pin_gpio_g4', 'pin_gpio_g7', 'pin_gpio_h2', 'pin_gpio_h3', 'pin_gpio_i3', 'pin_gpio_j2', 'pin_gpio_j3', 'pin_gpio_s2', 'pin_gpio_s4', 'pin_gpio_s6', 'pin_gpio_y0', 'pin_gpio_y1', 'pin_gpio_z0', 'pin_gpio_z2', 'pin_gpio_z3', 'pin_gpio_z7' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-opp-zaius.dtb: gpio@1e780000: 'line_bmc_i2c2_sw_rst_n', 'line_bmc_i2c5_sw_rst_n', 'line_iso_u146_en', 'ncsi_mux_en_n' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-arm-stardragon4800-rep2.dtb: gpio@1e780000: 'pin_gpio_c7', 'pin_gpio_d1' do not match any of the regexes: '-hog(-[0-9]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,ast2400-gpio.yaml#







_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
