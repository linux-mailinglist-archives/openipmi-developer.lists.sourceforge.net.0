Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B65735B832
	for <lists+openipmi-developer@lfdr.de>; Mon, 12 Apr 2021 03:34:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lVlTH-0002zU-TU; Mon, 12 Apr 2021 01:34:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lVlTH-0002zJ-6l
 for openipmi-developer@lists.sourceforge.net; Mon, 12 Apr 2021 01:34:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BG5hllZBbXO/uaUx2ho6c9NeeDH0XaQ6oWYDpW//0Ds=; b=EsM18iSwo027pU0MxGrqJ9Xcth
 UGoMgjcsWpK7pNJokm4nVlVga7u8/iOa5vaW3vYKtxLrrgXpOfVBJWbhhwBiiuPC45QNShCQsDTLK
 nxikc3+rbWETiz8tXnbp9qfMT7FXxV0f6sOK96E7f3agsXgzb0uWBtlNByLW9Rmgv0AE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BG5hllZBbXO/uaUx2ho6c9NeeDH0XaQ6oWYDpW//0Ds=; b=goabcjyp330nIc5KAO78IvViqo
 EKhUkAXHB56ARyIdyaljuaN/BqMEmv6xiwwmaJSlh+BWe/5dzm13hBjxUcDQu2KYnCKgIJ8X0rQh/
 /wT5OlnonUW/dtqDfwoF8abXbgsNnbrIpYHPAldDGO+e13lODkHgzhSadMaVoWN9J7KU=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lVlT4-0002V2-UZ
 for openipmi-developer@lists.sourceforge.net; Mon, 12 Apr 2021 01:34:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C0D4A580424;
 Sun, 11 Apr 2021 21:34:14 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 11 Apr 2021 21:34:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=BG5hllZBbXO/uaUx2ho6c9NeeDH0XaQ
 6oWYDpW//0Ds=; b=kF6J7vJlfzPeJki4UBh4ni0qEwV1lpJbHHcYZAPVECpYBIS
 UG38LvqvRbNJVHEyps6jp558YoerrJPco4D31+TIbffAZtuRSGALC3cQrlEkIV7F
 W7Zeyl8OdGAeaqFlLbIO/JltoJHi+OClhehnx/yMxPy8HuIuRdX2T/eyUXIwAnZb
 GZg3CUTTJE7QWJsA4sAmiRV+Hm6xiAzZzlvF0L525y4PDr02c2Yi9mrqxjPORsQa
 J32GG3K1vzWi/ASdHFyZPm4mcRS6CBlDv7zPWsW2tG4PXG0ym3QwUTBHtk+GQJJn
 7nLwKiOZj7Z8K33ApJoPxgDEoRUMq0kEdv0UGzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=BG5hll
 ZBbXO/uaUx2ho6c9NeeDH0XaQ6oWYDpW//0Ds=; b=G8BNco2N6IZ9Vm5RUcE29x
 aMCp6xE7gGZxnkE72tX5/VULywfeW2gcpuYWWFrhCeV8ha5kwk9s7G9t/aD9bhXH
 LBfkSDUne1tF/ygIT1Pq+aXZ1U0Lr2iIMNX/Yr8ock/cgVbJRcUCRh+fGvCCzQFc
 nOnHCob/E4U13OKAoH1hufv8mXVxmPWRBHi4SMFiYrh37hWg8vZBAkFeIoFpbbM1
 TzrXtyWy64AkaS8q5TDO5EVzL9iZ1OGO/jcCwed2PUcZ0bGHQ+//DmpNxggGeRz6
 /vkOBDjFzA+BoNayVE1p04OoCeZU11uIYL5gXk8oBsPwhuCij4AJwmxQIrkEDMqw
 ==
X-ME-Sender: <xms:laNzYHYfkdm4xZkWh1ohaN-VgrO6EdUs-eRDUnzgjNu15oZHVLOZ-g>
 <xme:laNzYGaFzKEe-bULTyvDc_hI3qKnFWN9sY8X_FtEoPwq3wmlgK67BUzdJ4y78RC3A
 stri1S7EQBO5AJccA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudekiedggeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:laNzYJ_IVgmsW7oVD2L_M2G9J-OlwJeiVWNlgNpYIMG4LBfUEFIOcQ>
 <xmx:laNzYNqxqQvtE5pqmfQg71mk3Yq1ub6OTBQfDiOPAzmER8i7sSBubw>
 <xmx:laNzYCpaRqoJazz3ANLOaVNL-Nfuu_Qp-0kAJcg8ZwT49Fy1VTWF2g>
 <xmx:lqNzYHgjphF3n8_6Gp-wHXjnm_KPTVYBgNmZa_af57Vbu39evGVMmg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 3B785A00079; Sun, 11 Apr 2021 21:34:13 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <ba63f830-4758-49aa-a63e-f204a8eec1b4@www.fastmail.com>
In-Reply-To: <CAK8P3a1HDQdbTAT4aRMLu-VFz720ynPqPHG5b22NZ5p5QfUqOw@mail.gmail.com>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-16-andrew@aj.id.au>
 <CAK8P3a1HDQdbTAT4aRMLu-VFz720ynPqPHG5b22NZ5p5QfUqOw@mail.gmail.com>
Date: Mon, 12 Apr 2021 11:03:52 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Arnd Bergmann" <arnd@kernel.org>,
 "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lVlT4-0002V2-UZ
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_v2_16/21=5D_ipmi=3A_kcs?=
 =?utf-8?q?=5Fbmc=3A_Add_a_=22raw=22_character_device_interface?=
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 DTML <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 9 Apr 2021, at 17:25, Arnd Bergmann wrote:
> On Fri, Mar 19, 2021 at 7:31 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The existing IPMI chardev encodes IPMI behaviours as the name suggests.
> > However, KCS devices are useful beyond IPMI (or keyboards), as they
> > provide a means to generate IRQs and exchange arbitrary data between a
> > BMC and its host system.
> 
> I only noticed the series after Joel asked about the DT changes on the arm
> side. One question though:
> 
> How does this related to the drivers/input/serio/ framework that also talks
> to the keyboard controller for things that are not keyboards?

I've taken a brief look and I feel they're somewhat closely related.

It's plausible that we could wrangle the code so the Aspeed and Nuvoton 
KCS drivers move under drivers/input/serio. If you squint, the i8042 
serio device driver has similarities with what the Aspeed and Nuvoton 
device drivers are providing to the KCS IPMI stack.

Both the KCS IPMI and raw chardev I've implemented in this patch need 
both read and write access to the status register (STR). serio could 
potentially expose its value through serio_interrupt() using the 
SERIO_OOB_DATA flag, but I haven't put any thought into it beyond this 
sentence. We'd need some extra support for writing STR via the serio 
API. I'm not sure that fits into the abstraction (unless we make 
serio_write() take a flags argument?).

In that vein, the serio_raw interface is close to the functionality 
that the raw chardev provides in this patch, though again serio_raw 
lacks userspace access to STR. Flags are ignored in the ->interrupt() 
callback so all values received via ->interrupt() are exposed as data. 
The result is there's no way to take care of SERIO_OOB_DATA in the 
read() path. Given that, I think we'd have to expose an ioctl() to 
access the STR value after taking care of SERIO_OOB_DATA in 
->interrupt().

I'm not sure where that lands us.

Dmitry, any thoughts here?

> Are these
> separate communication channels on adjacent I/O ports, or does there
> need to be some arbitration?

As it stands there's no arbitration.

Cheers,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
