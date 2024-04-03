Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91459896AFB
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Apr 2024 11:47:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rrxCn-0006E0-UT;
	Wed, 03 Apr 2024 09:46:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rrxCl-0006Ds-H7 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 09:46:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=50ranFTeiR6A3t4Fp0rNMXjxgJPT/OltxVgKXDbM7Ko=; b=ijSnYv3uvrQKyNvFNaNfvpk6wz
 +XBii6mBRYwOdy+Id6Z8lkQUwFmyVZRjJdGeQXnlNOfyvQ9sXhwImP9loF5CI5xhj8dQ/FxDzipXv
 U+GdDQvNA96xWQQ7azTfpwtD8ja21pmmARf8knkUUdk2kJOfx1jsZJhqKUtHZ60HZehA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=50ranFTeiR6A3t4Fp0rNMXjxgJPT/OltxVgKXDbM7Ko=; b=QWUHFqotzZvQkMyx9ukFJvytrb
 /HU8MSG8JiFMMUn7kwC3Ac9TcpoWD4cEtnXd99EoIv6MTtZJ62ry+5BgdRcHrETkCrO6RvPjThb3W
 vrAfjOu6U4KwtcnasJ0blppyY/LbebDiP3Q5DGgTV6l8AffX/fXGrCcE5P2WxAU+pBgo=;
Received: from mgamail.intel.com ([192.198.163.17])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rrxCj-0002j7-KB for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 09:46:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712137610; x=1743673610;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hdQyq38njeULYK9VdARbiJym46CETAEk7WigcOJGITQ=;
 b=PrMgfbBy6wCnruInmuCktVRmta+OHbdGJCA/wk4KPCj2T4KQJtOyRF7G
 c0qyyCPdqIhv+dTSisG7S45B87WQ+pc8p9Lqs5aFsBPF00vztaa3PU/n7
 rb7n0q/JDjEVYHFYa+4SAfonxREHXRMlwkxirZxbt5QDd3KXYaJgZ5QXc
 sj9SBUztSbdb8UY6Fd/v5RSBJi07M3n4mO8gOebCGiJr/eP6O01IM9dCh
 kaQ4wJlahsa+/GbzwMoWjVrP8e/HwmgbTBokvZGEkZhELhGkx2RV4D9zc
 HQ8GfzaR6zWbmX155DD6BIcM0xZmB5+NlOfVWhKjuXaPW90ZJ6K7C2Sh5 A==;
