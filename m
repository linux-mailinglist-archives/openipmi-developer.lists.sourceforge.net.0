Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C0B113B13
	for <lists+openipmi-developer@lfdr.de>; Thu,  5 Dec 2019 06:14:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1icjSh-0004qb-7t; Thu, 05 Dec 2019 05:13:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1icjSf-0004q8-As
 for openipmi-developer@lists.sourceforge.net; Thu, 05 Dec 2019 05:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HmY629d09ljX49+gWihMYnlLvvddw8yblf8rUOR5/wE=; b=hdi6umb7Kmpd6FB7vQd2G54eZv
 cBqWpXbC3KxC38cPAZ6+n+emleUVZkiJUmJZPcBgPPKjPPqZ5eP5rW+gUbDU2O+Me133PKqtDtpPH
 +NZUOYqfFBvfk/WvKl4OPx4jQGMDsY4h95BRhLeEAXJYIsFwpVTM49eiL1simLbu6QfU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HmY629d09ljX49+gWihMYnlLvvddw8yblf8rUOR5/wE=; b=MbElAYxZKYkK0PgnRRHwMuM+33
 GSQNAWtzU95aXr6BG4UzVR5V/oiyU6M5LgjmNoSYncxpAcprEt8RWiaO3uUWX8EbqoVp9DWXSz9rw
 yftEeR0mUWW+9Mc0dGtFVue2yl84cVTR+plmi/oZEO0rKw0UWfzfAmsTyArWyuKTOPys=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1icjSa-00AHx6-LG
 for openipmi-developer@lists.sourceforge.net; Thu, 05 Dec 2019 05:13:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 171566DFB;
 Thu,  5 Dec 2019 00:13:44 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 05 Dec 2019 00:13:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=HmY629d09ljX49+gWihMYnlLvvddw8y
 blf8rUOR5/wE=; b=XkSFWnrsqIZKGLVdudWqOUsdB5YtNlYfu/WzJNmOnyi7Za9
 38ORxDINALsurrmH9koTMeFOuAMZbEdt3jb4NKuSHz1kx+lTQ8xaqEa4ARhDGT4D
 KGfLIlPrgABX0jjuH+qOBWgYSBYhf6XN2TcuNhLmzc4lnObgmWWgUqILS/RSwONj
 0dok7lVopN++sUQMDj6CcDhMfaGf0RO0rzOcHeFJbECCjlfWyZ7zpQLUflU2t4m3
 O7cOUNTC2iCsFkjBQw5iJqeVUyG/bvlRsBcI+ziZDSYuCJO8AJnT2xLVipUkEmKk
 5GsqpC7va97/ZkAtZQnZUb+3UJAwaK2HhNrJftA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HmY629
 d09ljX49+gWihMYnlLvvddw8yblf8rUOR5/wE=; b=mFtuhQSUTGXR6RwrC/ZSqy
 DHtQ5sfJ72Gp+Fl14rqpI8A7opsv9ESRgx9plv2EalC4IRNebJZFDPAbVXGAep4o
 JgsZPzXUfI67INU1Q5h0MO2IeaIdp6pYZXaSdxxkzCukfnYYRgBMl9Kp3NEkQDy3
 +yrfq21UcepbK7ueIDsO974jcDYOwBURh8RF6li/Ko2371GVJkEpfgnv1Y5Bpt6U
 CyfG3o8gCDE3M6qGOD9nLeUR4TIAqzun6+KU/Vaonbonc6Z35lZTYQnrWIFEeK0p
 ukSchr2VVYPg9URotj309OcD4EQh8jjd10uwGTVxU9jR+ABqlVslmU+WCOHbl8aw
 ==
X-ME-Sender: <xms:BpLoXT9uaXVa-DTA9FwW7wiy_GJt_465bqEkFIhziNC9gaP8vGHyUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudektddgkedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:BpLoXZ_D9ZZbPr1lny9cZzaTeUS9m8tXYUZA2MppI0yZIXZnp_X2Xg>
 <xmx:BpLoXf_QPUo2GeX0u2WvSXm8b7gNwGJfzBKKQ1G_f6wAJAtDi7mWuw>
 <xmx:BpLoXXE1ahEGOo08cwQHVS1JRmlO5DhCD36h38YcnnRuHi-6wckWRg>
 <xmx:CJLoXbQbKnADxn_5wl7Byr_5lJFU-G_lsmG9VHhHT4bPdTbtQ1IPNg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AE0DEE00A2; Thu,  5 Dec 2019 00:13:42 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <cd76d709-683b-44c0-b29f-d31c9dddc75e@www.fastmail.com>
In-Reply-To: <20191203134026.GI18165@minyard.net>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
 <20191203134026.GI18165@minyard.net>
Date: Thu, 05 Dec 2019 15:45:17 +1030
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
X-Headers-End: 1icjSa-00AHx6-LG
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_2/3=5D_ipmi=3A_kcs=3A_Fi?=
 =?utf-8?q?nish_configuring_ASPEED_KCS_device_before_enable?=
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, linux-aspeed@lists.ozlabs.org,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Wed, 4 Dec 2019, at 00:10, Corey Minyard wrote:
> On Tue, Dec 03, 2019 at 11:08:24PM +1030, Andrew Jeffery wrote:
> > The currently interrupts are configured after the channel was enabled.
> 
> How about:
> 
> The interrupts were configured after the channel was enabled, configure
> them before so they will work.

Hah, yes, that commit message did get a bit mangled. I'll update it.

Thanks,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
