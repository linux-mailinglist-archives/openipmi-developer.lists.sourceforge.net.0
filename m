Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5AC956A80
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Aug 2024 14:10:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sg1DP-0003xT-Jj;
	Mon, 19 Aug 2024 12:10:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1sg1DJ-0003xH-Ib
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 12:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w4XxV8t7d4FBrTlqfBcRiEblpXOgHlRWhYqqGC4/luU=; b=CAtpy496thol25hcq9jF/iKfQy
 qUiVw/j9W743hMUUsTQoQZ+5+Ya9ft9qtW2m+lQ4ZMZNUYxj7PylXMO5qf2+Sb7rbpLN3Mlpc+ZPW
 Z37AZnLsEjBTvL36HY75v51aZfanP01Y8rtkNfLVnSCyykzDhttwj5vXr/AIEKxlFleg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w4XxV8t7d4FBrTlqfBcRiEblpXOgHlRWhYqqGC4/luU=; b=f+DQw3xt+HmrgjNE56OQrHNLDc
 lyxb1TSZUwvcNhzWMKlPrL3NOv7e9TuEPdIRMC2tWSEyDqUSf2tQfhF4S/ub43MwEoa1L2UwEacQy
 rBZt0KSr7maKc6xD99V19i1JeImxEveKadPdJP7CgKWms57xUpB2zbw993dEQMgbjCsA=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg1DI-0001Tu-PV for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 12:10:21 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id 34FDE138FFAD;
 Mon, 19 Aug 2024 08:10:10 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
 by phl-compute-04.internal (MEProxy); Mon, 19 Aug 2024 08:10:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1724069410;
 x=1724155810; bh=w4XxV8t7d4FBrTlqfBcRiEblpXOgHlRWhYqqGC4/luU=; b=
 lDiDNa5F/o9fcqf0G4hzpgGyH9KHBFgBzxWmc3LhYcEP9NkmvSR37b1D2Z0pYpwF
 F0osr5zzhScCQCkIPNZBww3Tsk6sq1YwIm57bATTawnERylWjk33hIedQ2c21yBW
 a1a9eB+EyUdgs34Q6NiIEu4ytg742QLXywYPWf+Xskfus7xIUsgOhez+Iscslh7v
 h8vHxKWaP7nXLuIZ8CKbmTWQ2ujJULeyHKbZie3utA3+61wA35NyNzA7TnVuEPOo
 pOjaQR6HF78lqBmrFiCdOugMKkPk7VBM/+43inH2D9Y5oQEDqmb1QOMpg3ekYjoa
 T/iz4OWThMwUU1oRGl3sAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724069410; x=
 1724155810; bh=w4XxV8t7d4FBrTlqfBcRiEblpXOgHlRWhYqqGC4/luU=; b=n
 8zFVONynTFpiO6L7zJJqjx1ZGG6PLfOuRvZ8GbG7OxaEj81DrMicWtHJuvtv+G7T
 Fk3yp4tx6H/sI1OZDsEltyp4A9QdwJRaCfDEQc0vkVZCKmsRzF4Ll4rLcvXQodAa
 0IBLdhwoANZ1hJxb5UEIBWgD81A1SiVCam/zbK+ZgtrpEQsE7fjRg/S5XKXpQhuI
 j/F64rTi3Eok6HjnCn/qVCHSJVTlP2rvov/ZyVXrN6o0YIfHbAbn+JbjbWjxCrEk
 YZMRS9Ng9AQEyy4uFO8Xw1ii0iJCJq6lnP90SB7S6uctHLaTJo+pIjntbYGSqS/V
 VPhgTcUNPQ9Mfio1+2khw==
