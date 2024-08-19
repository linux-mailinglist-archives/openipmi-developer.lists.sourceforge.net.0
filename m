Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8CA956A1C
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Aug 2024 13:58:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sg11q-0002U5-7r;
	Mon, 19 Aug 2024 11:58:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1sg11o-0002Tn-EH
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:58:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1q//rQDyx9VX653DFqklT+rFuI5QqQwJi4cGGdU+mLU=; b=mA1TC1K652v8DRqhUnXI2P8Iy7
 HRMEKbqHfKiO6+wl5Z4NJrInq0VJn1KFKRO8i+6kVa7hK0tWR94V4ZGx0aTbox3mmFfU7hjT0Y3pX
 KdJMr/Tc3gEC33PUYYYrn4v5VSWwW1iElx/W7a+5mKAMRPVujP2DR8vm2ey+ur3AyUGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1q//rQDyx9VX653DFqklT+rFuI5QqQwJi4cGGdU+mLU=; b=IuYA+XNKAdglWKtlaE6jf3erdo
 hCkh+2x1fZ230+1dcXMCmso5vx5rwUDuUCHgxBC1KOgDLvfg8u5JKTvr45WykogBqAHcujD6z6stk
 z9Pfz1yjEH62dF1pVg859OPMJKlv9ejQZ4APoZUO4DAb49ooTQNCba818NlAhGxv/Pqw=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg11n-0000sy-MO for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:58:28 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id 1F6F8138FFF0;
 Mon, 19 Aug 2024 07:58:22 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
 by phl-compute-04.internal (MEProxy); Mon, 19 Aug 2024 07:58:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1724068702;
 x=1724155102; bh=1q//rQDyx9VX653DFqklT+rFuI5QqQwJi4cGGdU+mLU=; b=
 fG+BnmgKh2r2F6/TJvNU8oUCDU2voklpgpdl2IGU7DDXViLSqIkoHeHimdGk04Bl
 ClBnoYKtzbSkKGPdiNf0g9KCf/hUzG46+JzYubftlQ7XN6vMENZfxUsKWiJ54kzP
 kbxiGn+RuYHwEmEvu5Z7YEtP0j5swfgXqar74/5Hc+NT9qNRYIAFXKWRAlCKR2UV
 egJ8IBcjSngkSqRa7bLX92gFkQyQqJmWS15yFFKS1z8ITFSZIpWakr5cR6QKCGJf
 p+K9kOilP52YSR1FXGynUIsb6YYGx6SiA80W4m4HQU82hzZaPcuSZsejTEdjbhkz
 7fgF2Fjue9XectUND/9iVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724068702; x=
 1724155102; bh=1q//rQDyx9VX653DFqklT+rFuI5QqQwJi4cGGdU+mLU=; b=Q
 k3p+HfWDP7eMOP0dCowh1s/eJfGGUJf7xKhidjR5W8Dhn+NvW9MpGQYKqDeNRy9q
 ZjY6IIn7Or/d88ZSmjzSflWj97gYMz5qukje9Sc1gd1PLnN2Dr8L1q+7sVSF6+2d
 YCekXdKakkNUvxFWQbj9U+B0SCcYSZ3+IPwHCbQCg8uunJ91JOhLNYSOrn49imao
 lZRnzhvemh+gbxsPRjzovwmJNLxLpKTeLZ6RJwIpdIU71MwVz/AxvgiNuofX2FGq
 cKKMyXy8FtGt+uvV95z9A8ufteIsMghlauibxGKXXsbSCeCYHr1AVnFfTJvN0+vP
 pKeJsLxstv/GDF615j8Bg==
X-ME-Sender: <xms:XTPDZnx-aMkctB6VDOuHCgNxPMWsNdKNg88lEqS-W6MRrSqBNeegEg>
 <xme:XTPDZvReZw1zxoKn6p_9vGcMiFFjP7WNRk3kNJ1POKEHAlMy_sldj4jcCFlt7q2eZ
 g9ajkOsdMQgoPYUNUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugedggeeiucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:XjPDZhX-oqwAzr6WjjivovL1XLDiHvpbVVTu_sZVWxHpzB0z6964iQ>
 <xmx:XjPDZhh57Ke7HHK7M6VgeziyeE5iD-PJ4OBLAB7eGXDqBA4UqstCcQ>
 <xmx:XjPDZpDj3qI1FqH9zKE5v2fmWdZXNVqOHp7j25-4nFcgHqdN4H7KeQ>
 <xmx:XjPDZqLgAMN94FAKPhoEw8kR8Dv2by2RW3Rvxj-PNx3M3uPXVrrtbg>
 <xmx:XjPDZmMdiCbxn5ftHHXlGcMZVVeunv_wToMZyj6H_dMsdNDbkYTS3ovh>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id DEE1416005E; Mon, 19 Aug 2024 07:58:21 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 19 Aug 2024 13:58:01 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Yuntao Liu" <liuyuntao12@huawei.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org
Message-Id: <358410e9-1f0d-4a8a-bf74-084a8ea62440@app.fastmail.com>
In-Reply-To: <20240819113855.787149-7-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
 <20240819113855.787149-7-liuyuntao12@huawei.com>
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.148 listed in wl.mailspike.net]
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.148 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sg11n-0000sy-MO
Subject: Re: [Openipmi-developer] [PATCH -next 6/9] dmaengine: pxa: fix
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
>  drivers/dma/pxa_dma.c | 1 +
>  1 file changed, 1 insertion(+)
>

The legacy probe will soon be gone for pxa, so I would skip this
one, like the other pxa patches.

      Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
