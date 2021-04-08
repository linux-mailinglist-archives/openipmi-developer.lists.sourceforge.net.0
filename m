Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF4035909A
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 01:47:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUeN5-0006ZS-I8; Thu, 08 Apr 2021 23:47:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lUeN3-0006ZA-KO
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 23:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3gGVX3JOaG38XWZoaFoORuXmUHcSVYuPdREEhXwr2lM=; b=g8QQUpIT1UnK4v+KyqnOtXhc4j
 0Qo5nDQmLs7HGOxhbNfdJtNgqn/WSoQ6Y6dn6PwcOt99eLIvadEOr+Fw+rp0MGpUL1LHj2XrcSv1S
 11mykHYYMBUSR5EsoyyQ6+FdTylzfYY/7+oCjLLJmK48mY62P4GWzi/ocRFEse/PsMPk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3gGVX3JOaG38XWZoaFoORuXmUHcSVYuPdREEhXwr2lM=; b=OECGFl9rc9THGX0ksPPQDOzK1Y
 nJBSzswVy3qyw4LU4Cbn9Lkku6eAXjz06DK0RtmQSKMHDMbIWKi703NBP0S4yMwO5LOuN2vhvW164
 ce9gnaXP0+SKtkOiqFBfR6Q7qwIRdghogYCyOzdAeEMyzPLEmf+/hKSyS9zWomn+y7oA=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUeMd-0078wI-3r
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 23:47:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id EFA965805A7;
 Thu,  8 Apr 2021 19:46:58 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Thu, 08 Apr 2021 19:46:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=3gGVX3JOaG38XWZoaFoORuXmUHcSVYu
 PdREEhXwr2lM=; b=lnFwOf4EL+ECFKXoXPRXOpXUUPG3taJf/ImmKVTwL97B24g
 h3RlixiPG8WqIkzLfvmPG+Mx4WzW2qh6u5HeMchAMSAWlzEPoVz3SAK/CmmBQQZV
 vsj61ImqTPyR7bOcv1bQ1yuCWHcF7bRAxrN2t5wcU/59H/zB+N/T1Q04/RnWfd0C
 5Yzlti2tdXPwwzC6PJHIm6sZ/Nv+hM465zdUlYFZqkMghOHT+pMB8dciT9pRp9Yi
 mv/AenehPCuMMsGZZ28yWFpQrL0jUgHc5T9MAM8w6WjTlgWItQzVfcjVonDPGRWR
 QazXSY4nX+z6D9VvhCNXnr5iw23frCDAtbR+4mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=3gGVX3
 JOaG38XWZoaFoORuXmUHcSVYuPdREEhXwr2lM=; b=RR2UR/DwyT+tnS+oLi2+WZ
 aQEgXV5QaBt1NMMLPdUYLwmkmBqu+2bIF4jUJaut/3y/XXXJDwfZDlufZYgaKC4o
 5KQLGZL2lklUG29GHw67B6NJdHmM6njYa2b60RhYGvu7uKzMMIJ44dGK0c+j8wnC
 D5Bf1eSisDklyZJGnLt53hHdgTC24xKDfW992Wn9NHJzmFWfe/j68kN7cgwz4Fjz
 3BX6g2FgXvzL+VrshhbpPJKgobivz7PWCRiAZFKYkNH0SgIukzx8kfUpWE3DOpEa
 AhO6EO0O9uVejDI5fqEw3RDFSLHoFc4yW0mmYYMcpmLfRxA8LmMfvP6p8j1u2bjw
 ==
X-ME-Sender: <xms:8JVvYABtmjmz89n_8bZqwN9g7QVpCROxcRhe_fSokdaZT0Nnn-t51g>
 <xme:8JVvYCiFpAgwel-c5LdaV26DGsgnRFSxeJTDxXHjp0dK1rK6s7eaAPCh63xl-HDB9
 aP9Tl5FFLr1hMcnDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudektddgvdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepudfftddvveekfffgteffffeuveegjeelgefhffejtdehtdfhlefgkeef
 hfefkeeinecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:8JVvYDn67uV7od1rXZlxzL1plYYBwn1U3mvdS68-YbwWghNzfOqeQg>
 <xmx:8JVvYGws__rMbJbzdKLbdoLGeHiIt4qm3oQw5kAVhzg0vpYLKoAChw>
 <xmx:8JVvYFS2YvgQnpwAhLXLYIOo0xo_tk6iSGVaP5LXEuBbg__VYzlJdw>
 <xmx:8pVvYGBMihZ7Bk4d8V6f4pvUUsJr3-DP9xfNGRT8Q922NanT-sa7bg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 91F22A0007C; Thu,  8 Apr 2021 19:46:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <6ff29d26-543a-4790-abb4-ebaa3f8d0265@www.fastmail.com>
In-Reply-To: <20210408121441.GG7166@minyard.net>
References: <20210319061952.145040-1-andrew@aj.id.au>
 <2db77e16-3f44-4c02-a7ba-a4fac8141ae3@www.fastmail.com>
 <20210408121441.GG7166@minyard.net>
