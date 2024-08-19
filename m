Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CCC9569E1
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Aug 2024 13:51:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sg0uu-0005kC-B1;
	Mon, 19 Aug 2024 11:51:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1sg0us-0005k4-Ru
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ur7Nh7G56xLsOY+doZK+/keMSx6b5FkAOR138Pl7HO8=; b=AHH4ev/EaUGRJadMQMjNsHXAGO
 SOcDeLsYEMfpO2tDTuqvb9tG/mtE4bB1d9H7c/iVBFH0hqmmuRp9+yYC28iF8zwgfMrE366b0254N
 tj6zbGR4eX6UW7ti1ruz7+V+UqiU0DBEeFanTI5wdPatYsX8qM+LaxJqHOgou9CT3R/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ur7Nh7G56xLsOY+doZK+/keMSx6b5FkAOR138Pl7HO8=; b=SiJz9Ls1i9aB/uROeAhwY6s26N
 NvkYIOY02iVn/3PcVJK91KL7p43lrqju8AGy7rfTTlMcndTH112E50diTC3N51n6eQVO7GjVg0F/o
 J8TjZ1FJy/t1/Ss7Y6M1QBrZSjO175vOU/jnQeNdjkVDNaBWXVrsy/FFNxj6Te+PUnvI=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg0us-0000Xk-Sb for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:51:19 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 3CDB21151ADB;
 Mon, 19 Aug 2024 07:51:13 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
 by phl-compute-04.internal (MEProxy); Mon, 19 Aug 2024 07:51:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1724068273;
 x=1724154673; bh=ur7Nh7G56xLsOY+doZK+/keMSx6b5FkAOR138Pl7HO8=; b=
 HxjVtaYAN5d2ZTrlC0wvNv4sYm7HkwBeKsAYx6IndiCd1G0Ya0SEIGpDVXDkCrxL
 K7WbQDUhcUVFLlHVZsSWdUm0oz2ZNz00Cj6LO8EN7G762NeWGvYayu547mW6sCEl
 I4Qgawwple1j0B2lJBaiBkPLPR9/2SUTKgcwOfxnJwDvD5wWAX05URDy1l5e+MR2
 6Sb/+vdNQ7P4HIeNOb5z2TibysLNeeKUg/Q5gjspt5YDgUpg3UpK/ZyqsstG9P7n
 OPCkVPbc19q2lECTvJam4FG9mh50WC5POOR6rtzOW85m2Rq5Ytyi7vswHKyfnI1a
 zrPbPpSR+XdrkgB0uo1ndw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724068273; x=
 1724154673; bh=ur7Nh7G56xLsOY+doZK+/keMSx6b5FkAOR138Pl7HO8=; b=t
 KlfomCavX7cHuzNEngP4T86O0dHFBaReqmIxxhxUO7U2qXMidmAWc61033SsS+PM
 WnrnKloialmO60EQrsEoKsghr6F5RVDI0YJgVnF3yjQFF4gIknnn+LJEEHcJMV1V
 ZEk/Si6xe9jU7UrOb9jhOCkNeZEA+21iv6vN7fCMZSG+iTNAu+6PY88zmxlDBSGM
 iixiOU+ZkqGRnH6Atvk+vF+HP+T1O9Tw4I81k11mTOfZCsr1UoPAbgHHPfs0b8u2
 2/AY0BWf7jH5g0YFz6bKCpn2tbMy4oXJmoQEPAqXGTYqKTggyFwvJWs/A+7URONE
 ofvBlrt+pqKc12TCf6h4g==
X-ME-Sender: <xms:sTHDZqIGpsbZFvIWwjEcTq41SxEAl9EtSj4ey3E9-R0unvEbXIqhXw>
 <xme:sTHDZiJ79J8Bs7xVCsd3Y3UDlHa3SVnVfKbQXJxXHG6oeBguZsGIfIh8H4_AXjoio
 rFLBFYvNQ3_yNAhv9c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugedggeegucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:sTHDZqtRcbi3DE9CogAMZIpzPtMoMiHucjlcKFkOfwOlUJ1Nn0F0XQ>
 <xmx:sTHDZvbTJjCwIvKKxmjlB0KRzWwg2FVgIBOZjmUx4miX0RUs0sZYdw>
 <xmx:sTHDZhYIA1q79_knIukmB9X7b9hPSKr7YrQ9HKCKhcy6ud3dtflpzg>
 <xmx:sTHDZrDRvBWrS3fYQOYAVWRnWzAZkIvaIzrp4l-Vr_HHJxcAkfIAOA>
 <xmx:sTHDZkmvj3qy4cUFFDHcWPd7QM4gE3F_atMatLq8YRv4mXkB9yY4wpJt>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id E78C416005E; Mon, 19 Aug 2024 07:51:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 19 Aug 2024 13:50:52 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Yuntao Liu" <liuyuntao12@huawei.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org
Message-Id: <cd6728ec-a429-4196-835c-94587cda7d74@app.fastmail.com>
In-Reply-To: <20240819113855.787149-3-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
 <20240819113855.787149-3-liuyuntao12@huawei.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 for more information. [URIs: messagingengine.com]
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
 [103.168.172.159 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sg0us-0000Xk-Sb
Subject: Re: [Openipmi-developer] [PATCH -next 2/9] soc: pxa: ssp: fix
 module autoloading
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
>  drivers/soc/pxa/ssp.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/soc/pxa/ssp.c b/drivers/soc/pxa/ssp.c
> index 854d32e04558..6ac3f376d030 100644
> --- a/drivers/soc/pxa/ssp.c
> +++ b/drivers/soc/pxa/ssp.c
> @@ -194,6 +194,7 @@ static const struct platform_device_id ssp_id_table[] = {
>  	{ "pxa910-ssp",		PXA910_SSP },
>  	{ },
>  };
> +MODULE_DEVICE_TABLE(platform, ssp_id_table);
> 

I think we can drop support for legacy probing early next
year when the last pxa board files are gone, so this is 
no longer needed.

     Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
