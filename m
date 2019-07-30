Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C25D79D94
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jul 2019 02:49:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsGKc-00035o-6a; Tue, 30 Jul 2019 00:49:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1hsGKa-00035d-4R
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 00:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=//bxTzdJC6FYnJ8JJ3y1ukSH+wo3cLCgVozwEDo36T8=; b=AZYjGj+/wQYe8FSf0uid67KbBw
 5IgZa8DRNg3ep/0vheV4mgtlz0M5iFKKWAw3igJOWIXKt4UK1N4CwRSslt/4foeLyTLZfJ2orVpe7
 ybk/rPgYjEJ8xxeT6Jlqb5ioLA51ZCPdDtnIyRaCplwqYcDqyu3CCjxOvekkGVkztNKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=//bxTzdJC6FYnJ8JJ3y1ukSH+wo3cLCgVozwEDo36T8=; b=DpH6qyulVjkkD9ghtTqTh8xlFY
 Qb8FllvyeEBljBP/vsHf62c1E5y97FBYiemlFiquU60rvTq2nSa6gI4jOj5XEWhO72FVRUn3a80RY
 EZ8+T+5WcLdQUqHjHnePebVce7faI9dBTqvY9Fkp+zzi5N18XyhROVvEOihoMBOyvI6Y=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsGKV-00GXfi-46
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 00:49:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C6A5B1A2A;
 Mon, 29 Jul 2019 20:49:20 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 20:49:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=//bxTzdJC6FYnJ8JJ3y1ukSH+wo3cLC
 gVozwEDo36T8=; b=KTqftNq8QYCQrXig/XsbbLgZ+zHHDICl8jZvk56hbsWDrhf
 obn4v89riiZNIuHDriC2ksPJ1b89rg3r9tWlTC3CH6Wzdg851fBGd/VvD4MKUDB2
 CU8tdDpEhpcbX6icG3lj2WHUq4I5Qgn3lNFce8Prfk3v1uRKpjyzi0iwU+KXEPvf
 H6kBw7CxhM1mKD+MGBXqWOI7Sqtk7rm5owKYbM9FDy1bkdNTNaK0D8nYJQVq7QgZ
 qP+0yodv1KDJm5lOYVs8aacal/oEQCyVRcarx5n//9Elrt3z5v2KLuXOEVGEO9kE
 x4OnynpvS5X3PsaUn+9Pgvapb+XtrkCXGt8ONlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=//bxTz
 dJC6FYnJ8JJ3y1ukSH+wo3cLCgVozwEDo36T8=; b=djkIkPrhfyXdLZ3+GsUGa1
 /RABVspqJfLNY9ryyUmcobbeZrhGHtUlY08s0vC24nafuma6QpiY4SPlR+zoczcp
 ZZtguclDJ2oDwILiXKmgmd36kUG52pR9wWCpA6XZTMNuP/sroSo+x40J/RuTc13q
 X433pCqKlw9yslnaqdFOo8bVFbms0y2lywfOOVKfu8ysYyQcgWx8v0Orxaz8vcgZ
 bLwY9EjfmC/vArkv3dKw7pK5Hz9gKm45s/EMWA58sXEdub3xCbOXuyNjEL/gFvEj
 uTpno0xlEjddNbjpSqE7UzD1PsQoDHtu64nt3OO3VadW4veicLKRBVJzEPnAVjSA
 ==
X-ME-Sender: <xms:DpQ_XQPshh0cN23kN-QCdar2PN5kSloCkmm9b8tAHhYtKdeIH-MSew>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledvgdefkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:DpQ_XSe6CDqdG2n77zuDVY-UjeveM3u_44GJGJ5RNeYKcLOMV_soWg>
 <xmx:DpQ_XcWbDF7yzfysgOZsh8znG6OtrPetjaH8Cqch7TT8eOof5yrSFQ>
 <xmx:DpQ_XXodf1DbKrpF942pr1YAphj03s-CzJArNsqqYxzOhVlDHzt34A>
 <xmx:EJQ_XY5NdW9HEjfe7q7hFGK0QBZbWXqKxONinXKZviq_f7o7vI0M2g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D66A4E00A2; Mon, 29 Jul 2019 20:49:18 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <1f5d34ef-ab30-4678-a44a-bdeefc41489e@www.fastmail.com>
In-Reply-To: <CACRpkdZVVgqdt=+YYEauChoxjqKk6=LNKzj-40u3CFLxJr0D7Q@mail.gmail.com>
References: <20190726053959.2003-1-andrew@aj.id.au>
 <CACRpkdZVVgqdt=+YYEauChoxjqKk6=LNKzj-40u3CFLxJr0D7Q@mail.gmail.com>
Date: Tue, 30 Jul 2019 10:19:38 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hsGKV-00GXfi-46
Subject: Re: [Openipmi-developer] [RFC-ish PATCH 00/17] Clean up ASPEED
 devicetree warnings
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Xo Wang <xow@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Ken Chen <chen.kenyy@inventec.com>,
 Adriana Kobylak <anoo@us.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?YangBrianC=2EW_=E6=A5=8A=E5=98=89=E5=81=89_TAO?=
 <yang.brianc.w@inventec.com>, openipmi-developer@lists.sourceforge.net,
 "Alexander A. Filippov" <a.filippov@yadro.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>,
 John Wang <wangzqbj@inspur.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Tue, 30 Jul 2019, at 07:25, Linus Walleij wrote:
> On Fri, Jul 26, 2019 at 7:40 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> 
> > The aim of this series is to minimise/eliminate all the warnings from the
> > ASPEED devicetrees. It mostly achieves its goal, as outlined below.
> 
> I suppose it will all be merged in  the Aspeed tree?
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yeah, if you're happy for that. Thanks.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
