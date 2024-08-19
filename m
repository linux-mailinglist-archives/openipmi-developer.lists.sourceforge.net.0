Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1D1956A15
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Aug 2024 13:58:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sg11J-0003a9-Ep;
	Mon, 19 Aug 2024 11:57:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <arnd@arndb.de>) id 1sg11I-0003Zw-3X
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h4wzlPsfJQiRwt3ClGapHTB9X8sJmK/ibZX4Or4H7kA=; b=gDeXMKg7kUmN003kCEAhiatmbJ
 59EicnckkrCtA9ISx42JXdYyWFha80slVuV7n7c+CasHwCbwsfc/crrokxL5bF5eHxE+jBIYOapDF
 JCf9jJ+roJ6uP3KFmakIlzYDhWvFiiIyHvOP5BIuBBDzj705ACi/r7WyQlSDq5At91Es=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h4wzlPsfJQiRwt3ClGapHTB9X8sJmK/ibZX4Or4H7kA=; b=eczsQ+otR5Bcp8T0e/e2zIE8/I
 +h8hdZU2IWq8Cmx5BMxkmwyV8Lina2dlud1BKIeJHtTWsF8RErG088pNwsyXO/SYbaTBAeryCfFxt
 Whv57zzmY8+AcRAZtfC/6K5K+NLxa2ywaHkBhNoGYuMsxYpRk/4aN9cgAVWDoq/T88x8=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg11H-0000rS-DM for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:57:56 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id C46B1138FD76;
 Mon, 19 Aug 2024 07:57:49 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
 by phl-compute-04.internal (MEProxy); Mon, 19 Aug 2024 07:57:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1724068669;
 x=1724155069; bh=h4wzlPsfJQiRwt3ClGapHTB9X8sJmK/ibZX4Or4H7kA=; b=
 iAKp/OxuR/WBF3sTlSd60iHsBjLLKhIFOFSyVUEV6F/Zd1HXCp4hRH3CLLK/AoTt
 xDhpIBRUDAyrWSTOkNaoa0JIQ3pGslFe/0dBvAh/4ygmvnKnNrPAXuAKRSM/MS+i
 dX1gJcds65xhjUDJFs+PM4RdxaWuQYIoPSO+7hfo+kjitNkIonYJx8X2+HZRpv8a
 3m3Gq/W7knLo6G1lVGwFFQGyaZ3QjfzQ1PQukatDHDR2jHRtY9NvQiGSA0LucOeG
 4y0wv2g44X+KTJ394UCvQB/K79BXy9aL9Xs206zqf7dKPsAWUptutNPx0doP0pc5
 Ycnr/sMotQEv2lkRL12BkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1724068669; x=
 1724155069; bh=h4wzlPsfJQiRwt3ClGapHTB9X8sJmK/ibZX4Or4H7kA=; b=r
 cL8NVYOgjDHTqB1UiVRyl8BFVwa/jLdJvE0Keui998kkvQngvDRZWr2iBzoZWIRl
 4xMSif+DTf4Ekc69tHOQbIDQY+31sSO1Hu8nXmbWOi/SKY7IJa8P7Bj+JiIBCbOU
 Gjz/Az+taJTfCid7X/Qp1q59tm598/kakx0xhoBaUv0I4GmCmrs2aGTtf05Rib6A
 Pr4lpxQA5+qkLW6cCue5+XqXE/QCOYOB5keSJYsIpIRJ5jKaDKl7RnVaVdj4dAvm
 MiBuLoeqKnziCNNjmgNEQ+6aLkT+LPastI1Ao0mT2Smn6fzR2uANKC+4wEb6Ri4L
 kb2+Y4td6gdvkCCCJi0Gw==
X-ME-Sender: <xms:PTPDZlETO2xwMA9OPitNmD4B1D9hCIbSjyNw8eyJyPJKM2EpkdfPhw>
 <xme:PTPDZqUbJH2dXXogHID-n3vYpFEhiv9Vp28T3sNiEUNcOin3clexDHLSI4DAYAzqu
 _O4WfBJVvMxorpEhkg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddugedggeeiucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:PTPDZnJbskLLT633CZqWiWzTgD5-_sTSRDEwamyFbWWi-vraJx-yWA>
 <xmx:PTPDZrHHFBIQO4cRe9p2mxsAHtkFXqn_SZA2UWmnymm6as0Gu278rg>
 <xmx:PTPDZrXQsS8DoqzPYbD2_IDiLcDuQ1DBc75Mf7J-9tm7F6vdTmkxxQ>
 <xmx:PTPDZmMX--2dtB5QGgl5Edzu-KroeCUlJaezHtJykz7zdXtyaAL__g>
 <xmx:PTPDZlj2BX2ZPqgYgGZamuzLIlVr4h_o0Z3yCJGpJtHggArS71p0_Y1S>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 93E5E16005E; Mon, 19 Aug 2024 07:57:49 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Mon, 19 Aug 2024 13:57:19 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Yuntao Liu" <liuyuntao12@huawei.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 linux-i2c@vger.kernel.org, linux-usb@vger.kernel.org
Message-Id: <d4024f47-96c4-40f2-8bfb-09f3539b2ed4@app.fastmail.com>
In-Reply-To: <20240819113855.787149-6-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
 <20240819113855.787149-6-liuyuntao12@huawei.com>
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
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.148 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sg11H-0000rS-DM
Subject: Re: [Openipmi-developer] [PATCH -next 5/9] mpc85xx_edac: fix module
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

Acked-by: Arnd Bergmann <arnd@arndb.de>

>  	},
>  	{}
>  };
> +MODULE_DEVICE_TABLE(platform, mpc85xx_pci_err_match);
> 

I see that this device is created in arch/powerpc/sysdev/fsl_pci.c,
so your change makes sense here.

     Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
