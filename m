Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFD635D421
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Apr 2021 01:46:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lW6GQ-0003pU-N5; Mon, 12 Apr 2021 23:46:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lW6GP-0003pK-2t
 for openipmi-developer@lists.sourceforge.net; Mon, 12 Apr 2021 23:46:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fmEbaEZe+KED5JiPxN0DVWg/HvQWdbcFjVOEUztK2NI=; b=kyZkTIrOfBjDF6wmLWQIs89HEU
 gaV+OK5yN3Ejy7mWBIaBD+Kner27mWewj17cB8CShTcKjUwau6Yq4+r3ijuCaFb4BI6cHiPpuE2z3
 9MrSHIu8QX1hFyaC9QA6wi0ktEIew/JxWTKyQZddV+Ig8lFy/mfNXuW4ygKtX5P7FEpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fmEbaEZe+KED5JiPxN0DVWg/HvQWdbcFjVOEUztK2NI=; b=JRLZc5+AEe2hjkJB0LxDV68d7w
 4rBTJesYYbYqh9b6hiAMdE46h6OQohIuRVFq2ecHgl0bAq6qGEf6g7TSuQIwyGei/FhhPgJXpiVOj
 YlBs5/AJjwIhRtf1L1ZJsN7vrE1CNGNgsw2o5Slr0h/0l2cx1G+oNxGwqwIQvW+MVa1Y=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lW6G9-00CZZE-IL
 for openipmi-developer@lists.sourceforge.net; Mon, 12 Apr 2021 23:46:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 62113580449;
 Mon, 12 Apr 2021 19:46:17 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Mon, 12 Apr 2021 19:46:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=fmEbaEZe+KED5JiPxN0DVWg/HvQWdbc
 FjVOEUztK2NI=; b=Vx/AVcRxxdiZfCzmg6HH9s7fTRcRO2A7YIjLyLaYe8qYr0r
 BS6egDBjdLmYM34p470HJr5LqP5KoInLDDwqdcamk5MRSrxO7dAhMPAMUDC0dhjh
 vJPcgIwiLG8KOJ3uKA0GTGu1jcMQaOMSnd2WrYuTHIQZVsAWFGqkwBRXNlti55x/
 6ugOqakXKGxkr0fFLfkKWrDXxcxOVi08DvlZS08DU0g+kMkvrqeAYCT7meuT5hdW
 cOoZaNo0ceLqWTSGPHWkpxqHpGYT21VoEfaKHBFdWelkIXGtvA0GWL6pRx9n2reQ
 6kULJBJilakY/lES25nZKfX1V5Pxebr9HcJga0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=fmEbaE
 Ze+KED5JiPxN0DVWg/HvQWdbcFjVOEUztK2NI=; b=RCRlZHDVBmLjCH2Y7LqZJ+
 LPMZ6zfYSA6N9BRlHWDS80Td69J2sFZ47v0FrYjGX9CByF1tu62RmXm7qpQJoCd9
 lyFdYNdzNHNXMTeMxpri2aLsG94InMhJ8JdMtTYuYL8jgwgeI3B/KHx/1h7FXxwW
 GFXGj/30mGVdydc6aQu8SVDfHYocr+6I1EzEpM+MqorxoGRXWXNhvEDsz/DFvSXa
 rYE3E5TnGUmIZZ4eTJZgl8j6ujkfUb41tPfnYSTWk7WZo5HbgTE0bvvQIlBDdV1N
 ceo9eazaMv36UwCVQ0aDxCcUePl6VUptDzGA6jyNVzZzVveA5t4xIBSb2wGGWApw
 ==
X-ME-Sender: <xms:yNt0YDKsHdDMWdXB67vih2mzvrdYlOcCvVQwdzWrwLB92pCjtohLGg>
 <xme:yNt0YHJZZadPM5R8veYmJ54Ch37QTHIf99pdhSUG5UX_33jbc44ne40lbbkqNDNhY
 p-7h1o0hS8xbEO2Pw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudekkedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:yNt0YLvZ-5yk3agrT9YWtjZWTZ1n12af9CvsRTw7iYChxJE0LfGbCQ>
 <xmx:yNt0YMYiIUT79Zr8a0tOPJ1Qwj4euwq3Id7w13GBk2gsc9l4e3s7GA>
 <xmx:yNt0YKZ2JcYj0a965dlZZV-2elCkGC4TFQDZ2oRzO8p2l2IKDdo0bg>
 <xmx:ydt0YHTKgXOM0oSWC70tTjSLyk9flINctzDvB8B_VuS-YFOxXGuOWQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 38211A00492; Mon, 12 Apr 2021 19:46:16 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <e2d7268b-bdaf-45bf-bb21-a5b9f7e985a4@www.fastmail.com>
