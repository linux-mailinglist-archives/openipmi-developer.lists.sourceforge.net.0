Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A07938974EA
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Apr 2024 18:10:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rs3Bg-0007vz-Vj;
	Wed, 03 Apr 2024 16:10:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jarkko@kernel.org>) id 1rs3Bf-0007vt-Fc
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 16:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:References:Cc:To:From:Subject:
 Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yQbf9VguBYL8Hz86FfVKd5bHDdEc/6nDEvhxgYesFVU=; b=e92nJP+INi8gy9lcL4OGH7kJvD
 tnxKGIfqur42lQRwgE3FKNgCgtoEqZaugN2IkWKromhMEuMHcxiiHQgsWBH88tqU0btw1uehRDYnN
 /hohaaInOD7PjTMzyVpNIIFVb+GaLoa2mzGyiOHeh32V27yPDBBTOijl2uCNhwgsybtw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Content-Type:
 Content-Transfer-Encoding:Mime-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yQbf9VguBYL8Hz86FfVKd5bHDdEc/6nDEvhxgYesFVU=; b=dWvgYQt6r4Rf/F7fkFMr2neceN
 Bga4mV+DytCVUopPQVjGXlJNIx4xu+6kjbh0POYvYMiogG9RpnP4M2ATGUEF6L8JzKqCy9QGBt9j/
 XXFmT6UV91Scv4ZDfQUbG2aV4tENF+W6lAUoqlu/lxvhBxzGj2U5TUzE0kY12nPmplCc=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rs3Ba-0002ea-Pd for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Apr 2024 16:10:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 543B2CE2B94;
 Wed,  3 Apr 2024 16:09:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93D70C433B1;
 Wed,  3 Apr 2024 16:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712160590;
 bh=8hzZGuG3Djlgf0qMwrfrn4bWy2pLWmCCjfypaPd6iaU=;
 h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
 b=jcKjSobBys2AwDWtHUg+nZNz255hX8YJ8clocbZnVtIj0h52DY808t+gVnLSzkMLC
 X2jjQFAvUGmd4lb2M/HiK8OYAD4oRg6oM2wRSk/RtDyPOErdicM/kRH7ZmaFffstdd
 A5uhuABW7lcrvZbj6juYMAQtimJyqGFQZcIGMI0EOpEDTaFtJn8kgeNnGah9Hgz94S
 IOzUjSSG8Dy1PPZNqM66yJrWCw2X5fzAFrh0GVmZ1l/EQYOliuMJ261ne92VmHIt0M
 aZaraEfx5h6OpkWv3gkSRGiGucYprWgAnxL9Gst4Y9JBTDvukYB1H1HajHS8VYD79T
 fVNVTde8ha+Ew==
Mime-Version: 1.0
Date: Wed, 03 Apr 2024 19:09:38 +0300
Message-Id: <D0AM9RGC7D65.2V9TFGBOSF3LN@kernel.org>
From: "Jarkko Sakkinen" <jarkko@kernel.org>
To: "Arnd Bergmann" <arnd@kernel.org>, <linux-kernel@vger.kernel.org>,
 "Corey Minyard" <minyard@acm.org>, "Peter Huewe" <peterhuewe@gmx.de>,
 "Vinod Koul" <vkoul@kernel.org>, "Moritz Fischer" <mdf@kernel.org>, "Wu
 Hao" <hao.wu@intel.com>, "Xu Yilun" <yilun.xu@intel.com>, "Jiri Kosina"
 <jikos@kernel.org>, "Benjamin Tissoires" <benjamin.tissoires@redhat.com>,
 "Michael Hennerich" <michael.hennerich@analog.com>, "Peter Rosin"
 <peda@axentia.se>, "Dmitry Torokhov" <dmitry.torokhov@gmail.com>, "Iyappan
 Subramanian" <iyappan@os.amperecomputing.com>, "Keyur Chudgar"
 <keyur@os.amperecomputing.com>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, "Yisen Zhuang"
 <yisen.zhuang@huawei.com>, "Salil Mehta" <salil.mehta@huawei.com>, "Tony
 Lindgren" <tony@atomide.com>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark
 Brown" <broonie@kernel.org>, "Alexandre Belloni"
 <alexandre.belloni@bootlin.com>, "Xiang Chen" <chenxiang66@hisilicon.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Russell King" <linux@armlinux.org.uk>, "Jiri
 Slaby" <jirislaby@kernel.org>, "Jacky Huang" <ychuang3@nuvoton.com>,
 "Shan-Chun Hung" <schung@nuvoton.com>
X-Mailer: aerc 0.17.0
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-34-arnd@kernel.org>
In-Reply-To: <20240403080702.3509288-34-arnd@kernel.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed Apr 3, 2024 at 11:06 AM EEST, Arnd Bergmann wrote:
 > diff --git a/drivers/char/tpm/tpm_ftpm_tee.c
 b/drivers/char/tpm/tpm_ftpm_tee.c
 > index 2ea4882251cf..0c453f3f928d 100644 > --- a/drivers/cha [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rs3Ba-0002ea-Pd
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
Cc: linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-staging@lists.linux.dev, linux-scsi@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Tom
 Rix <trix@redhat.com>, Linus Walleij <linus.walleij@linaro.org>,
 Randy Dunlap <rdunlap@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-fpga@vger.kernel.org, netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org,
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 dmaengine@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed Apr 3, 2024 at 11:06 AM EEST, Arnd Bergmann wrote:
> diff --git a/drivers/char/tpm/tpm_ftpm_tee.c b/drivers/char/tpm/tpm_ftpm_tee.c
> index 2ea4882251cf..0c453f3f928d 100644
> --- a/drivers/char/tpm/tpm_ftpm_tee.c
> +++ b/drivers/char/tpm/tpm_ftpm_tee.c
> @@ -362,7 +362,7 @@ MODULE_DEVICE_TABLE(of, of_ftpm_tee_ids);
>  static struct platform_driver ftpm_tee_plat_driver = {
>  	.driver = {
>  		.name = "ftpm-tee",
> -		.of_match_table = of_match_ptr(of_ftpm_tee_ids),
> +		.of_match_table = of_ftpm_tee_ids,
>  	},
>  	.shutdown = ftpm_plat_tee_shutdown,
>  	.probe = ftpm_plat_tee_probe,

For this portion:

Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>

[can be included to possible new revisions if it stays same]

BR, Jarkko


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
