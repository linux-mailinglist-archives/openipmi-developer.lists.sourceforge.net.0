Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 763E28AE9DF
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Apr 2024 16:56:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rzHYt-0001Ce-PQ;
	Tue, 23 Apr 2024 14:55:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yilun.xu@linux.intel.com>) id 1rzAjv-0006SP-0a
 for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 07:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+F282BUprWqCYaNSb5QxU3Y9VITivo7URlhfOnz8iuY=; b=OZ+0xAGrLrmvoK+64Bi9lD0sfF
 m5q4sFFIenSWON7R8Cue1d5Jb+JzmAW1b8DOBDa7opcaJP4qqlZNNwd/MZkMI5kEFzFKANe+0lKDR
 c3d7eJmZveGAUIlXSAElElcECRIAf11JgP/ABiBE6F2guUgTNvDTKGZ61/+JqHq72z5M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+F282BUprWqCYaNSb5QxU3Y9VITivo7URlhfOnz8iuY=; b=bQ3AkXdd3BOps07dbkX5Rokekw
 iuKPQS7nMCKHryUcLemps/y0dgQ3k1Ap7TzNiFvV0ehDXaWGAI2rmrsWkZSfu4Aa64K7kvVZvJpKB
 gtkLoE/kM7kf/gYaQkhEPpBStAy65TpdEK6FQnLsg2w3jiMlRhHNYXJBTegXkuUhggDE=;
Received: from mgamail.intel.com ([198.175.65.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzAjt-0003kJ-Me for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Apr 2024 07:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713857934; x=1745393934;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mjRkFfdBtZbVYBPrvsjPmWl58HkXWr16xgIBP3dQroM=;
 b=KNN9g3pId6MwcxEP+wEXsV7ZuHSZQAfZ+sdriJPL8+YZDfW4/oZZfL6m
 IERktff+b0395Pi5g1kn51H1vwZ6h6m0+cWWgWWU9tDucY7XB8sFFvLsi
 y/vjLp04nkjRiavgYeEguLjAqcMNzC2hb52VfPUlufdX0d39MDoqxg04n
 cc4/bWaV1GhyetxOTOT8Zt7QRmNZy4va53OZR7FDkZvhLbamRvzArOIbc
 YoGpvCaV9I3s7sixYOyKkcbNcEtLz0PE0a2TEUWoaBmxZ6stDb73znKn9
 0Xrusmmfos4NhJMzaTH8XM6DbGwX9EezliNInP3Nwx3pNNJrEjJh3o6Q7 g==;
X-CSE-ConnectionGUID: dXRQuCLhRzS54Z4/VcTQSQ==
X-CSE-MsgGUID: e526rbBeSU2A62BwueIyyg==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="31918014"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="31918014"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 00:38:48 -0700
X-CSE-ConnectionGUID: s/KDoHdVTiSM0XnX3bJmkw==
X-CSE-MsgGUID: mzxAigJiRoSRJZwbwrOibA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24332315"
Received: from yilunxu-optiplex-7050.sh.intel.com (HELO localhost)
 ([10.239.159.165])
 by fmviesa006.fm.intel.com with ESMTP; 23 Apr 2024 00:38:37 -0700
Date: Tue, 23 Apr 2024 15:33:16 +0800
From: Xu Yilun <yilun.xu@linux.intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <ZidkPHp27jz0t6t3@yilunxu-OptiPlex-7050>
References: <20240403080702.3509288-1-arnd@kernel.org>
 <20240403080702.3509288-34-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403080702.3509288-34-arnd@kernel.org>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > diff --git a/drivers/fpga/versal-fpga.c
 b/drivers/fpga/versal-fpga.c
 > index 3710e8f01be2..e6189106c468 100644 > --- a/drivers/fpga/versal-fpga.c
 > +++ b/drivers/fpga/versal-fpga.c > @@ -69,7 +69,7 [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzAjt-0003kJ-Me
X-Mailman-Approved-At: Tue, 23 Apr 2024 14:55:58 +0000
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

> diff --git a/drivers/fpga/versal-fpga.c b/drivers/fpga/versal-fpga.c
> index 3710e8f01be2..e6189106c468 100644
> --- a/drivers/fpga/versal-fpga.c
> +++ b/drivers/fpga/versal-fpga.c
> @@ -69,7 +69,7 @@ static struct platform_driver versal_fpga_driver = {
>  	.probe = versal_fpga_probe,
>  	.driver = {
>  		.name = "versal_fpga_manager",
> -		.of_match_table = of_match_ptr(versal_fpga_of_match),
> +		.of_match_table = versal_fpga_of_match,

For this part

Acked-by: Xu Yilun <yilun.xu@intel.com>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