X-CSE-ConnectionGUID: rtgkVWtCS2+wJt9G9MHX6w==
X-CSE-MsgGUID: ko654MxXREyrBsEFpAMfcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7218655"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7218655"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="915175962"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="915175962"
Received: from smile.fi.intel.com (HELO smile) ([10.237.72.54])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:30:49 -0700
Received: from andy by smile with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rrwxA-000000014hw-2roE; Wed, 03 Apr 2024 12:30:44 +0300
Date: Wed, 3 Apr 2024 12:30:44 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <Zg0hxMZGlwfXV2RA@smile.fi.intel.com>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-34-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403080702.3509288-34-arnd@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 03, 2024 at 10:06:51AM +0200,
 Arnd Bergmann wrote:
 > From: Arnd Bergmann <arnd@arndb.de> > > When building with CONFIG_OF and/or
 CONFIG_ACPI disabled but W=1 extra > warnings enabled, a lo [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rrxCj-0002j7-KB
Subject: Re: [Openipmi-developer] [PATCH 33/34] drivers: remove incorrect
 of_match_ptr/ACPI_PTR annotations
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Randy Dunlap <rdunlap@infradead.org>, Tony Lindgren <tony@atomide.com>,
 Tom Rix <trix@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 linux-i2c@vger.kernel.org, Shan-Chun Hung <schung@nuvoton.com>,
 Russell King <linux@armlinux.org.uk>, Peter Huewe <peterhuewe@gmx.de>,
 Jiri Slaby <jirislaby@kernel.org>, linux-rtc@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Corey Minyard <minyard@acm.org>,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 netdev@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-serial@vger.kernel.org,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, linux-fpga@vger.kernel.org,
 Wu Hao <hao.wu@intel.com>, linux-input@vger.kernel.org,
 Jacky Huang <ychuang3@nuvoton.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Jiri Kosina <jikos@kernel.org>,
 Mark Brown <broonie@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Salil Mehta <salil.mehta@huawei.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Xu Yilun <yilun.xu@intel.com>,
 dmaengine@vger.kernel.org, linux-integrity@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 03, 2024 at 10:06:51AM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When building with CONFIG_OF and/or CONFIG_ACPI disabled but W=1 extra
> warnings enabled, a lot of driver cause a warning about an unused
> ID table:
> 
> drivers/char/tpm/tpm_ftpm_tee.c:356:34: error: unused variable 'of_ftpm_tee_ids' [-Werror,-Wunused-const-variable]
> drivers/dma/img-mdc-dma.c:863:34: error: unused variable 'mdc_dma_of_match' [-Werror,-Wunused-const-variable]
> drivers/fpga/versal-fpga.c:62:34: error: unused variable 'versal_fpga_of_match' [-Werror,-Wunused-const-variable]
> drivers/i2c/muxes/i2c-mux-ltc4306.c:200:34: error: unused variable 'ltc4306_of_match' [-Werror,-Wunused-const-variable]
> drivers/i2c/muxes/i2c-mux-reg.c:242:34: error: unused variable 'i2c_mux_reg_of_match' [-Werror,-Wunused-const-variable]
> drivers/memory/pl353-smc.c:62:34: error: unused variable 'pl353_smc_supported_children' [-Werror,-Wunused-const-variable]
> drivers/regulator/pbias-regulator.c:136:34: error: unused variable 'pbias_of_match' [-Werror,-Wunused-const-variable]
> drivers/regulator/twl-regulator.c:552:34: error: unused variable 'twl_of_match' [-Werror,-Wunused-const-variable]
> drivers/regulator/twl6030-regulator.c:645:34: error: unused variable 'twl_of_match' [-Werror,-Wunused-const-variable]
> drivers/scsi/hisi_sas/hisi_sas_v2_hw.c:3635:36: error: unused variable 'sas_v2_acpi_match' [-Werror,-Wunused-const-variable]
> drivers/staging/pi433/pi433_if.c:1359:34: error: unused variable 'pi433_dt_ids' [-Werror,-Wunused-const-variable]
> drivers/tty/serial/amba-pl011.c:2945:34: error: unused variable 'sbsa_uart_of_match' [-Werror,-Wunused-const-variable]
> 
> The fix is always to just remove the of_match_ptr() and ACPI_PTR() wrappers
> that remove the reference, rather than adding another #ifdef just for build
> testing for a configuration that doesn't matter in practice.

> I considered splitting up the large patch into per subsystem patches, but since
> it's really just the same thing everywhere it feels better to do it all at once.

Can we split to three groups:
- Dropping ACPI_PTR()
- Dropping of_match_ptr() (which I won't review in depth, for example)
- Dropping both
?

...

> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -364,7 +364,7 @@ MODULE_DEVICE_TABLE(acpi, acpi_ipmb_id);
>  static struct i2c_driver ipmb_driver = {
>  	.driver = {
>  		.name = "ipmb-dev",
> -		.acpi_match_table = ACPI_PTR(acpi_ipmb_id),
> +		.acpi_match_table = acpi_ipmb_id,
>  	},
>  	.probe = ipmb_probe,
>  	.remove = ipmb_remove,

acpi.h --> mod_devicetable.h.

...

> --- a/drivers/hid/hid-google-hammer.c
> +++ b/drivers/hid/hid-google-hammer.c
> @@ -275,21 +275,19 @@ static const struct acpi_device_id cbas_ec_acpi_ids[] = {
>  };
>  MODULE_DEVICE_TABLE(acpi, cbas_ec_acpi_ids);
>  
> -#ifdef CONFIG_OF
>  static const struct of_device_id cbas_ec_of_match[] = {
>  	{ .compatible = "google,cros-cbas" },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, cbas_ec_of_match);
> -#endif
>  
>  static struct platform_driver cbas_ec_driver = {
>  	.probe = cbas_ec_probe,
>  	.remove = cbas_ec_remove,
>  	.driver = {
>  		.name = "cbas_ec",
> -		.acpi_match_table = ACPI_PTR(cbas_ec_acpi_ids),
> -		.of_match_table = of_match_ptr(cbas_ec_of_match),
> +		.acpi_match_table = cbas_ec_acpi_ids,
> +		.of_match_table = cbas_ec_of_match,
>  		.pm = &cbas_ec_pm_ops,
>  	},
>  };

Ditto, and likely of.h can be also dropped.

...

> --- a/drivers/input/touchscreen/wdt87xx_i2c.c
> +++ b/drivers/input/touchscreen/wdt87xx_i2c.c
> @@ -1166,7 +1166,7 @@ static struct i2c_driver wdt87xx_driver = {
>  		.name = WDT87XX_NAME,
>  		.dev_groups = wdt87xx_groups,
>  		.pm = pm_sleep_ptr(&wdt87xx_pm_ops),
> -		.acpi_match_table = ACPI_PTR(wdt87xx_acpi_id),
> +		.acpi_match_table = wdt87xx_acpi_id,
>  	},
>  };
>  module_i2c_driver(wdt87xx_driver);

Ditto.

...

> --- a/drivers/net/ethernet/apm/xgene-v2/main.c
> +++ b/drivers/net/ethernet/apm/xgene-v2/main.c
> @@ -731,7 +731,7 @@ MODULE_DEVICE_TABLE(acpi, xge_acpi_match);
>  static struct platform_driver xge_driver = {
>  	.driver = {
>  		   .name = "xgene-enet-v2",
> -		   .acpi_match_table = ACPI_PTR(xge_acpi_match),
> +		   .acpi_match_table = xge_acpi_match,
>  	},
>  	.probe = xge_probe,
>  	.remove_new = xge_remove,

Ditto. And remove forward declaration of the variable as well.

...

> --- a/drivers/rtc/rtc-fsl-ftm-alarm.c
> +++ b/drivers/rtc/rtc-fsl-ftm-alarm.c
> @@ -320,7 +320,7 @@ static struct platform_driver ftm_rtc_driver = {
>  	.driver		= {
>  		.name	= "ftm-alarm",
>  		.of_match_table = ftm_rtc_match,
> -		.acpi_match_table = ACPI_PTR(ftm_imx_acpi_ids),
> +		.acpi_match_table = ftm_imx_acpi_ids,
>  	},
>  };

Ditto.

...

>  	.driver = {
>  		.name =		"pi433",
>  		.owner =	THIS_MODULE,

Oh-oh.

> -		.of_match_table = of_match_ptr(pi433_dt_ids),
> +		.of_match_table = pi433_dt_ids,
>  	},

...

> --- a/drivers/tty/serial/amba-pl011.c
> +++ b/drivers/tty/serial/amba-pl011.c
> @@ -2948,7 +2948,7 @@ static const struct of_device_id sbsa_uart_of_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, sbsa_uart_of_match);
>  
> -static const struct acpi_device_id __maybe_unused sbsa_uart_acpi_match[] = {
> +static const struct acpi_device_id sbsa_uart_acpi_match[] = {
>  	{ "ARMH0011", 0 },
>  	{ "ARMHB000", 0 },
>  	{},
> @@ -2961,8 +2961,8 @@ static struct platform_driver arm_sbsa_uart_platform_driver = {
>  	.driver	= {
>  		.name	= "sbsa-uart",
>  		.pm	= &pl011_dev_pm_ops,
> -		.of_match_table = of_match_ptr(sbsa_uart_of_match),
> -		.acpi_match_table = ACPI_PTR(sbsa_uart_acpi_match),
> +		.of_match_table = sbsa_uart_of_match,
> +		.acpi_match_table = sbsa_uart_acpi_match,
>  		.suppress_bind_attrs = IS_BUILTIN(CONFIG_SERIAL_AMBA_PL011),
>  	},
>  };

Ditto.

...

As mentioned above, I haven't and won't look into of_match_ptr() cases, but you
got the idea.

For the above, if addressed as suggested,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
