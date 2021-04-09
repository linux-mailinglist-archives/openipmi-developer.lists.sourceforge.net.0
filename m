Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B991A3594CC
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 07:40:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUjt1-0003pK-0Q; Fri, 09 Apr 2021 05:40:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lUjsz-0003p4-TV
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9/lrkNKQgX532J6LtOYs1h+x2FGLXOOm2n2LZx04Go4=; b=XSP9XrxyE9lgI7fJBY2hiIiO9B
 QZ3arYzVvhA5rLnofiqRwzIxmGVIIeSQDZU/FkYL7FL5da8t7u7IZ7FqGEeY5EhbIqS6RsyF2X9qS
 jn/cRzpjGuG0LokMZOKnmP0eItJdJeINY/k7hEm7SDJ2RUH83PjlqaDCXQ3gcmjTNqH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9/lrkNKQgX532J6LtOYs1h+x2FGLXOOm2n2LZx04Go4=; b=RPqUqrsxRtiTVc8CnjlUBuFdwj
 ZagdEYggxwQ6G0GYCO5i9tUqSariYwqsu2GkLrV1u6paMhH/pOghenxe9o2WLdHYs4L3rIPPjDv74
 XhZ+8JQmCW50yJ0Xuo32FOFTKizvexiVIyN4/2BE4LrkuD6q2JnDgJXkc8gNY7YIItEo=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUjsH-008Ycp-PG
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:40:52 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3177F580421;
 Fri,  9 Apr 2021 01:40:04 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Fri, 09 Apr 2021 01:40:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=9/lrkNKQgX532J6LtOYs1h+x2FGLXOO
 m2n2LZx04Go4=; b=XYYNzWn6qtQHgAwxMzM7SO7Tyu/wpCek+5jKlLklxhExW1W
 JfAUY7t9BDsHOTt+R7EyeV/H5X9A3iwhOUl25tVF0J0LfyD5YNsus9qLaclC9B7G
 ebv9se2wTPexG+ug13QeaFmN1Php5sOcN2JZt93CeFxKCI6sbHAL62WzHcb7coKX
 63maXhoMEkH6rSSKAVqEcjZR8NAWlARn2nanfmhvHwusJu15uR8hSHHD90I17BDS
 jwudPPni1lEz26Bsf2eUgyyQg1fXkNy3fj/v1r4nMbwgE4sFE2sWpPNeHbwDNbMJ
 dsEaoWQAYAikNYbESJgo9rnD6zs4nHZK02nLPlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9/lrkN
 KQgX532J6LtOYs1h+x2FGLXOOm2n2LZx04Go4=; b=UbgJO4ax7uN6hF01JE7fdY
 Z0ASNFXANpSRcnmqsRymd1yypIxElULfbmnEUaZZ3AXnKjuZjWEkDSYBnlBttlfm
 85OLDTm91BwejHMW0MlurZeQz9z8cBj/hEVsQ6MZy6H7K44hv6NiCjcy47pK+PZR
 Rn8/rlo/cloOWfkYZcGvts3dgNaSKjPONUBEypPcBqoTe9TV/G2+yNxn12lmVJGI
 bVbSXWFuslvAQGnVWaS7/um+lQ8fTAHykCRxbjzQXGJn9Ppf7qiR1p3r7oMzdNYZ
 SnNFpdLLUOCOeNyWbx2FsXtKWwa2ijlr/xUaPH8wPWux6lrIkQy4X8fQQk3xQuXg
 ==
X-ME-Sender: <xms:suhvYH452vZ4Ocfc8d3MtmphqRuo0a8bnNCdeWA4lPDjmgCiuTtN6Q>
 <xme:suhvYM7Kr7ahS9OFdOwJtwuYf1pTEcuANehrV92QxhfqewhG36NwM1cZ0XL_KKbGE
 FJj4G6hwUlwxD1RIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudektddgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:suhvYOfFVkotxjANrM4v20M2n8oaWldUxDKLQxDK-uvIxk47CzLspQ>
 <xmx:suhvYII5l6TdEya8viJsfh45vsECcBz1cf1mM4vgsjjV44kkJlFLGw>
 <xmx:suhvYLIMKu7BJi-p6OKPchO9mb1J5mQbVJvFxjkTBd0COQy-2keuFA>
 <xmx:tOhvYACRQL8HypBNWid_tgovkX-XBoqblJIGWYQyq862-732nBu7AA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C793FA0007C; Fri,  9 Apr 2021 01:40:02 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <b718a500-87e9-4958-a15f-56e024837ec8@www.fastmail.com>
In-Reply-To: <CACPK8Xc5HC7TZ6cUDH6+uHQO1LQCZE0YeENua1sE8nDXs0R2mg@mail.gmail.com>
References: <20210319061952.145040-1-andrew@aj.id.au>
 <2db77e16-3f44-4c02-a7ba-a4fac8141ae3@www.fastmail.com>
 <20210408121441.GG7166@minyard.net>
 <6ff29d26-543a-4790-abb4-ebaa3f8d0265@www.fastmail.com>
 <CACPK8Xc5HC7TZ6cUDH6+uHQO1LQCZE0YeENua1sE8nDXs0R2mg@mail.gmail.com>
Date: Fri, 09 Apr 2021 15:09:30 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Arnd Bergmann" <arnd@arndb.de>,
 "Zev Weiss" <zweiss@equinix.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUjsH-008Ycp-PG
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
Cc: devicetree <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 9 Apr 2021, at 13:37, Joel Stanley wrote:
> On Thu, 8 Apr 2021 at 23:47, Andrew Jeffery <andrew@aj.id.au> wrote:
> > On Thu, 8 Apr 2021, at 21:44, Corey Minyard wrote:
> > > On Thu, Apr 08, 2021 at 10:27:46AM +0930, Andrew Jeffery wrote:
> 
> > > > > 1. It begins with patches 1-5 put together by Chia-Wei, which I've
> > > > > rebased on v5.12-rc2. These fix the ASPEED LPC bindings and other
> > > > > non-KCS LPC-related ASPEED device drivers in a way that enables the
> > > > > SerIRQ patches at the end of the series. With Joel's review I'm hoping
> > > > > these 5 can go through the aspeed tree, and that the rest can go through
> > > > > the IPMI tree.
> 
> > > > >
> > > > > Please review!
> > > >
> > > > Unfortunately the cover letter got detached from the rest of the series.
> > > >
> > > > Any chance you can take a look at the patches?
> > >
> > > There were some minor concerns that were unanswered, and there really
> > > was no review by others for many of the patches.
> >
> > Right; I was planning to clean up the minor concerns once I'd received
> > some more feedback. I could have done a better job of communicating
> > that :)
> 
> I'll merge the first five through the aspeed tree this coming merge
> window. We have acks from the relevant maintainers.
> 
> Arnd: would you prefer that this come as it's own pull request, or as
> part of the device tree branch?
> 
> Andrew, Corey: once I've got my pull requests out I'll look at
> reviewing the rest of the series. Perhaps it would pay to re-send that
> hunk of patches Andrew with the nits fixed?

Yep; Zev has done some reviews for me so I'll address those, rebase on 
your tree once you've sent out the pull-req and send out a v3.

Corey: Are you okay with that for now?

Cheers,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