Date: Fri, 09 Apr 2021 09:16:35 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUeMd-0078wI-3r
Subject: Re: [Openipmi-developer] [PATCH v2 00/21] ipmi: Allow raw access to
 KCS devices
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
Cc: devicetree@vger.kernel.org, "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 Ryan Chen <ryan_chen@aspeedtech.com>, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Thu, 8 Apr 2021, at 21:44, Corey Minyard wrote:
> On Thu, Apr 08, 2021 at 10:27:46AM +0930, Andrew Jeffery wrote:
> > Hi Corey,
> > 
> > On Fri, 19 Mar 2021, at 16:49, Andrew Jeffery wrote:
> > > Hello,
> > > 
> > > This series is a bit of a mix of things, but its primary purpose is to
> > > expose BMC KCS IPMI devices to userspace in a way that enables userspace
> > > to talk to host firmware using protocols that are not IPMI.
> > > 
> > > v1 can be found here:
> > > 
> > > https://lore.kernel.org/openbmc/20210219142523.3464540-1-andrew@aj.id.au/
> > > 
> > > Changes in v2 include:
> > > 
> > > * A rebase onto v5.12-rc2
> > > * Incorporation of off-list feedback on SerIRQ configuration from
> > >   Chiawei
> > > * Further validation on hardware for ASPEED KCS devices 2, 3 and 4
> > > * Lifting the existing single-open constraint of the IPMI chardev
> > > * Fixes addressing Rob's feedback on the conversion of the ASPEED KCS
> > >   binding to dt-schema
> > > * Fixes addressing Rob's feedback on the new aspeed,lpc-interrupts
> > >   property definition for the ASPEED KCS binding
> > > 
> > > A new chardev device is added whose implementation exposes the Input
> > > Data Register (IDR), Output Data Register (ODR) and Status Register
> > > (STR) via read() and write(), and implements poll() for event
> > > monitoring.
> > > 
> > > The existing /dev/ipmi-kcs* chardev interface exposes the KCS devices in
> > > a way which encoded the IPMI protocol in its behaviour. However, as
> > > LPC[0] KCS devices give us bi-directional interrupts between the host
> > > and a BMC with both a data and status byte, they are useful for purposes
> > > beyond IPMI.
> > > 
> > > As a concrete example, libmctp[1] implements a vendor-defined MCTP[2]
> > > binding using a combination of LPC Firmware cycles for bulk data
> > > transfer and a KCS device via LPC IO cycles for out-of-band protocol
> > > control messages[3]. This gives a throughput improvement over the
> > > standard KCS binding[4] while continuing to exploit the ease of setup of
> > > the LPC bus for early boot firmware on the host processor.
> > > 
> > > The series takes a bit of a winding path to achieve its aim:
> > > 
> > > 1. It begins with patches 1-5 put together by Chia-Wei, which I've
> > > rebased on v5.12-rc2. These fix the ASPEED LPC bindings and other
> > > non-KCS LPC-related ASPEED device drivers in a way that enables the
> > > SerIRQ patches at the end of the series. With Joel's review I'm hoping
> > > these 5 can go through the aspeed tree, and that the rest can go through
> > > the IPMI tree.
> > > 
> > > 2. Next, patches 6-13 fairly heavily refactor the KCS support in the
> > > IPMI part of the tree, re-architecting things such that it's possible to
> > > support multiple chardev implementations sitting on top of the ASPEED
> > > and Nuvoton device drivers. However, the KCS code didn't really have
> > > great separation of concerns as it stood, so even if we disregard the
> > > multiple-chardev support I think the cleanups are worthwhile.
> > > 
> > > 3. Patch 14 adds some interrupt management capabilities to the KCS
> > > device drivers in preparation for patch 16, which introduces the new
> > > "raw" KCS device interface. I'm not stoked about the device name/path,
> > > so if people are looking to bikeshed something then feel free to lay
> > > into that.
> > > 
> > > 4. The remaining patches switch the ASPEED KCS devicetree binding to
> > > dt-schema, add a new interrupt property to describe the SerIRQ behaviour
> > > of the device and finally clean up Serial IRQ support in the ASPEED KCS
> > > driver.
> > > 
> > > Rob: The dt-binding patches still come before the relevant driver
> > > changes, I tried to keep the two close together in the series, hence the
> > > bindings changes not being patches 1 and 2.
> > > 
> > > I've exercised the series under qemu with the rainier-bmc machine plus
> > > additional patches for KCS support[5]. I've also substituted this series in
> > > place of a hacky out-of-tree driver that we've been using for the
> > > libmctp stack and successfully booted the host processor under our
> > > internal full-platform simulation tools for a Rainier system.
> > > 
> > > Note that this work touches the Nuvoton driver as well as ASPEED's, but
> > > I don't have the capability to test those changes or the IPMI chardev
> > > path. Tested-by tags would be much appreciated if you can exercise one
> > > or both.
> > > 
> > > Please review!
> > 
> > Unfortunately the cover letter got detached from the rest of the series.
> > 
> > Any chance you can take a look at the patches?
> 
> There were some minor concerns that were unanswered, and there really
> was no review by others for many of the patches.

Right; I was planning to clean up the minor concerns once I'd received 
some more feedback. I could have done a better job of communicating 
that :)

> 
> I would like this patch set, it makes some good cleanups.  But I would
> like some more review and testing by others, if possible. 

No worries. I'm trying to rope some others in to take a look.

Thanks for the response.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
