Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32851896F3D
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Apr 2024 14:48:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rs029-0002Ow-M6;
	Wed, 03 Apr 2024 12:48:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rs028-0002Oq-Ds
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 12:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rtecu7pbCOzcU6lg6jomsrlGzCnl9MEDMOfvGJlD74o=; b=WWK3ILGeeCLxIAY/J6P/jtolb6
 j0kyGSUfqHt5rPJygM9uGtTUwqxKLEXaKFt9UB2jJfDamQNIFcSx9l65944Cb5EkimhPLwFA4Iy+x
 EsECp1/5pezIAemU9GzOkv/APylsqtGf2MdRly7Tu+bgmWHaEqGrU7NeIQhobIGcxo2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rtecu7pbCOzcU6lg6jomsrlGzCnl9MEDMOfvGJlD74o=; b=dRw9JkvyV0SAnzpndFfu81bSvb
 a9s0wz1NwAd075da7PUYDGmB7Lbm0J7kPzMptsYY5PeLejG5ReTkCK2z40XkKyecw/1t/I5caovIn
 C7+zg2tO2Ghv/ghI+DxhUE3WR9aAvnGHuQy22wkq91Ro/tBN4u4/fhrfKC5JaSJcU/MQ=;
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rs026-0006pT-9L for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 12:48:04 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-22200c78d4fso3646952fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Apr 2024 05:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712148472; x=1712753272; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rtecu7pbCOzcU6lg6jomsrlGzCnl9MEDMOfvGJlD74o=;
 b=MZuI2UCifb6Inb0HHI02y9kj96s7OlGJmaopN4QtcfJH/I7K6NMNMkVcm5MREE9YGt
 EvFtF2xXxp8smSAL/yq5yPtz6YdIIMCY6UV4XTWQjZaDRzmFQ2qF7DC61d87OXllh27a
 hzBBBHK5g/Wuc/JIOKlC5rXvzAM//CpFH2sJQ/wv+/q/g1dU4AMUzFB01cMP/KY+Mr/s
 bZ6yzoRCvQ7SST/JgdS5HRGUPHlglXsYxlwWr8/JTB2G40b03yQFQ67+uDIvdFB7zQwz
 PYCe/cUPvFOSYkkDMeOxmyNBq+WTyLc+aE+bT6wPAnRh0/4VrVrS6C3RKi8jn20YAxqV
 VDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712148472; x=1712753272;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=rtecu7pbCOzcU6lg6jomsrlGzCnl9MEDMOfvGJlD74o=;
 b=NZ2+wqOudtT3xlF35XqJ4rIufy3rKjOiTMsifA0JaNV/NWLmh5H3pnIJ3CSN9/LbWz
 WG9GEK3RUqNDJQYkuCX5+gFzaUDhxsERLfIy9ZBxAq6HknNHKm3iDFtO8957fO/s+3PE
 UHxGkfyFq4mODmfxZYs0uALdMBxL2g9ctK4UMhzM7w12KWJwoIiFlFKIg2vaD17kaanR
 vtA+CqmQnA9btESmjqe+fRiWQ9kvBYl29T2OguYD3Gf5X2nrY2XUyuynUMbrsO5sM05g
 y68EgHcAC6LOJ04PekOD1R0h0UyYgMtCqQhViu4qziZT4IxiFFVJYlCcLWF62ed2CIX6
 gF5Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPUXFUCOgc4jwAFqjq9Y7Bt5HqqK/xau7bTI8m2G4gQiVvhC9sstkeVVbab+LawqEUnYTbh+UnsM31OdcgUUrgfklArhVc6/ImKGJvu5c1NrZiL3q4SMrq
X-Gm-Message-State: AOJu0Yx16SBerfcKdVpsIDJvnDW17F3n6a676+wJ88Bdn6I9/EIGwr40
 fR5JSb+8ZN6zCVqqM1bJI1PZWUqq87JeHr+4a8h+LHp02Dv3Ce54PDBL1XiptA==
