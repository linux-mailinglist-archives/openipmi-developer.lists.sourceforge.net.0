Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DB0443858
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 23:21:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi2A5-0007mY-0v; Tue, 02 Nov 2021 22:21:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@aj.id.au>) id 1mi2A3-0007mR-Js
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O/uNGateqwnUHNw/oTutTGFHOf+wMqk2two4w9jS0nI=; b=lB4xBztSrbmWVPrOGNNh6pSbWE
 6WUsiQzGolHQ12m6uLWwBI7Qq+dhjQUMyMXTJH4z78Mh/yIrM+ik4u5orcx3x7xX0i/b1rTHt1/7D
 DrwUHdwYAfPwRyU3JuG/UNDbEpjA4/0mk+2JdPPWQtrme4wVPxlQc2AuHXqTJ4Wu33bs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O/uNGateqwnUHNw/oTutTGFHOf+wMqk2two4w9jS0nI=; b=OtOMSx5UB0EZaTlGJRxFnk/TrQ
 8QPwSaZh7TFlRbak/CsBauvgK4FNEW/RK6m9iPfrUGGWCkll6pKkyYhRt5aplLzVkiXDJYVIHkViT
 QuVOyEoT6wJ2qs0XmqjMKxrhfmYeenoN+7FgpICeLPlWaRdtERgTSucQRiK2QrW/AczE=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi29y-0006X7-8y
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:21:42 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id E3B335806BB;
 Tue,  2 Nov 2021 18:21:30 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
 by compute2.internal (MEProxy); Tue, 02 Nov 2021 18:21:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=O/uNGateqwnUHNw/oTutTGFHOf+wMqk
 2two4w9jS0nI=; b=kEIw4cxaj55nlrO4EyllwTEH7+pWDfHUPwnaCSZgK9lgWMD
 elo/NY/lNFaLubffsSvwec/nd/v2s3b6BeIQMLSecYyJjBUWaCOt3pPHCYdkNJrk
 SG+gxKpoVjbzzUJO+a9tL8zJ6/E8Oj3WyV07XHZ9VmGSCM5yIBhfLmnfk5DNXtI+
 AhTLZo/6sG2tHcQ0/Zej2vf58oeFAfqM93RJcjev7Q/2dZi/TIjku0BQPBaYBDQ+
 paJTp9gdauvJRUkKruHh8RBbe+VqrJzScL+LX/yDvmJCDlcMrM/Jxh/evA6iYdYl
 Ahks5wBiOhoGdAa5Y6jIbehhalyofG0jnn2660g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=O/uNGa
 teqwnUHNw/oTutTGFHOf+wMqk2two4w9jS0nI=; b=GXI7PPtJ2qmy0juxfdCh02
 BSjFhgoHJ21i8FDwtraqv1RgnY8rf83+z34zd1gzTFIX3FzTuISFZxfvo3gFeIMJ
 8BIexJZ2sTZt0bY3CBVefW0QXhj6/mjALigzAgEyBkvjuuFmPrkkNpwuOklZ8j30
 CNqrStZeJaylGUMJEyz8Mol3C/MN+Ad6KARhhCo3RAFfN7ypeDazluNxtqXqfQce
 /y1Jv+jrEKHfzDAw1BpcE/uZOu8z5oi//124fSHq9SW+yAJOS4HI9e+1DnMHZhFT
 N2QHVEKftiiZTy9SoXhrCZQihTi5igXdWXEpqNivmMQLsoI7nC5hCVeBDMS47MXQ
 ==
X-ME-Sender: <xms:6rmBYW9Eym1KGxRyAPLpozosfZb06EGWa7lfRkTO6Ebv1uaWcZKvVA>
 <xme:6rmBYWv55BjdLsWk8Y4dK9S1g0VMSQ2s5648_UkbUej0-lNaEOy4YYqGNS4P66YMW
 s0VKdobH6IpVqxGkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrtddtgddufeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:6rmBYcCsmAFrqjgR3PpdflD2_JOG_h7oCGNfKdCq5BO-rMPwmmvN8Q>
 <xmx:6rmBYed5Gd-LP6FbPaEtIJ0vPgbtfBSCC6mpYtYitGMHv7O67TYQDg>
 <xmx:6rmBYbM1ltDraGURSjMD2bDoQUaepRQyCav-K7NMZhWpVdAchZoCPg>
 <xmx:6rmBYUhFzBf7PLGZmCgYQs79m46y2p_fs4YaM7H9useK8EygGtm42g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 5372CAC0DD1; Tue,  2 Nov 2021 18:21:30 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <8c5d69a9-66e7-4fb3-9aaa-63d5c28e4698@www.fastmail.com>
In-Reply-To: <20211101233751.49222-2-jae.hyun.yoo@intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-2-jae.hyun.yoo@intel.com>
Date: Wed, 03 Nov 2021 08:51:10 +1030
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
 into LPC IBT node to enable the LCLK by > individual LPC sub [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mi29y-0006X7-8y
Subject: Re: [Openipmi-developer] [PATCH -next 1/4] ARM: dts: aspeed: add
 LCLK setting into LPC IBT node
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
> Add LCLK clock setting into LPC IBT node to enable the LCLK by
> individual LPC sub drivers.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
