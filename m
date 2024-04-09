Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0378B89DB02
	for <lists+openipmi-developer@lfdr.de>; Tue,  9 Apr 2024 15:48:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ruBqA-0007EQ-34;
	Tue, 09 Apr 2024 13:48:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1ruBq9-0007EJ-96
 for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Apr 2024 13:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zoqvo0SkVe7FZCEdtc0ikknFKhEE8JSeCzy+LHsrsMM=; b=Z0QltmRryYbw2u+hl9eSPTgtFf
 iqafbFPiGadJ8JOPGyvZjlcG6XqpYKdVvQniG3uSJlBhid85xR1YZPecyKEu8UlpoVG/XXQ3esoIe
 lKkOqr/PFu4g34Qt7CkytvcE/2HheSu2A7cFx0y04Id3m/5m9B8UKqUX4NL2RPsNecp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zoqvo0SkVe7FZCEdtc0ikknFKhEE8JSeCzy+LHsrsMM=; b=OE6geeJ/E/20q/0fE9YbSdrwLP
 sTABXzjwZWkhhL1ZMZ2fAOOUMQNGKyW1mPMLLXuk6YtFT9PEdAn7ODmWMcxfYJul2T/iNcTNru9mC
 J/kv1gsM70mhNa2nnLo5WPzu119NJ/+Glzy2bU3BuU57kkkvHjgl9C6kFSVDBiTXQayM=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruBq8-00006h-Ad for openipmi-developer@lists.sourceforge.net;
 Tue, 09 Apr 2024 13:48:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 61DE0CE1368;
 Tue,  9 Apr 2024 13:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8499DC433C7;
 Tue,  9 Apr 2024 13:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1712670511;
 bh=lY/4wKOh/DIkoH73lXxAFPUPx0Fw/2iox1dE6fYg0V4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jk/4sfVzp/FqUu/E9Kv984LFB+BDnS4hpA6X7Xur98C4l2OpU0LQqrhXzdPxhLC5g
 maOM8QLXXPrlFxo+/o9nCh64QqB7E3dqEk4OBCFZ6kUJK0CQyaBup3A2HduHoP68sP
 nI956a18HBaBun5llmCJ9uH74oCtXxtH8ceqT1oI=
Date: Tue, 9 Apr 2024 15:48:28 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <2024040921-propose-scorer-a319@gregkh>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-34-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403080702.3509288-34-arnd@kernel.org>
X-Spam-Score: -4.2 (----)
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
 Content analysis details:   (-4.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ruBq8-00006h-Ad
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
 Jarkko Sakkinen <jarkko@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-serial@vger.kernel.org,
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
 Xiang Chen <chenxiang66@hisilicon.com>, netdev@vger.kernel.org,
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
> 
> I considered splitting up the large patch into per subsystem patches, but since
> it's really just the same thing everywhere it feels better to do it all at once.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
