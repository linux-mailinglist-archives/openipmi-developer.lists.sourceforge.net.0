Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B043A8BF7
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Jun 2021 00:44:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ltHn3-0002TM-2r; Tue, 15 Jun 2021 22:44:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1ltHn1-0002TD-Ey
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Jun 2021 22:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a1n+H/r58DrOu+6wcj/wMJNk6uExtCA2MLS3ZO7f12A=; b=kr8hvopDbGLTq3+k+hf4NuTMnY
 LZhLzJqnW3jaf9QX7XgE7B5DRZb6WfAez1oE8Mjqg0QovVpfn/giFxCNZwdRafwNMrorC8tktRXF3
 6EGiiapstSF0aTpzKZDk+qeZf0EgJolTt54qPyngEAnD6CH4noCftJPaoeWWfmQOoNkw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a1n+H/r58DrOu+6wcj/wMJNk6uExtCA2MLS3ZO7f12A=; b=IhnJqR2sYsQMVjCUrdi5drQY1d
 u9VJcmhmRdXkEX8AXawgevPlviFpLzmt94v9WfFTchl6s8b6WirpiGsY0hM6nNVkAjZw0PTIk5MRT
 5AYsKkHndCJ+BOIlRBtTJC814cd9hh+VY3QzvAg2G3CQXmV+KLZnfbWZNqSO/IC8YV5E=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ltHmp-00BMXO-5f
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Jun 2021 22:44:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D1FE458065E;
 Tue, 15 Jun 2021 18:43:51 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Tue, 15 Jun 2021 18:43:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=a1n+H/r58DrOu+6wcj/wMJNk6uExtCA
 2MLS3ZO7f12A=; b=lGj6R/+66HbO6xVEUCX76buv6MYW71elWUJJuPrcmmLSVGg
 svKC7FWTrs8kgjbZxZeevSFXao36yqVtBxP/SJjx7aqv5whuhtbhcgyvsqYBGnnz
 POsQYIVK+X62IRl4ktGGovtB/7KclgEiWAsVnWyaWh0y2/KQEKZnWWpJrVd5BFDi
 j1B1nTeLok8Hej78jMj7Edlesnvkr41HGlvwhBkvIQ5rcjjFMiG21qWzkoOxIbKb
 FgpLrlZw40QXDDqPj+l4ubawV9pN+Z9CdPoddm+8sO0vKtKOaug8ZhbUn2Mkpxfz
 oH/uBFekOOTAyJctyhS5ZFS8Duo/IZluq9vzdSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=a1n+H/
 r58DrOu+6wcj/wMJNk6uExtCA2MLS3ZO7f12A=; b=GqZUIEzV6YS275fl4SANx+
 mZErkEiN8pmieruei/4/wp0ZasHnttA8jHvz4L1dfXbZomBqaTVxxXzs4z4sjDJc
 QOVQWIM8G9gdpT6vIDkOQkfunV00dXbrhn2kAkQrRfPZmqg2KIVUzeTBPt2kJI5d
 6sFKhkeibJSOLDNU2dKLF9GSdG1L1R/Yq3rv/kwbQZ12oQb+1na1q5WqgbdJx+HU
 RobnuRNPk+DTNV/zTGAZXpX6+kerNGrABlmtgR80TTjUjKRbNW7xB3ZoSfjaPvrz
 sUUbpxvh24Op2NBqtJCRfUBGhMC0nWFicI6piKdc71NHLIXjgVn7pSfA42kGZtXA
 ==
X-ME-Sender: <xms:JS3JYLFzeUG-G4ItQU95L2gbxSG-t77RqVTH8B4ylREYwkm7YCifLg>
 <xme:JS3JYIVkyWuKHOZn0IqTg2KlJCobHOa936ZCHz1Q9z4-6s5CDPm3xdyXZz5mWGpVo
 KY1qwna4kxNwy5APg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedvkedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:JS3JYNKiC80ZuBJ-BT-1pDa6_TI8kQttNo46T0kSG2r3f0eXEAsJfQ>
 <xmx:JS3JYJFruDxowjGWIQWZRpqCPBut-k8QluPUfUcVp-IL-wLsjiRGSg>
 <xmx:JS3JYBXXGa9e4LBN02HKMxWEQ_CXdUYqw4tYUCsqfsjN6sv5AuLivw>
 <xmx:Jy3JYCUF5sJgpAE65-7bbyiFrhZTXai1EEe-rJYJcUoyN2N-kZyGGQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 6B5F3A00079; Tue, 15 Jun 2021 18:43:49 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-519-g27a961944e-fm-20210531.001-g27a96194
Mime-Version: 1.0
Message-Id: <b1b7fd82-3edf-41a6-baa6-530bcf76c3ca@www.fastmail.com>
In-Reply-To: <20210615184657.GF2921206@minyard.net>
References: <20210608104757.582199-1-andrew@aj.id.au>
 <20210615184657.GF2921206@minyard.net>
Date: Wed, 16 Jun 2021 08:13:27 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ltHmp-00BMXO-5f
Subject: Re: [Openipmi-developer] [PATCH v4 00/16] ipmi: Allow raw access to
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
 linux-aspeed@lists.ozlabs.org, CS20 KWLiu <KWLIU@nuvoton.com>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Tali Perry <tali.perry1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, openipmi-developer@lists.sourceforge.net,
 Zev Weiss <zweiss@equinix.com>, "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Wed, 16 Jun 2021, at 04:16, Corey Minyard wrote:
> On Tue, Jun 08, 2021 at 08:17:41PM +0930, Andrew Jeffery wrote:
> > 
> > Hello,
> > 
> > This is the 4th spin of the series refactoring the keyboard-controller-style
> > device drivers in the IPMI subsystem.
> 
> Ok, no comments and everything looks good, I have this queued for the
> next Linux release.

Thanks!

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