X-Google-Smtp-Source: AGHT+IG0d5T8JXCtfqlx6JtVyEaCsqFpPnvwq2pH9XmJas2+vfFJn39FYAUdlGYyjJjWq/sJ1YaRJQ==
X-Received: by 2002:a05:6871:29c:b0:22e:7c19:5c71 with SMTP id
 i28-20020a056871029c00b0022e7c195c71mr2548199oae.59.1712148471696; 
 Wed, 03 Apr 2024 05:47:51 -0700 (PDT)
Received: from serve.minyard.net ([47.184.176.113])
 by smtp.gmail.com with ESMTPSA id
 ny21-20020a056871751500b00221df0eb6f9sm3931309oac.28.2024.04.03.05.47.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Apr 2024 05:47:51 -0700 (PDT)
Received: from mail.minyard.net (unknown [IPv6:2001:470:b8f6:1b::37a])
 by serve.minyard.net (Postfix) with ESMTPSA id F404A1800B7;
 Wed,  3 Apr 2024 12:47:50 +0000 (UTC)
Date: Wed, 3 Apr 2024 07:47:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <Zg1P9fpdwPot3Dxj@mail.minyard.net>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-34-arnd@kernel.org>
 <Zg0hxMZGlwfXV2RA@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zg0hxMZGlwfXV2RA@smile.fi.intel.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 03, 2024 at 12:30:44PM +0300, Andy Shevchenko
 wrote: > On Wed, Apr 03, 2024 at 10:06:51AM +0200, Arnd Bergmann wrote: >
 > From: Arnd Bergmann <arnd@arndb.de> > > > > When building with CON [...]
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1rs026-0006pT-9L
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
Reply-To: minyard@acm.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Randy Dunlap <rdunlap@infradead.org>, Tony Lindgren <tony@atomide.com>,
 Tom Rix <trix@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 linux-i2c@vger.kernel.org, Shan-Chun Hung <schung@nuvoton.com>,
 Russell King <linux@armlinux.org.uk>, Peter Huewe <peterhuewe@gmx.de>,
 Jiri Slaby <jirislaby@kernel.org>, linux-rtc@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 netdev@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-serial@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, linux-fpga@vger.kernel.org,
 Wu Hao <hao.wu@intel.com>, linux-input@vger.kernel.org,
 Jacky Huang <ychuang3@nuvoton.com>,
 Keyur Chudgar <keyur@os.amperecomputing.com>,
 Michael Hennerich <michael.hennerich@analog.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Jiri Kosina <jikos@kernel.org>,
 Mark Brown <broonie@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@kernel.org>,
 Salil Mehta <salil.mehta@huawei.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Xu Yilun <yilun.xu@intel.com>, dmaengine@vger.kernel.org,
 linux-integrity@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 03, 2024 at 12:30:44PM +0300, Andy Shevchenko wrote:
