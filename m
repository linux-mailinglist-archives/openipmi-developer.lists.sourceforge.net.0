Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 210E57483AE
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 Jul 2023 14:01:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qH1C8-0008HK-R9;
	Wed, 05 Jul 2023 12:01:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@aj.id.au>) id 1qH1C6-0008HD-G4
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Jul 2023 12:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gs8pUAUyk3tjY2m3dpAZbW9EqQL6qlhOTo+TnwZTPQ4=; b=YoBJC6Oi1hADQig2h74fvZWI3h
 BJJdOL98bobo8Wi9oRIpzoP/Y2X7QT6WHweyMN7Bg2hKDu5umhBpPVE6B57cgFrDI6aF1YzaAA+CS
 YyWoRrYHzr/e0+NR3lFMRuxujTbXfkK0v3kzkfCD9W+AJt5wAVkcVQa+LzCpnKlyp4QY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gs8pUAUyk3tjY2m3dpAZbW9EqQL6qlhOTo+TnwZTPQ4=; b=b3AETnX/gkk4mBi1DLu/L/mtmY
 SZdkle7fI7kkzjKA8smFgP/IqZTsa3t+XFSue616mA8pXp27957SE/YmBRDo0jOY0jcQGoGScK9Bs
 HCAdRvzf94zBxXuweidHSvupUmDrv9fyeX/OxWs4Z21NRkz2fSEMQYtxkCxbUO9/yz2c=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qH1C5-007ChC-LS for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Jul 2023 12:01:14 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 619303200998;
 Wed,  5 Jul 2023 08:01:05 -0400 (EDT)
Received: from imap50 ([10.202.2.100])
 by compute6.internal (MEProxy); Wed, 05 Jul 2023 08:01:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1688558464; x=1688644864; bh=gs
 8pUAUyk3tjY2m3dpAZbW9EqQL6qlhOTo+TnwZTPQ4=; b=VSL62ROuvrT+2oOifs
 L+p5t/MsHe1Rw6ptTINyhHIhEZoNuAsablhuuh12RBJKKWhTAl7OfjX2UWG4NdgW
 qXMrl2LatmGcpy4ZpMi8uQOD8X9ycnWmwqSq+6VyNRz1nrvR4E/Ob5ytZ2orkep+
 OryZZMztMkO2AZtX/UVvp7LzSNJQZMRy+0kE4IgRNApUONAi22lacQKrA7ro8Y/2
 7o+sVX9J4498S/h97Qb6/BJsDWoyeXrsXn1q4B+SfYlRbUbAP9SRHFbUn2qXabOw
 IimLetmnVzGaj6aA5ig3+qEo4lvzt/0jgQx1Utl5Z6h4aI/JNteh5Q7Bz/voiGI3
 CT1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1688558464; x=1688644864; bh=gs8pUAUyk3tjY
 2m3dpAZbW9EqQL6qlhOTo+TnwZTPQ4=; b=H3ZVOjqrRcnI1izVZJr9eW1ONxcoM
 q4zIqk4ORW6zVNQwsmceONZeTTUiMt8cMH44dtRF6niV9KTrbdDc+h2y32UH+5iH
 aUjAx/Mik4FAjJLo3o8npxnvn9uKgv+/KAjpS6Gf5B4PIe0pIiPmVHmiKKeLbLvz
 lZ/TX06bZ9D+wmBeN88/MY91De/e3WDLw8sYm2c2b6YuJhOBfYxBQwf9jDLI2dLA
 gePfjsI3C4++HSWrYCJJiNfbwQUiASMEZ4dKM41nqP1lH0/he05dLJHgynXH8EBM
 ef/eWun+87E00UhO5d6j/fbQdc0nuSqB/HffYwlQvudTAQbztK7xHpnsQ==
X-ME-Sender: <xms:gFulZI7V78e3JClewMRQMBQYWTQNiPADvmf4DFc6XKqJGhUdfjhZ2Q>
 <xme:gFulZJ6d2eUa-oFmNFH9XqutwTwK9HX5zSIyrRoL0rWMBdPZbe_GWkxExkT2MGP9v
 LGqMdbNYIG8VQKljg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudejgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepkedvkeejkefgjeduffetteegjeekteetudevtdfftdeluddthfehveef
 teekieetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:gFulZHdoTKpnsklmTAJPbJwrl9ePIS1i8BNTDNBi49sTwvwc28HrKA>
 <xmx:gFulZNLQ-uwkNnVZo7QBKPTkhV9Hi5RRDLI_VBKm3uExqmXYXgY7sA>
 <xmx:gFulZMJZQxjJjE1Nib3EMkG9LHOI1SI5EWrOBcCVl2GVKsEgeQYmpg>
 <xmx:gFulZGhkuAurMhawnITDdgsT0SRFWz7HtVMDIlxVMPskwm056IukXA>
Feedback-ID: idfb84289:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4788817000A4; Wed,  5 Jul 2023 08:01:04 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-527-gee7b8d90aa-fm-20230629.001-gee7b8d90
Mime-Version: 1.0
Message-Id: <34c75a2f-2daa-49be-bdca-a3fff5ed5a4a@app.fastmail.com>
In-Reply-To: <ZKQsY3DXXDbxy0om@mail.minyard.net>
References: <20230627152449.36093-1-dg573847474@gmail.com>
 <ZJwd0UDKYcK9AvSf@mail.minyard.net>
 <9691d898-22a9-4902-871d-73f5dafabf86@app.fastmail.com>
 <ZKQsY3DXXDbxy0om@mail.minyard.net>
Date: Wed, 05 Jul 2023 21:30:38 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 4 Jul 2023, at 23:57, Corey Minyard wrote: > On Fri, 
 Jun 30, 2023 at 10:31:02AM +0930, Andrew Jeffery wrote: >> Hi Corey, Chengfeng,
 >> >> On Wed, 28 Jun 2023, at 21:17, Corey Minyard wrote: > [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qH1C5-007ChC-LS
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix potential deadlock on
 &kcs_bmc->lock
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
Cc: Chengfeng Ye <dg573847474@gmail.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Tue, 4 Jul 2023, at 23:57, Corey Minyard wrote:
> On Fri, Jun 30, 2023 at 10:31:02AM +0930, Andrew Jeffery wrote:
>> Hi Corey, Chengfeng,
>> 
>> On Wed, 28 Jun 2023, at 21:17, Corey Minyard wrote:
>> > Indeed, this looks like an issue.
>> >
>> > Andrew, any opinions on this?  The attached patch will work, the other
>> > option would be to disable interrupts when calling
>> > kcs_bmc_handle_event() in the timer handler.  But then you have to worry
>> > about RT.
>> 
>> Right, I think we'd do best to not over-complicate things.
>> spin_lock_irq{save,restore}() are the intuitive choice to me.
>> 
>> I'll follow up with R-b/T-b tags once I've booted the patch
>> and done some testing.
>
> Thanks.  This is in my for-next tree, I'd like to get this in the merge
> window, which I believe ends this Sunday.
>

I've successfully booted an IBM Rainier machine with this patch 
applied. Rainier is a Power10-based platform managed by an AST2600 BMC. 
The boot process makes heavy use of one of the KCS devices as part of 
an MCTP transport binding implementation between the BMC and host 
firmware.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Tested-by: Andrew Jeffery <andrew@aj.id.au>

Thanks,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
