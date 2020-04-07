Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D221A18E9
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Apr 2020 01:53:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jLy24-0001Om-UU; Tue, 07 Apr 2020 23:53:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1jLy23-0001OW-2j
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 23:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yxq9f81Pb+4HSFnXBgl2WjEh9AK9LTu4Gf81A8IMWxE=; b=VIlihwaDgkAv3RqUztUOdCUM5o
 yYryADqHRB0VQDm9O/JprfkUltxYfKv2ExCHM99/AwVHPUbsRNyAmrdotPMFtgpV8fwLdXyLheUTZ
 yAksGvkRShp4kMP9vMRZjm3gGiD/k4gaGAYqUZuwkkHA8prVkuPOXg46P4rr2QhlhkTk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yxq9f81Pb+4HSFnXBgl2WjEh9AK9LTu4Gf81A8IMWxE=; b=YgQK7/dLF4EcdSlLDEMQSq6m0V
 lmgDG3BIgcTAMpaeJW85Q6bJmcOipWi0Ddgj5rYmlBi6z/ZS/RHV9PYAPYktYpTDest9oeMxwYOyn
 c4UpGs8hh7B7PlYzBRfpGaMV8rYDHN6WdVqpV3bBp0v8U6+Iru+Y20/mriC0/Hh8z0YU=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLy1v-007UGK-JJ
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 23:53:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id BB7B547D;
 Tue,  7 Apr 2020 19:36:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Tue, 07 Apr 2020 19:36:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=Yxq9f81Pb+4HSFnXBgl2WjEh9AK9LTu
 4Gf81A8IMWxE=; b=TIXwFNVFlZ3kL8pi50r2le0uO1YETHcXlswy1QwmNs24YpF
 KQbtsW9+9epxZE66IpwEzt8ZwNSgBhss3bgalYPCoTeYKCvpWZqtul6HmErU7Nt7
 IepBdc9biMzrJGoqSWTf1GHCw62F0Bh5B+Yw8D65AqRXRuoXiz2g+IOPUCt5ndhn
 iujtCCStG1J/u8+awB6YT6Eo1gf1zGWPh4NRyVrmXiuo7Jjr1pGZNzqwsm0q3stB
 SbouZRckibk1QW5GXPV2G6ViDQBr7oyuS5yBQOJuS1HW66l5f4csg1NSaqAoQG23
 nf6CM9pH0qi5YI9xzZZ4FFXJ9524bjy6nEJt9iQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Yxq9f8
 1Pb+4HSFnXBgl2WjEh9AK9LTu4Gf81A8IMWxE=; b=t2FjNQ3G3K38P8X2V7r5bk
 L8dXUojXrOqYdgVXVTGF8VG9lgmnoGV32LyrYloMQdKDnSMA230V0WGKDIurJRVT
 vJ4v5ycqlnSbrD5SXw5Ksmx53YowPer0MN1VT6oELDfaD2tMWYwY/xAOlGuklE+E
 clKW6ZMjNUlD/7jUqOsfyvVdP3/zsLUfF822WsXrPiN8S2/O+qUmjaQnnG/dXEfT
 xp6kRgBa2W8fKJMOClbvSOuqC+4ddUsSoaLT+UkeMxk8eno4KXZtTOhTsfOG2g6f
 tRKaKxX6SIrdwCqACIheRCHUS0bfu3WDWoDxgYUJxfiX+rP1wK0wJCcllWWvhkPA
 ==
X-ME-Sender: <xms:Zw6NXjQ_JQQP_tJnx9C8OVWapompPjtTeGZsSH2NCeae8Mv3xAr_xg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeigddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:Zw6NXuYk4BJ1FabOniAJ6oCocEs42n88oz8jpuUHWlH9zkNGxH82lg>
 <xmx:Zw6NXsTBAw9OOPuX9OtdNCDkoAtostsKtRpBGoWaE5xFpm35MK-jug>
 <xmx:Zw6NXp54Z8u8PUbRBJxG1exOmQxk5xuSQv1o6GOWtfz8oXOFuHftww>
 <xmx:aA6NXkxW94IAS2ehtk18Jsg0X0kWmccoBEpnsM0Jf9NG1rYvcNkUng>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id F38B6E00A6; Tue,  7 Apr 2020 19:36:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1084-gdc5e709-fmstable-20200406v2
Mime-Version: 1.0
Message-Id: <0744752b-a48e-4edf-ba77-df605fd242a9@www.fastmail.com>
In-Reply-To: <CACPK8XfA-4WvgVeEKi-hdC-LgEcicEhpV_0ivwymaEJKy15hGA@mail.gmail.com>
References: <20200407122149.GA100026@mwanda>
 <CACPK8XfA-4WvgVeEKi-hdC-LgEcicEhpV_0ivwymaEJKy15hGA@mail.gmail.com>
Date: Wed, 08 Apr 2020 09:06:25 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Dan Carpenter" <dan.carpenter@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jLy1v-007UGK-JJ
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Fix
 aspeed_kcs_probe_of_v1()
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
Cc: Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Wed, 8 Apr 2020, at 08:48, Joel Stanley wrote:
> On Tue, 7 Apr 2020 at 12:22, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > This needs to return the newly allocated struct but instead it returns
> > zero which leads to an immediate Oops in the caller.
> >
> > Fixes: 09f5f680707e ("ipmi: kcs: aspeed: Implement v2 bindings")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> Thanks for the fix Dan.
> 
> Andrew, I think this means no one has used the v1 bindings in
> mainline, so could remove that code?

No, rather Dan's on the ball and it seems I was a bit lax with my testing
of the patch. I pinged Corey only the other day regarding the patches;
he had been busy and as such hadn't merged them.

I have a series to convert our devicetrees over to v2. Now that Corey's
taken the patches I can send that and we can get away from v1.

Thanks for the fix Dan.

Acked-by: Andrew Jeffery <andrew@aj.id.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