> On Wed, Apr 03, 2024 at 10:06:51AM +0200, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > When building with CONFIG_OF and/or CONFIG_ACPI disabled but W=1 extra
> > warnings enabled, a lot of driver cause a warning about an unused
> > ID table:
> > 
> > drivers/char/tpm/tpm_ftpm_tee.c:356:34: error: unused variable 'of_ftpm_tee_ids' [-Werror,-Wunused-const-variable]
> > drivers/dma/img-mdc-dma.c:863:34: error: unused variable 'mdc_dma_of_match' [-Werror,-Wunused-const-variable]
> > drivers/fpga/versal-fpga.c:62:34: error: unused variable 'versal_fpga_of_match' [-Werror,-Wunused-const-variable]
> > drivers/i2c/muxes/i2c-mux-ltc4306.c:200:34: error: unused variable 'ltc4306_of_match' [-Werror,-Wunused-const-variable]
> > drivers/i2c/muxes/i2c-mux-reg.c:242:34: error: unused variable 'i2c_mux_reg_of_match' [-Werror,-Wunused-const-variable]
> > drivers/memory/pl353-smc.c:62:34: error: unused variable 'pl353_smc_supported_children' [-Werror,-Wunused-const-variable]
> > drivers/regulator/pbias-regulator.c:136:34: error: unused variable 'pbias_of_match' [-Werror,-Wunused-const-variable]
> > drivers/regulator/twl-regulator.c:552:34: error: unused variable 'twl_of_match' [-Werror,-Wunused-const-variable]
> > drivers/regulator/twl6030-regulator.c:645:34: error: unused variable 'twl_of_match' [-Werror,-Wunused-const-variable]
> > drivers/scsi/hisi_sas/hisi_sas_v2_hw.c:3635:36: error: unused variable 'sas_v2_acpi_match' [-Werror,-Wunused-const-variable]
> > drivers/staging/pi433/pi433_if.c:1359:34: error: unused variable 'pi433_dt_ids' [-Werror,-Wunused-const-variable]
> > drivers/tty/serial/amba-pl011.c:2945:34: error: unused variable 'sbsa_uart_of_match' [-Werror,-Wunused-const-variable]
> > 
> > The fix is always to just remove the of_match_ptr() and ACPI_PTR() wrappers
> > that remove the reference, rather than adding another #ifdef just for build
> > testing for a configuration that doesn't matter in practice.
> 
> > I considered splitting up the large patch into per subsystem patches, but since
> > it's really just the same thing everywhere it feels better to do it all at once.
> 
> Can we split to three groups:
> - Dropping ACPI_PTR()
> - Dropping of_match_ptr() (which I won't review in depth, for example)
> - Dropping both
> ?

Why?

-corey

> 
> ...
> 
> > --- a/drivers/char/ipmi/ipmb_dev_int.c
> > +++ b/drivers/char/ipmi/ipmb_dev_int.c
> > @@ -364,7 +364,7 @@ MODULE_DEVICE_TABLE(acpi, acpi_ipmb_id);
> >  static struct i2c_driver ipmb_driver = {
> >  	.driver = {
> >  		.name = "ipmb-dev",
> > -		.acpi_match_table = ACPI_PTR(acpi_ipmb_id),
> > +		.acpi_match_table = acpi_ipmb_id,
> >  	},
> >  	.probe = ipmb_probe,
> >  	.remove = ipmb_remove,
> 
> acpi.h --> mod_devicetable.h.
> 
> ...
> 
> > --- a/drivers/hid/hid-google-hammer.c
> > +++ b/drivers/hid/hid-google-hammer.c
> > @@ -275,21 +275,19 @@ static const struct acpi_device_id cbas_ec_acpi_ids[] = {
> >  };
> >  MODULE_DEVICE_TABLE(acpi, cbas_ec_acpi_ids);
> >  
> > -#ifdef CONFIG_OF
> >  static const struct of_device_id cbas_ec_of_match[] = {
> >  	{ .compatible = "google,cros-cbas" },
> >  	{ },
> >  };
> >  MODULE_DEVICE_TABLE(of, cbas_ec_of_match);
> > -#endif
> >  
> >  static struct platform_driver cbas_ec_driver = {
> >  	.probe = cbas_ec_probe,
> >  	.remove = cbas_ec_remove,
> >  	.driver = {
> >  		.name = "cbas_ec",
> > -		.acpi_match_table = ACPI_PTR(cbas_ec_acpi_ids),
> > -		.of_match_table = of_match_ptr(cbas_ec_of_match),
> > +		.acpi_match_table = cbas_ec_acpi_ids,
> > +		.of_match_table = cbas_ec_of_match,
> >  		.pm = &cbas_ec_pm_ops,
> >  	},
> >  };
> 
> Ditto, and likely of.h can be also dropped.
> 
> ...
> 
> > --- a/drivers/input/touchscreen/wdt87xx_i2c.c
> > +++ b/drivers/input/touchscreen/wdt87xx_i2c.c
> > @@ -1166,7 +1166,7 @@ static struct i2c_driver wdt87xx_driver = {
> >  		.name = WDT87XX_NAME,
> >  		.dev_groups = wdt87xx_groups,
> >  		.pm = pm_sleep_ptr(&wdt87xx_pm_ops),
> > -		.acpi_match_table = ACPI_PTR(wdt87xx_acpi_id),
> > +		.acpi_match_table = wdt87xx_acpi_id,
> >  	},
> >  };
> >  module_i2c_driver(wdt87xx_driver);
> 
> Ditto.
> 
> ...
> 
> > --- a/drivers/net/ethernet/apm/xgene-v2/main.c
> > +++ b/drivers/net/ethernet/apm/xgene-v2/main.c
> > @@ -731,7 +731,7 @@ MODULE_DEVICE_TABLE(acpi, xge_acpi_match);
> >  static struct platform_driver xge_driver = {
> >  	.driver = {
> >  		   .name = "xgene-enet-v2",
> > -		   .acpi_match_table = ACPI_PTR(xge_acpi_match),
> > +		   .acpi_match_table = xge_acpi_match,
> >  	},
> >  	.probe = xge_probe,
> >  	.remove_new = xge_remove,
> 
> Ditto. And remove forward declaration of the variable as well.
> 
> ...
> 
> > --- a/drivers/rtc/rtc-fsl-ftm-alarm.c
> > +++ b/drivers/rtc/rtc-fsl-ftm-alarm.c
> > @@ -320,7 +320,7 @@ static struct platform_driver ftm_rtc_driver = {
> >  	.driver		= {
> >  		.name	= "ftm-alarm",
> >  		.of_match_table = ftm_rtc_match,
> > -		.acpi_match_table = ACPI_PTR(ftm_imx_acpi_ids),
> > +		.acpi_match_table = ftm_imx_acpi_ids,
> >  	},
> >  };
> 
> Ditto.
> 
> ...
> 
> >  	.driver = {
> >  		.name =		"pi433",
> >  		.owner =	THIS_MODULE,
> 
> Oh-oh.
> 
> > -		.of_match_table = of_match_ptr(pi433_dt_ids),
> > +		.of_match_table = pi433_dt_ids,
> >  	},
> 
> ...
> 
> > --- a/drivers/tty/serial/amba-pl011.c
> > +++ b/drivers/tty/serial/amba-pl011.c
> > @@ -2948,7 +2948,7 @@ static const struct of_device_id sbsa_uart_of_match[] = {
> >  };
> >  MODULE_DEVICE_TABLE(of, sbsa_uart_of_match);
> >  
> > -static const struct acpi_device_id __maybe_unused sbsa_uart_acpi_match[] = {
> > +static const struct acpi_device_id sbsa_uart_acpi_match[] = {
> >  	{ "ARMH0011", 0 },
> >  	{ "ARMHB000", 0 },
> >  	{},
> > @@ -2961,8 +2961,8 @@ static struct platform_driver arm_sbsa_uart_platform_driver = {
> >  	.driver	= {
> >  		.name	= "sbsa-uart",
> >  		.pm	= &pl011_dev_pm_ops,
> > -		.of_match_table = of_match_ptr(sbsa_uart_of_match),
> > -		.acpi_match_table = ACPI_PTR(sbsa_uart_acpi_match),
> > +		.of_match_table = sbsa_uart_of_match,
> > +		.acpi_match_table = sbsa_uart_acpi_match,
> >  		.suppress_bind_attrs = IS_BUILTIN(CONFIG_SERIAL_AMBA_PL011),
> >  	},
> >  };
> 
> Ditto.
> 
> ...
> 
> As mentioned above, I haven't and won't look into of_match_ptr() cases, but you
> got the idea.
> 
> For the above, if addressed as suggested,
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
