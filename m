Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1D9956A02
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Aug 2024 13:56:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sg0zi-0006dQ-BV;
	Mon, 19 Aug 2024 11:56:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1sg0zh-0006dJ-Ar
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cXvC+PDGFCfNZv2tzpeZR9KJXjbUD1OJCs6l6aQe+rI=; b=Pe5GkgCb4zKrCbhGkB+A6jE4w7
 2inFG/33vy7baEjTp8/N2AxC/nNimwKsCmofeRgyazvcpNVZFSGu3BL6cW1Efv8t9Bbyb2FSCmBIc
 Dx+PEpx8qN3DUtglgVF5uH6oRdMmFVwceUB0kuDz85A7SysD7uTSKqDMzB+lBvzY9gYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cXvC+PDGFCfNZv2tzpeZR9KJXjbUD1OJCs6l6aQe+rI=; b=OuJIkeo+5YUDesp9hyQpkxtBpx
 B80hapuItmK6L3LRMO6JPr2hFYsZatG5P6Eh5jgmOddw+tdaMmCr3Sc8OFxxVlc9eSkpHhLO8EOSU
 eACn6bhTqdtElDWqZLH7Ekn8BPMBfVkL8e4mXTTW/0D3Ez61aQMwxmSuphBaUd+IZ2OY=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg0zh-0000n2-CL for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:56:18 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id C27EE1151AA2;
 Mon, 19 Aug 2024 07:56:11 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
 by phl-compute-04.internal (MEProxy); Mon, 19 Aug 2024 07:56:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1724068571;
 x=1724154971; bh=cXvC+PDGFCfNZv2tzpeZR9KJXjbUD1OJCs6l6aQe+rI=; b=
 O7u1SbL6THHtxLaqYT/wS1NCcNXwIihacG56Qel1rgYi3zWo9r32/bDetcsPqXje
 92cDNIvFwLSCW5yqPa5+E3MT1VJEjrdCnh5tzfoDSdxyDalvXrVQPQaTpS/U3Ea7
 SD0PRkEqQX2y7QRhoNw1QlqYV/efN/81moiNAN0+OJNZz+GUM/YTpmkTxbU4wK9L
 ZXgUn0jdtCxIgY/Rtadt13rZ7ypSkyLkbE/vEtfd9lA5xIeEVwSqab+ZD2QWRY12
 RJVNUJKFwV18VGCUyeVPJq2vyYMrB3XFxIjghjl3MQdLIYEHx37lhVwUlaTW19o3
 WrJkw3cxs4WY54yrq7ve9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724068571; x=
 1724154971; bh=cXvC+PDGFCfNZv2tzpeZR9KJXjbUD1OJCs6l6aQe+rI=; b=Q
 yKEv1rhHOdCFuCsNZTF01dKdCWqel7uUtG4PVE+2YcsCnMBvuJCDbN6Es8CvAoFU
 tXADHwLKOrlJgaLRC/11ZeKsew3NBlrDxCJ7XuNn12tcBRuQ2aST8+SK5DOWAFEk
 6v3OB9eQp7oo9EnbiGFCq7Q1bGvOu2fimNye65TR8A0aErvYbihZUqT2G5o5OJqj
 BI0DlwbHa5c0Pt+7N5/a2qbkxnKUyVafm+DOeohZP6MZzsOZkC8Ay6G+PTB2cEpJ
 9z5g9QnGiFAWGygslmPa40bUd5d/wZGRofoESMYSDxYXdm2iYedFKPJMLgi+yHmn
 SDJ54kiQIWf0/QasfuGgw==