In-Reply-To: <CAK8P3a3RXr5CR7DJgD9rEkN8owpPxXRgzRnPB_5LuQcHkzc4LA@mail.gmail.com>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-16-andrew@aj.id.au>
 <CAK8P3a1HDQdbTAT4aRMLu-VFz720ynPqPHG5b22NZ5p5QfUqOw@mail.gmail.com>
 <ba63f830-4758-49aa-a63e-f204a8eec1b4@www.fastmail.com>
 <CAK8P3a3RXr5CR7DJgD9rEkN8owpPxXRgzRnPB_5LuQcHkzc4LA@mail.gmail.com>
Date: Tue, 13 Apr 2021 09:15:55 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Arnd Bergmann" <arnd@kernel.org>
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
X-Headers-End: 1lW6G9-00CZZE-IL
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
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
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



On Mon, 12 Apr 2021, at 18:18, Arnd Bergmann wrote:
> On Mon, Apr 12, 2021 at 3:33 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > On Fri, 9 Apr 2021, at 17:25, Arnd Bergmann wrote:
> > > On Fri, Mar 19, 2021 at 7:31 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > > >
> > > > The existing IPMI chardev encodes IPMI behaviours as the name suggests.
> > > > However, KCS devices are useful beyond IPMI (or keyboards), as they
> > > > provide a means to generate IRQs and exchange arbitrary data between a
> > > > BMC and its host system.
> > >
> > > I only noticed the series after Joel asked about the DT changes on the arm
> > > side. One question though:
> > >
> > > How does this related to the drivers/input/serio/ framework that also talks
> > > to the keyboard controller for things that are not keyboards?
> >
> > I've taken a brief look and I feel they're somewhat closely related.
> >
> > It's plausible that we could wrangle the code so the Aspeed and Nuvoton
> > KCS drivers move under drivers/input/serio. If you squint, the i8042
> > serio device driver has similarities with what the Aspeed and Nuvoton
> > device drivers are providing to the KCS IPMI stack.
> 
> After looking some more into it, I finally understood that the two are
> rather complementary. While the  drivers/char/ipmi/kcs_bmc.c
> is the other (bmc) end of drivers/char/ipmi/ipmi_kcs_sm.c, it seems
> that the proposed kcs_bmc_cdev_raw.c interface would be
> what corresponds to the other side of
> drivers/input/serio/i8042.c+userio.c.

Right. I guess the question is should we be splitting kernel subsystems 
along host/bmc lines? Doesn't feel intuitive, it's all Linux, but maybe 
we can consolidate in the future if it makes sense?

> Then again, these are also on
> separate ports (0x60 for the keyboard controller, 0xca2 for the BMC
> KCS), so they would never actually talk to one another.

Well, sort of I guess. On Power systems we don't use the keyboard 
controller for IPMI or keyboards, so we're just kinda exploiting the 
hardware for our own purposes.

> 
> > Both the KCS IPMI and raw chardev I've implemented in this patch need
> > both read and write access to the status register (STR). serio could
> > potentially expose its value through serio_interrupt() using the
> > SERIO_OOB_DATA flag, but I haven't put any thought into it beyond this
> > sentence. We'd need some extra support for writing STR via the serio
> > API. I'm not sure that fits into the abstraction (unless we make
> > serio_write() take a flags argument?).
> >
> > In that vein, the serio_raw interface is close to the functionality
> > that the raw chardev provides in this patch, though again serio_raw
> > lacks userspace access to STR. Flags are ignored in the ->interrupt()
> > callback so all values received via ->interrupt() are exposed as data.
> > The result is there's no way to take care of SERIO_OOB_DATA in the
> > read() path. Given that, I think we'd have to expose an ioctl() to
> > access the STR value after taking care of SERIO_OOB_DATA in
> > ->interrupt().
> >
> > I'm not sure where that lands us.
> 
> Based on what I looked up, I think you can just forget about my original
> question. We have two separate interfaces that use an Intel 8042-style
> protocol, but they don't really interact.

Right, this is still true given Power doesn't care for keyboards or 
IPMI via the keyboard controllers; the two still don't interact.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
