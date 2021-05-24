Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D932D38DE75
	for <lists+openipmi-developer@lfdr.de>; Mon, 24 May 2021 02:40:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lkydf-0002WT-0e; Mon, 24 May 2021 00:40:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lkydd-0002Vx-PI
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 00:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5sJHMuDvNvV7pHRcupj6QN39aMOCxdcKSDsfy4XDr6I=; b=G0M99TDGjWsVZq++WrgwrfgQh6
 KvVVExkQ8X1GAdFvFEiBPb6IefvJe6bW5ZRBX5naGOmfRbEzAc8nv/ZmI8VsPtknclGGmhCqtIUiQ
 8p4mLstZ4StCJ+I2beyGaWe0rIF6kaKYzuZzHDtHkU/0VJ24rXDTmwheEu0x19eupaHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5sJHMuDvNvV7pHRcupj6QN39aMOCxdcKSDsfy4XDr6I=; b=HvRQxxSICsM7PyHkcx+/RUc26v
 bGsxjBC3Hqd/S0poh62wFpZSEEH3WtMNHbYQAQ9Ws19pfMiCz1EFKeCHbBadVx+EyRTHhJSalP9m/
 2iEYxUf/Tb56kGGAJfCbbTL2/jf3gbVDBsaxIkpFLrqIS+E26rdt/RVFupUlyrw4JENg=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lkydX-003XeM-NJ
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 00:40:10 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 30FAF5803CE;
 Sun, 23 May 2021 20:39:58 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 23 May 2021 20:39:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=5sJHMuDvNvV7pHRcupj6QN39aMOCxdc
 KSDsfy4XDr6I=; b=ojua7Mlz3qgeIZbbZumpj7T7jyN+s55eFPhuStyBHdgk/CV
 wo5DiB1u8wBL6CVKfMRYijetTBDzvIPZ3TgakzOM8T5dpHNbhQ5sWLY4hhxvRjrD
 mwOTpof5nzRyKtetT6YiGDzT04LCO7GWLrWBRTHluKPVv/Nu+JwbRiS2Cfv/EDQ7
 947/GGP6Lk4Z6/KL30TLuG0lPZ7pUwsrjWPjfm0N8dHfIJbiiwL0GmNiFvwlu1Y2
 P7+KgcSLLf5RHrokkLWhWWS2Y475TX4oVCqo9fG7WzQxMnqMVhz1OxjeTu66IH7T
 qeY8y25pR3e28l4+jkH3aTE4Qimn9V6CgIqFbYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=5sJHMu
 DvNvV7pHRcupj6QN39aMOCxdcKSDsfy4XDr6I=; b=WKANcriZt27VBFBijYR5F1
 1550UhiqtynvZmOvUbdRSZsJyXl8TAC9JYHKdMblZZpfLYMupncWt2UBq13Ia787
 GjcSR4YTbrp+O8Tu/A1uPJcvq6hmhUloepfkcQ1EsZDnpy+rx2NWcH/iv5kHsII8
 Se2MMfEE0QDHDb28tDqhBU8hZGUPbYurDaLbRQ2HVnubfO6xtC/sdUpQWPIXo0mH
 H6NKiAFDOcFGwXIwzxrPPq9xIJCBS8ZhTvYqjuWjLZx4kR1YI/nakEjIXxFNfssn
 Ex7y3VM3gDSiYCTjnuwR5Ix9pkBo6PUr00vAGJJ1CGY6dAl/uadeYFIm4yqxGfAw
 ==
X-ME-Sender: <xms:3PWqYDCHzW5PZXM5LZOa4iaud7q5dx6IwQK4wgCtzP6bCSWDoNvkGQ>
 <xme:3PWqYJjLLV1WFr_YwjjAK8q2JBj2Wu-bdo_zed5CoJkeDagaReIgnG6Imo1B_9xzB
 z_zfoe_IXbvDo4Rag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdejkedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:3PWqYOmX6ki5Uzl-1pgVq6ZMe2ZfurXiFd3LXi5j9dbMd_S3klWYpQ>
 <xmx:3PWqYFxwDS6TgB5PwOVkLhawuFtEFu-FWKKqk7dtnHZq93B-kKnbew>
 <xmx:3PWqYIRDv0cIQnSauCF0KbSlS64BBxjKylPIS4gwsem09K4MxZ-Jyw>
 <xmx:3vWqYKCY2gWceaf5NXGgAx6uVUeaAdZMOiGRsNj-WThtFN2ZCBgDKQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 06E6DA004B1; Sun, 23 May 2021 20:39:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <0ea513bc-f8c8-43c5-969f-b9db9fdb15d7@www.fastmail.com>
In-Reply-To: <20210521173007.GJ2921206@minyard.net>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-11-andrew@aj.id.au>
 <20210521173007.GJ2921206@minyard.net>
Date: Mon, 24 May 2021 10:09:22 +0930
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
X-Headers-End: 1lkydX-003XeM-NJ
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_v3_10/16=5D_ipmi=3A_kcs?=
 =?utf-8?q?=5Fbmc=3A_Don=27t_enforce_single-open_policy_in_the_kernel?=
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



On Sat, 22 May 2021, at 03:00, Corey Minyard wrote:
> On Mon, May 10, 2021 at 03:12:07PM +0930, Andrew Jeffery wrote:
> > Soon it will be possible for one KCS device to have multiple associated
> > chardevs exposed to userspace (for IPMI and raw-style access). However,
> > don't prevent userspace from:
> > 
> > 1. Opening more than one chardev at a time, or
> > 2. Opening the same chardev more than once.
> > 
> > System behaviour is undefined for both classes of multiple access, so
> > userspace must manage itself accordingly.
> 
> I don't understand why you want to allow this.  If the second open won't
> work right, then why allow it?  Why remove code that causes the second
> open to error?

Really I was just shifting the problem to userspace so it wasn't 
something I needed to address in the kernel. It seems I'm alone in 
thinking this is a good idea, as yourself, Zev, William and Joel 
(privately) have pushed back against it. Initially the idea was tied up 
in how I was doing some interrupt handling, but in revising the code 
that problem has gone away.

I'll just drop this patch and save everyone the heartburn of arguing 
about it :)

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
