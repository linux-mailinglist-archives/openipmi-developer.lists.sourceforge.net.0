Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B8A38DE6E
	for <lists+openipmi-developer@lfdr.de>; Mon, 24 May 2021 02:36:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lkyaA-0002BP-FJ; Mon, 24 May 2021 00:36:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lkya8-0002BD-Qj
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 00:36:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zkdYOgBr6Su2ai8/JFeN24jFqNEfx2N9VN/bHqPBWM8=; b=UCzwL4ynUq/4PSIqAWXPGAQ2TM
 mWsZSTODdCpQdglTRWE03sshlMSYhMwB955hrKm9C9AJHb2ifQhWAIafL7FeclKyED1+eVCTkVSWI
 yZ5C59x6B3u86vZJj07s4RyLMkz7Cevqm9WqO1Yojgd8JBNLMfm+35B+RkFaTx5a2SG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zkdYOgBr6Su2ai8/JFeN24jFqNEfx2N9VN/bHqPBWM8=; b=EEhcQg2La3yk4ieTF2p97QfJdb
 4SDMjMFI6/c5q71yU0oZS5sffZQ0MIhhwtPJaNaAxC6XqOHUYtzjTe+QWAA6kXYiLKZQHWUCTMr7x
 VTNP27bOaljKR4oy/ltqlpbn7R/TJlb3qemgCg5uKgN1MyWhjcv8xjHzhRYEUiL8z/d0=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lkya5-003XWc-CR
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 00:36:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id A26B35802E4;
 Sun, 23 May 2021 20:36:23 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 23 May 2021 20:36:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=zkdYOgBr6Su2ai8/JFeN24jFqNEfx2N
 9VN/bHqPBWM8=; b=I1UgvuBWfB/H3UC2DCeyOvtYsiu44FCeM+ceMlNQh86h/rQ
 VH3oGHRSQZE0ESXyx5gleiDHAc+RQ2+DnK0aZu3tq5fh6KAseOuXmloxARAqUV66
 VHbUuprYslYzYg4o9o/6iuxZgENs+w/NX+6dfJ/zKphutE1aaZjGqhz9RTdIgAwi
 q/UoPr66PSotyBmtus5RHQOteW1qU3/YUcNvKtwkXOefEXTfoMou/DKRij0oefqS
 H3jArk5UBD0sMRcCoQWxd6TX1S8B2npJ9TUknbkOYXbsYZ5abIN3m/9wIiV+mInD
 EBvEZqWKPIE4iKchSiOI2ZDjgMuFaXzGvnH9r4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=zkdYOg
 Br6Su2ai8/JFeN24jFqNEfx2N9VN/bHqPBWM8=; b=n9NkXkhXcEEkTg2EhGUS7A
 axzagLdcosddoN2VOIizkliicbXB2tK1hic9l4puTgRUWdS/5Q8nqsUE8zeJx3hd
 Q+h6slEB/0q6AfR1uMV5NCth1yE2qHyy/aUa1ESklQxyXCKftAqXw7JtZgBVHR3M
 9EaaoYs1OiTjmyDdCIqs2EjtJbyY0XiWDiAm06D/uAjLgLzdVorBXKUw03wWSBiX
 tg6/8PmsesX5bisK1b1GAQfhOjZno1/C5ilMBWFIV750nBMfYspETlENVKIroN3M
 Wiun7ETMFWKsXiyGDuZfFJUf/n0HTbKonLDUzQKTo0QxRKwCzVO/XNhQ86dp+D4Q
 ==
X-ME-Sender: <xms:BPWqYA1T02O_wgqkUUutE61gLIrFB5ABfOtV2F9pdY9mVoKbS9csHg>
 <xme:BPWqYLEmintilSSGkp4bvbEkkObYCPDS6s3mfqOwUOK-SYzz8JfVmqR99ePVPtPKX
 EuqaGw5Vwgrzv_swg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdejkedgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:BPWqYI7XIdnyYpc88GTK0x4feDcqV4tnMSUyq8Qa-j1rTkYdYUPNyg>
 <xmx:BPWqYJ3H3frTV1PdvXsy9fo1aPhhCnKBZhYdIrYZJ-wu6HkMElJCiA>
 <xmx:BPWqYDHQxHjwgSFZ0HZuD6L0ydZzNpJqCTNCQvNNektIjgHhihqIEQ>
 <xmx:B_WqYDG5gJFy-RimBvuKtngX-3bz9X1LqNiHKDisST7-L-CX6BqcLg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B59E0A004B1; Sun, 23 May 2021 20:36:20 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <e0803983-a385-4972-9dcb-404b2006f674@www.fastmail.com>
In-Reply-To: <20210521173616.GK2921206@minyard.net>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210521173616.GK2921206@minyard.net>
Date: Mon, 24 May 2021 10:06:00 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
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
X-Headers-End: 1lkya5-003XWc-CR
Subject: Re: [Openipmi-developer] [PATCH v3 00/16] ipmi: Allow raw access to
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
Cc: devicetree@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 openipmi-developer@lists.sourceforge.net, Zev Weiss <zweiss@equinix.com>,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,

On Sat, 22 May 2021, at 03:06, Corey Minyard wrote:
> On Mon, May 10, 2021 at 03:11:57PM +0930, Andrew Jeffery wrote:
> > Hello,
> > 
> > This is the 3rd spin of the series refactoring the keyboard-controller-style
> > device drivers in the IPMI subsystem.
> 
> This is a nice set of cleanups outside of just allowing raw access.
> I'll let you handle Zev's comments and a few of mine.

Thanks for taking the time to review the series. I'll address the 
comments from you both in v4.

> 
> I almost hate to ask this, but would there be value in allowing the BT
> driver to use this abstract interface? 

Hmm. Possibly, but it's not something I've looked at yet. If we did 
want to go down that path I don't think it would be too difficult, but 
I don't have a need to touch the BT side of it right now.

> Or maybe it would be just too
> hard to get a common abstraction, more work than it's worth.  It's
> surprising that more people don't want BT as it's vastly superior to
> KCS.  

For bulk data, certainly. However for the use-cases I have I'm using 
the KCS interface as a control channel that isn't data intensive. 
Interrupts, a small command set (256 values are more than enough) and a 
status byte are all I'm really after, so BT is more than I need.

Plus for the systems I'm working on we're still using BT for in-band 
IPMI while we transition to MCTP/PLDM. The current BT implementation is 
working fine for that :)

Cheers,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