X-ME-Sender: <xms:2zLDZqh1puP_R0VtfwNeB17mXVAaDndWItbRiERUf4dtGkKd1rUPGA>
 <xme:2zLDZrAka-p5ceM-8IIyjknjNC34qZ7dNOai5L0SiaISN9mnCj19T8LF6eC-rd1Xx
 5JlXv54h4aklBpi3pU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedftehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrd
 guvgeqnecuggftrfgrthhtvghrnhephfdthfdvtdefhedukeetgefggffhjeeggeetfefg
 gfevudegudevledvkefhvdeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpe
 hmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepfedu
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmihhnhigrrhgusegrtghmrdhorh
 hgpdhrtghpthhtohepsghpsegrlhhivghnkedruggvpdhrtghpthhtohepjhgrmhgvshdr
 mhhorhhsvgesrghrmhdrtghomhdprhgtphhtthhopegrlhgvgigrnhgurhgvrdgsvghllh
 honhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtoheprhhosggvrhhtrdhjrghriihm
 ihhksehfrhgvvgdrfhhrpdhrtghpthhtohephhgrohhjihgrnhdriihhuhgrnhhgsehgmh
 grihhlrdgtohhmpdhrtghpthhtohepmhhorhgsihgurhhsrgesghhmrghilhdrtghomhdp
 rhgtphhtthhopehlihhuhihunhhtrghouddvsehhuhgrfigvihdrtghomhdprhgtphhtth
 hopehtohhnhidrlhhutghksehinhhtvghlrdgtohhm
X-ME-Proxy: <xmx:2zLDZiEXNXwYilgasJbnpBU9SrAg57hCKnQ8vfIH7KWtaa0bGmy6xA>
 <xmx:2zLDZjTrscr8VWYIX44CvMAJxHbDw2fU6YENea5_7alEhhIKHRg36A>
 <xmx:2zLDZnyhRU-Xf7VKqgXZZ9nofYhaYp3WSsaM-A4S-OFV_ta0ImCP2g>
 <xmx:2zLDZh7G8TZLWaOhE5ubpWUy9lSTFhzgoim9gKCQiXBNnGOKkZ6oFg>
 <xmx:2zLDZg8UBxARNDsUwEarIt2op0GGkiNmtpU_v_VXlOxRuC9NjhItdjE0>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3BF5216005E; Mon, 19 Aug 2024 07:56:11 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 19 Aug 2024 13:55:50 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Yuntao Liu" <liuyuntao12@huawei.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org
Message-Id: <6a11b136-025c-4790-a7d6-4a76a5ede336@app.fastmail.com>
In-Reply-To: <20240819113855.787149-5-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
 <20240819113855.787149-5-liuyuntao12@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 19, 2024, at 13:38,
 Yuntao Liu wrote: > Add MODULE_DEVICE_TABLE(), 
 so modules could be properly autoloaded > based on the alias from
 platform_device_id table. > > Signed-off-by: Yuntao Liu [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sg0zh-0000n2-CL
Subject: Re: [Openipmi-developer] [PATCH -next 4/9] i2c: at91: fix module
 autoloading
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
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Ludovic.Desroches" <ludovic.desroches@microchip.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 codrin.ciubotariu@microchip.com,
 =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
 Robert Richter <rric@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Corey Minyard <minyard@acm.org>, Tony Luck <tony.luck@intel.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 morbidrsa@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 19, 2024, at 13:38, Yuntao Liu wrote:
> Add MODULE_DEVICE_TABLE(), so modules could be properly autoloaded
> based on the alias from platform_device_id table.
>
> Signed-off-by: Yuntao Liu <liuyuntao12@huawei.com>
> ---
>  drivers/i2c/busses/i2c-at91-core.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/i2c/busses/i2c-at91-core.c 
> b/drivers/i2c/busses/i2c-at91-core.c
> index dc52b3530725..bc3636f90712 100644
> --- a/drivers/i2c/busses/i2c-at91-core.c
> +++ b/drivers/i2c/busses/i2c-at91-core.c
> @@ -107,6 +107,7 @@ static const struct platform_device_id 
> at91_twi_devtypes[] = {
>  		/* sentinel */
>  	}
>  };
> +MODULE_DEVICE_TABLE(platform, at91_twi_devtypes);
> 
>  #if defined(CONFIG_OF)
>  static struct at91_twi_pdata at91sam9x5_config = {
> -- 

This device is always probed from DT, so a better fix would
be to remove the table and the #ifdef/of_match_ptr() around
the atmel_twi_dt_ids.

     Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
