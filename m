Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C4B44385E
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 23:22:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi2Ay-0007oB-8j; Tue, 02 Nov 2021 22:22:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@aj.id.au>) id 1mi2Ax-0007o4-QQ
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:22:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lRYFonQHxyKVIQHctF2xCVzNJ0wZ1uhwvW06HHv7F9o=; b=HUeuNotCglSeqIJvRSYfGJtkLX
 pYssm0aTiMVx7bz4aWUCvOixkl0bkpBz6vKJsIoG3ceBZnnJ3c2IjmmVpN8HrJUPgAWMe0wBxlJwt
 UKAxoPd2DNk9n7jB1AMuJGHjyhD2cgtQGe3ysJ6rXTDEtrsC1D53wEQg9r5V2F0TupAQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lRYFonQHxyKVIQHctF2xCVzNJ0wZ1uhwvW06HHv7F9o=; b=KoIMkIcf311IVvWQXNRf9fsfzv
 E8w2tRO3qrNe2YLg7j9Mzpbt/sa2f1eWExZEPss+nwcJFcVpfq9XKHpZ6qLPujBB4HVHVNuq7mIr+
 bVyRyGZPvDSmhjFIGWm7Am/9csyS5GSnvF1TP0E4F6GjanYa2mrF3uU3X6ZwQtVebN0k=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi2Au-00FXVY-Jf
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:22:38 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id D54335806BD;
 Tue,  2 Nov 2021 18:22:30 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
 by compute2.internal (MEProxy); Tue, 02 Nov 2021 18:22:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=lRYFonQHxyKVIQHctF2xCVzNJ0wZ1uh
 wvW06HHv7F9o=; b=CMtujqStofT8yzZYkSLzcXea6xGWqqwaRrGTT536quPGG6U
 zTcFYzyIyMly6hdfglNBm/BT8tFH3IzA9ICFc7aMuiIKl64mLH8g1iLJadhgYssH
 DeWm04Z03gE09FYhjfR5NcxKYWYG7WeAPepu4vJFFQ17IhWByHjAHDwEJdso7xj1
 x6jHZ75iU+S9Zrlod92+daqBTcjFLcj/but1bf98wrBsOfP6i016AT4pKah7QP1u
 hxW2cHuFxFvh3nW3i+H2WOhTN2McX4ytxajWvlwRxFTfbP94vn8kAQ5zdSbJJmTO
 Grgmf+TaboyPouBEcwrOvaVlO4m9rTb+veKUtrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=lRYFon
 QHxyKVIQHctF2xCVzNJ0wZ1uhwvW06HHv7F9o=; b=l7LlPY5PPOIIKIiaO0HlPZ
 mN+oR/Vy0wjG0wCwSjVTjk9vDy75B4+RaimsZSDEJDh7ZFUFGsaVTyVh2RjPluLP
 Nhjit6hxJGlSd1zQmHnVW52Hdo/r3/ibr11B4k5+wlZLG1w32BQOD3drwH2K69Jb
 qTL9FT+cLVWNWmR0fR6AkkEQuE9rSZdLBpIodYXsWZiBRbW4XVbYhCCV6G8rzPrA
 UJim3YIwUoNFu4dn0Ku1JiZpqZqbROFkPBTcwVSF+m/7RDxbkk5yDB0f8nLNEQmW
 SCn+xdpXNtPW7WH6jLmXBt12jINgPXPZISyNQWaFAeVBrkIRD6LtkRXZbIhuZNSg
 ==
X-ME-Sender: <xms:JrqBYSc_4h5KbvAuRlSJNmz3v1OsrUmx20lxQmOHwsSctNwjXXHPCQ>
 <xme:JrqBYcMJ_LxXzXMv_lCe1kRzto4EEvGq_2-8KH0jgw6Z9DsW07jwPro9iDd7zH-v-
 cbJGLXMLK7M9v5ivA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrtddtgddufeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:JrqBYTiyOfmyq4degtKjfItPb4ybqDE1RkaszL38mecfffucshWZdQ>
 <xmx:JrqBYf-dMhQgYkSmPWS06i3G2T8Lo-2cTopm-sAQ-HbJFClrdKPw-w>
 <xmx:JrqBYesj2BjsreMtFIWomjSi4LsEE5vYxK2eRQuqLiKRsEGIqqqpwA>
 <xmx:JrqBYcCYGbR4XWdmzGlpS7uWASmY_8pz_rmYYtMmBCutfii4uYw6ZQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 82860AC0E8C; Tue,  2 Nov 2021 18:22:30 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <372dc598-4ee0-482d-8d1a-ff34eb8cde7d@www.fastmail.com>
In-Reply-To: <20211101233751.49222-4-jae.hyun.yoo@intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-4-jae.hyun.yoo@intel.com>
Date: Wed, 03 Nov 2021 08:52:09 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Jae Hyun Yoo" <jae.hyun.yoo@intel.com>,
 "Rob Herring" <robh+dt@kernel.org>, "Corey Minyard" <minyard@acm.org>,
 "Joel Stanley" <joel@jms.id.au>,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 "Haiyue Wang" <haiyue.wang@linux.intel.com>,
 "Jae Hyun Yoo" <jae.hyun.yoo@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2 Nov 2021, at 10:07, jae.hyun.yoo@intel.com wrote:
 > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > Add LCLK clock setting
 into LPC KCS nodes to enable the LCLK by > individual LPC sub [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
X-Headers-End: 1mi2Au-00FXVY-Jf
Subject: Re: [Openipmi-developer] [PATCH -next 3/4] ARM: dts: aspeed: add
 LCLK setting into LPC KCS nodes
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Tue, 2 Nov 2021, at 10:07, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>
> Add LCLK clock setting into LPC KCS nodes to enable the LCLK by
> individual LPC sub drivers.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
