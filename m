Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47922956A36
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Aug 2024 14:01:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sg14o-0003ij-Vg;
	Mon, 19 Aug 2024 12:01:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1sg14n-0003ic-AD
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 12:01:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XJd6YZK68x6p9zonmT3qVBwKkBNjs/NgkzszXw1opu0=; b=YTER0GOkTif9VKkMAtDuzQ4JIC
 YZyN1Si/qsadoF2Od6v1a1pjMqIZo20ElPKIMKYrF5HC7HZfESj6JQBeflHmIwbXZcWnOGPUeOJzF
 jnP2DjbdcW0B68k0H5j5rZnw2vafY3hnpgAuCWE/lzx75kgN93Heu6oRNftyUk63FvTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XJd6YZK68x6p9zonmT3qVBwKkBNjs/NgkzszXw1opu0=; b=Fz+NEoCPTuuwh0FjZvkg2eaCDK
 40QdGdnPV28DBzXVyqNm6w71xSZfNCryjX4T0ygemmNQOUoC9+U/AbCG/OY7ksBaAEmoNrCOJkOfS
 WlqkdfLdIzcsdTGMtFDsXEa6s4bpsuq17jwLwaCFEfb+fiLMQaMund3DWE+PF8vxjy8A=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg14m-00011f-Jh for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 12:01:33 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 07D291146D7A;
 Mon, 19 Aug 2024 08:01:27 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
 by phl-compute-04.internal (MEProxy); Mon, 19 Aug 2024 08:01:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1724068887;
 x=1724155287; bh=XJd6YZK68x6p9zonmT3qVBwKkBNjs/NgkzszXw1opu0=; b=
 c4kBBfj6HqZqni8RzkYdxNxFkQ1ENpLQjB/GetXg+6dWaEeI3E+gh/EmVZpfV/oM
 QYpWRZajuHY1XpTSFdApwsH9l76hmhvLWeKCshpNbnLQXY4VpsQ7IeWILnWz73jD
 qZp+knQTOYRSyuS8ctuI6OKIrfWXZJROjRA70NIJ1FIcVKJ8Tv1Xd1OlsO7P+qoU
 QKbV9eW4yS09ZOQzjHpLC5lFtGx+H7gRsFwsK1UZYNGhzluETYMrQKsJKo2HZbA6
 yTSIqocnvjhaRZzeNddKemLtU+YKc2QeYBy7tERLfzltUbJ8wjOg4oEoUhtyORGx
 ERreqC+JJ9Byd/qWAZw41A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724068887; x=
 1724155287; bh=XJd6YZK68x6p9zonmT3qVBwKkBNjs/NgkzszXw1opu0=; b=J
 QnAJpJxekEO59pVorqlrXy4DTII55HRZ+p/QdPrR8UoNHmJeZaMfdNHbUQOJkyW8
 EAZhfHy/LcDHmIFcvUyMiifmBTmtEgl3mBNJqpOFE2c+IwWX09uhwUjMCU6RKG1T
 MjogK/vhZLnShQjajoFWKbrmI45TacV7tt8a/+1FAipTH3xhY1H4AiYUkGhJC3Nj
 nttD3NakRClTCN86Troz2p1dHKm43435VoKoNSyWxDt+/SazrS1bZr1Hv49Btxx/
 Uq69RvXXEokPg0k4ZUtBsG+UZuO13knZBKJ9jQkx73ELW0JIzjyrcqBgilys/zQC
 RcNoRpnMBZduInLWyvUNQ==
X-ME-Sender: <xms:FjTDZlk9dVIg-3-p4U0rsKFsRDS51mEzlMDz1ql-edW_IKeTdwrcng>
 <xme:FjTDZg0xC3WjWM7BgtY_2KLzfBHwe3RdtbY0QS7RCaDJYjDG9hAyklnwpFaTd9lTq
 NInoUKW_ErQm8jMROY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedftehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrd
 guvgeqnecuggftrfgrthhtvghrnhephfdthfdvtdefhedukeetgefggffhjeeggeetfefg
 gfevudegudevledvkefhvdeinecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghmpe
 hmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepfedu
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmihhnhigrrhgusegrtghmrdhorh
 hgpdhrtghpthhtohepsghpsegrlhhivghnkedruggvpdhrtghpthhtohepjhgrmhgvshdr
 mhhorhhsvgesrghrmhdrtghomhdprhgtphhtthhopegrlhgvgigrnhgurhgvrdgsvghllh
 honhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtoheprhhosggvrhhtrdhjrghriihm
 ihhksehfrhgvvgdrfhhrpdhrtghpthhtohephhgrohhjihgrnhdriihhuhgrnhhgsehgmh
 grihhlrdgtohhmpdhrtghpthhtohepmhhorhgsihgurhhsrgesghhmrghilhdrtghomhdp
 rhgtphhtthhopehlihhuhihunhhtrghouddvsehhuhgrfigvihdrtghomhdprhgtphhtth
 hopehtohhnhidrlhhutghksehinhhtvghlrdgtohhm
X-ME-Proxy: <xmx:FjTDZrroMVlQ66jpjLsCc4um4CVqdDtfsw5ZI55MRN9DOsXUi7xtMw>
 <xmx:FjTDZlmfsu1P_mIAW0kNyHKiquyL1mMvTclMg3iKyx3pIXX8auokFw>
 <xmx:FjTDZj2ThwCSwXNysDttqX0j1rLNi6ha3Mf-ZAJyXgdrTBGplaIe2w>
 <xmx:FjTDZksbJSvw9ga6jQ5I4pClZQYE80hM5_azDsVfe7AC3AVPHBBzaQ>
 <xmx:FzTDZmB9HuW7vO3D4uB_rDFetK9HTOqwIeEQu-uN0ClCJnculJYIjIYL>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5694516005E; Mon, 19 Aug 2024 08:01:26 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 19 Aug 2024 14:01:04 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Yuntao Liu" <liuyuntao12@huawei.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org
Message-Id: <e750b0cf-8191-414f-bd23-dc6b69b82796@app.fastmail.com>
In-Reply-To: <20240819113855.787149-9-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
 <20240819113855.787149-9-liuyuntao12@huawei.com>
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
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
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
X-Headers-End: 1sg14m-00011f-Jh
Subject: Re: [Openipmi-developer] [PATCH -next 8/9] dmaengine: at_hdmac: fix
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

This table is again unused because at91 uses DT based
probing. Please just remove the table and the #ifdef/of_match_ptr()
around the of_device_id table.

     Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
