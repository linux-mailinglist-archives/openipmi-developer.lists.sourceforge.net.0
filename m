Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1828F9569D6
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Aug 2024 13:50:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sg0tn-00027c-VL;
	Mon, 19 Aug 2024 11:50:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1sg0tm-00027V-Go
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=swd2YP+u96aOXADsvOlWQ6iZc2iEqVwrlEkNVEMipWE=; b=LhBxE58j8Eyq1ZOFXZkqidde5S
 Nyp0bmyCDeYLEcM1qlSD0rANvr6QY5k6Si2zvtmdkf6y4Jl+pMZlhlQal0LovSfldhJyW/TwlCQFo
 ufkilnyLXF8b2XPosg2vGoIPi7VadcJ/bN2NZue8ubdBBgqv3VJq/x8WnQgPeUTN0wfM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=swd2YP+u96aOXADsvOlWQ6iZc2iEqVwrlEkNVEMipWE=; b=XlC6PL3uogTSm2Dn1Bb3HASulh
 ned3QpewEKmRKA/gmX5RHT/cDQ1Hv7jq3HI3tgzoDcReUrMiSpQG7KYulozsm8aaTrVVGgLNYb2iF
 j0eXUN0l19DMO/B9W2dVPqE50TWJr5hBJdS4Igxk5CP4U68DMF9U5EG6+b8KzocxlFoc=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg0tk-0000Rr-CA for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:50:09 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id AF1E5138FFBB;
 Mon, 19 Aug 2024 07:49:57 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
 by phl-compute-04.internal (MEProxy); Mon, 19 Aug 2024 07:49:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1724068197;
 x=1724154597; bh=swd2YP+u96aOXADsvOlWQ6iZc2iEqVwrlEkNVEMipWE=; b=
 nbVPVWLsC2+f+evk1Jc7OzxyMBIvoO1m2DLBG+LlbV6ZimRNjdQvo79DAV/cvcXm
 Lgh/gY6gbuZV12mlgcEC/O71VyFENVsRPlOiEEy8bp1XpGJBOJmsT70N/I7Ee0qq
 veerz8kYySMI4egV/RYr8iA3Ry6pHkx3KwqMCKi3ORDf0yS5O5y1YVrSVPqKzdfN
 L4rix2TwNsivMDl7s76/Ovj/efSt5SOmLF/2xerPW2fUUWNN8IuJ6ChhxFqMxHl8
 03UFIizvAb1bugPsXe6fnW7x9+jD3jZXStPAnkzSOuDWDk5pw0QVKfPfr+724cAO
 GzZU6H/MDugWn1yeeVgnww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724068197; x=
 1724154597; bh=swd2YP+u96aOXADsvOlWQ6iZc2iEqVwrlEkNVEMipWE=; b=a
 ULxpoLSWOi6OycCCOIHNiqKrtP2fixHgCJGaHhUVX7bAmY9n8OhbP197MmLs6LQk
 zcXR4k4RkEOxCCQ3iSw/mpnSxqr+REVqTAMfDujQI2OwxamCRm+2wJVAnLHUqHkI
 Z3hsMno3vs4WhE+0TKKBPuEY2IMzjFY/qdr1a2ld8BMCQCSwSj2WVqi7j7P96r9d
 v31UpebcdzqJn5P64maDAz619/pCKC2LGYHl0yzR1B/nt1vgElvTVkWaSRITN+TG
 gZvToGzNot54Y8Gf1sBhgikS+wuJLwSzeim8x1yejsMwA/U7lFgVpopxbtiJzH/l
 eJ7VF9qpqx54iJ7zfCl4g==
X-ME-Sender: <xms:ZDHDZqqq8u2w-52j0aYVsXjFwG3wwT6NWf6TwTEM-_ILz_N683uUYA>
 <xme:ZDHDZoqCVV5tAqfBPPGlaKu41WklGuA6rP3TB15STbtD6VCop-0zgsGfLKMyxLDNV
 ekAHJdnWcZbC8Tlnes>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugedggeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedftehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrd
 guvgeqnecuggftrfgrthhtvghrnhephfdthfdvtdefhedukeetgefggffhjeeggeetfefg
 gfevudegudevledvkefhvdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepfedu
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmihhnhigrrhgusegrtghmrdhorh
 hgpdhrtghpthhtohepsghpsegrlhhivghnkedruggvpdhrtghpthhtohepjhgrmhgvshdr
 mhhorhhsvgesrghrmhdrtghomhdprhgtphhtthhopegrlhgvgigrnhgurhgvrdgsvghllh
 honhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtoheprhhosggvrhhtrdhjrghriihm
 ihhksehfrhgvvgdrfhhrpdhrtghpthhtohephhgrohhjihgrnhdriihhuhgrnhhgsehgmh
 grihhlrdgtohhmpdhrtghpthhtohepmhhorhgsihgurhhsrgesghhmrghilhdrtghomhdp
 rhgtphhtthhopehlihhuhihunhhtrghouddvsehhuhgrfigvihdrtghomhdprhgtphhtth
 hopehtohhnhidrlhhutghksehinhhtvghlrdgtohhm
X-ME-Proxy: <xmx:ZDHDZvPoSPgYUJIyJTClMjJpGaNDHm58Rx5P9ZROqTAZI-c_bF3NNw>
 <xmx:ZDHDZp7tPPcPaCzC7ZaYII2JE49glN0M9xKoQYxJy6FaKIYYIGBuiQ>
 <xmx:ZDHDZp7kWFDfB9ZXKb9_dnW5epZKhFOokcmDG2hMtSoqc0L8hdxRuw>
 <xmx:ZDHDZpjnzVncYWNQQ9sXti9ifRE37sq_3jgO06wh1Ws_iJpEXIt7uQ>
 <xmx:ZTHDZlHwNELX4juhF0hX3MNaSo5vEPAAkBoRhRxY2a9s9ALYLs9L-958>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 6086916005E; Mon, 19 Aug 2024 07:49:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 19 Aug 2024 13:49:36 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Yuntao Liu" <liuyuntao12@huawei.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org
Message-Id: <5cc72997-3449-4df4-954c-91afe1547c49@app.fastmail.com>
In-Reply-To: <20240819113855.787149-2-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
 <20240819113855.787149-2-liuyuntao12@huawei.com>
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
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.148 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.148 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sg0tk-0000Rr-CA
Subject: Re: [Openipmi-developer] [PATCH -next 1/9] usb: ehci-mv: fix module
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
>  drivers/usb/host/ehci-mv.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/usb/host/ehci-mv.c b/drivers/usb/host/ehci-mv.c
> index 2f1fc7eb8b72..33d925316eec 100644
> --- a/drivers/usb/host/ehci-mv.c
> +++ b/drivers/usb/host/ehci-mv.c
> @@ -260,6 +260,7 @@ static const struct platform_device_id ehci_id_table[] = {
>  	{"pxa-sph", 0},
>  	{},
>  };
> +MODULE_DEVICE_TABLE(platform, ehci_id_table);

Neither of the two entries is used any more, so a better
fix would be to remove the platform_device_id table.

     Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