X-ME-Sender: <xms:ITbDZoyLPO9eJqFgc3Y8g_ilXhH2-2rSSNSxrU4yg9iEsoIOab8fLQ>
 <xme:ITbDZsROLZemX0CwTOLEqXBXtq17VbRtZqrd7LRa-zRanSbIQHF9cXxMqkuygxrf4
 b-snvuH-HLw9v9z5SU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugedggeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertdertddt
 necuhfhrohhmpedftehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrd
 guvgeqnecuggftrfgrthhtvghrnhephfdthfdvtdefhedukeetgefggffhjeeggeetfefg
 gfevudegudevledvkefhvdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepfedt
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmihhnhigrrhgusegrtghmrdhorh
 hgpdhrtghpthhtohepsghpsegrlhhivghnkedruggvpdhrtghpthhtohepjhgrmhgvshdr
 mhhorhhsvgesrghrmhdrtghomhdprhgtphhtthhopegrlhgvgigrnhgurhgvrdgsvghllh
 honhhisegsohhothhlihhnrdgtohhmpdhrtghpthhtoheprhhosggvrhhtrdhjrghriihm
 ihhksehfrhgvvgdrfhhrpdhrtghpthhtohephhgrohhjihgrnhdriihhuhgrnhhgsehgmh
 grihhlrdgtohhmpdhrtghpthhtohepmhhorhgsihgurhhsrgesghhmrghilhdrtghomhdp
 rhgtphhtthhopehlihhuhihunhhtrghouddvsehhuhgrfigvihdrtghomhdprhgtphhtth
 hopehtohhnhidrlhhutghksehinhhtvghlrdgtohhm
X-ME-Proxy: <xmx:ITbDZqX5Hp9dIignNuuezrALmI7Z3798s0Sp-aEg0FJ8FndpyFtzJw>
 <xmx:ITbDZmj1eRNKm8AKnOWhzhvXbxWiDMpOK8fpKOip8HW3XoLyHKbMEw>
 <xmx:ITbDZqCxjIVWrZZBbEx2BuPhqg6sFTl8Y2CI7KNHj_2USD6olE70Fg>
 <xmx:ITbDZnL940TwM96itHbUXhsH97zxAtJaJ8t3blm7ZpzJpwohX2DdSw>
 <xmx:IjbDZs6tNV__PXm-XBUnUhSqXn4zSSBOI2f-ROyoA51sXjwvZSZwFOjW>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 969BC16005E; Mon, 19 Aug 2024 08:10:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 19 Aug 2024 14:09:49 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Yuntao Liu" <liuyuntao12@huawei.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org
Message-Id: <dabde7bf-dcff-47c6-a68d-f5018ab00282@app.fastmail.com>
In-Reply-To: <20240819113855.787149-1-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
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
 platform_device_id table. > > Yuntao Liu (9): > usb: eh [...] 
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
 for more information. [103.168.172.148 listed in list.dnswl.org]
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.148 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sg1DI-0001Tu-PV
Subject: Re: [Openipmi-developer] [PATCH -next 0/9] drivers: fix some module
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
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Ludovic.Desroches" <ludovic.desroches@microchip.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 codrin.ciubotariu@microchip.com,
 =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
 Robert Richter <rric@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Corey Minyard <minyard@acm.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Tony Luck <tony.luck@intel.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, morbidrsa@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Vinod Koul <vkoul@kernel.org>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 19, 2024, at 13:38, Yuntao Liu wrote:
> Add MODULE_DEVICE_TABLE(), so modules could be properly autoloaded
> based on the alias from platform_device_id table.
>
> Yuntao Liu (9):
>   usb: ehci-mv: fix module autoloading
>   soc: pxa: ssp: fix module autoloading
>   misc: atmel-ssc: fix module autoloading
>   i2c: at91: fix module autoloading
>   mpc85xx_edac: fix module autoloading
>   dmaengine: pxa: fix module autoloading
>   dmaengine: mmp_pdma: fix module autoloading
>   dmaengine: at_hdmac: fix module autoloading
>   ipmi: ipmi_ssif: fix module autoloading

I looked at all the patches and found that most of them do not
use the table any more, or will stop using it in the near future.

I think your work to validate the correctness of the entries
is useful, but it may be more helpful to focus on removing
all the unused tables, including those that have a
MODULE_DEVICE_TABLE() tag.

If you are planning to do more such cleanups, maybe you can
go through them one subsystem at a time and look for drivers
that have both of_device_id and i2c_device_id/platform_device_id/
spi_device_id tables. If nothing in the kernel creates a device
with the legacy string, you can then send a patch that removes
the old device ID list and at the same time makes the DT support
unconditional in case there is an #ifdef CONFIG_OF check.

If the probe() function accesses platform_data, this would also
be unused, allowing an even nicer cleanup of removing the
platofrm_data path in favor of OF properties.

      Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
