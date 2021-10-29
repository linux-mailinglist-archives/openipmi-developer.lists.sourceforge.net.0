Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3679D43F629
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Oct 2021 06:27:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mgJUM-0003Am-Nq; Fri, 29 Oct 2021 04:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@aj.id.au>) id 1mgJUK-0003Ab-Pt
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Oct 2021 04:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UYI7x8drKFo+z2c59k1zz18ttLncojnV015Ms+RXfkk=; b=BIZ6wXLpC0+CiT2jS8nW3u2FWJ
 X0We1m0WCdGhFSeZFuxlDldmUROE4FUGQNly3OAmLCQ7KPPWWyGoF0qQS3FYxt4w6MGtzRafk8dqT
 yCHj4FfJskr6Y3mVbua99jgt1qJyQJB8nE1BwRVqqodmRAP4je+c23kdYfcl94fQurv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UYI7x8drKFo+z2c59k1zz18ttLncojnV015Ms+RXfkk=; b=GqDpbkepZDGnD7JSXcPVrJeocz
 iFIRHYaCY/ByDT02XmSOl1ZaxZ+2Vo8YvckjAqyvwpVDxm3VuxTZVWbmlEUx6hu+DPIKRmz2kuEs4
 BIxpsn47WzcKgxHKhOwUcrxpaz27TceFevY7DkwuuYeLFiI8Jl3p4oHAbSG43eoGxbtQ=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mgJU9-0006Zx-LH
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Oct 2021 04:27:30 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.nyi.internal (Postfix) with ESMTP id C96D55C01C6;
 Fri, 29 Oct 2021 00:10:09 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
 by compute2.internal (MEProxy); Fri, 29 Oct 2021 00:10:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=UYI7x8drKFo+z2c59k1zz18ttLncojn
 V015Ms+RXfkk=; b=NJew601mql0ZaKz1pQpGByp1l2uktlg6YuBOi8oQf1uRff7
 BMIbucowOBmJ9pkdYEFx4yQYVjEXmxp2r00L79q2FvYl6SVgmreNJtlT6vtLXHPC
 KG0sV2igMbJJPnaY2cpx0Uxm7P3Gv77WWkSEfC6x4tko4Jkd5MjyLpcD6k7QbOnV
 7cTb3iqXU335Hu24/8yR9gScjsrgXk4Av1KaUarJWHiV8Z0hRrKVINWNDby/5snB
 +eUZvmCCrs4oZsPROaDYaGT1W0EJH60Ppc9ihJIU1aoKSLMHCD/BjW6L+jaj1rhd
 OrS849+oTQbCrMoQzxLCkwWTfR98trb3akRcOcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=UYI7x8
 drKFo+z2c59k1zz18ttLncojnV015Ms+RXfkk=; b=lkwOL57IK5TaLqKr5WRrPj
 5RjN8jQIZKMiUI5utD6v6etlmr3dYirPSyQWmbhNZf5beKhTghFXvQ64uB18j/UA
 7cFeRMnV60xHbjqE9UyJMe1na6z3yHuFxurY3PGe7qPB7oULUeDfrg8bgvFSZufa
 7o6uVoZPGlsG+zW65s+qDWXNrXVwQ5PHMumNtATDDbg9OzI7cLjlojGdBxuP1lyj
 0Ky/zdBtEPXAPiOQrCdLFQthQmp1JcGqEIGqQe37T/cGw2nv4bawcPwYnulDmBXL
 FOGAXZmRl9rYYWg9ni+brfaF11hxYSpE8gYtG2a5QoKkHANHMG+kKf0jiHxB7RvQ
 ==
X-ME-Sender: <xms:IXR7YX4kI4ozS3epy37kf2wSR2FHzbbS060jPjG71Itop0ZpEMsnKQ>
 <xme:IXR7Yc7Z3ZO4yScikn1Plj5ERHQ3tcvj4CtTwqnBAzhhxRKxoP99RNBvqsueAa2Cu
 uqEwTRIS84iMKDA6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvdeggedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:IXR7Yecobax7M1TTqf9axnYPHeFt6LpKILX__ml_Mi0R_5QsqUCRpA>
 <xmx:IXR7YYJgEckDFRZ02tvTtZDZZQJN-RmwROMYlh3sL_7nEsSEoeIYtg>
 <xmx:IXR7YbKnNinUg2ztu8V1pkcKOsMzScbHCBjcKo8C_IaLVOAi9tm0NQ>
 <xmx:IXR7YT2c4jmBgHj5Zc95-WxbDNekaga6YrrrH9B_KEfABmWksw85HA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 61A93AC0DD1; Fri, 29 Oct 2021 00:10:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <e9d50c0b-3d34-4b01-865f-4170f8ddc288@www.fastmail.com>
In-Reply-To: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
References: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
Date: Fri, 29 Oct 2021 14:39:49 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Christophe JAILLET" <christophe.jaillet@wanadoo.fr>,
 "Corey Minyard" <minyard@acm.org>, "Zev Weiss" <zweiss@equinix.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 8 Sep 2021, at 06:36, Christophe JAILLET wrote: >
 In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()' > succeeds, 
 'port' would be leaking. > > Test each allocation separately to [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mgJU9-0006Zx-LH
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs_bmc: Fix a memory leak
 in the error handling path of 'kcs_bmc_serio_add_device()'
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Wed, 8 Sep 2021, at 06:36, Christophe JAILLET wrote:
> In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()'
> succeeds, 'port' would be leaking.
>
> Test each allocation separately to avoid the leak.
>
> Fixes: 3a3d2f6a4c64 ("ipmi: kcs_bmc: Add serio adaptor")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Sorry for the delay

> ---
>  drivers/char/ipmi/kcs_bmc_serio.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/char/ipmi/kcs_bmc_serio.c 
> b/drivers/char/ipmi/kcs_bmc_serio.c
> index 7948cabde50b..7e2067628a6c 100644
> --- a/drivers/char/ipmi/kcs_bmc_serio.c
> +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> @@ -73,10 +73,12 @@ static int kcs_bmc_serio_add_device(struct 
> kcs_bmc_device *kcs_bmc)
>  	struct serio *port;
> 
>  	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> 
>  	/* Use kzalloc() as the allocation is cleaned up with kfree() via 
> serio_unregister_port() */
>  	port = kzalloc(sizeof(*port), GFP_KERNEL);
> -	if (!(priv && port))
> +	if (!port)
>  		return -ENOMEM;
> 
>  	port->id.type = SERIO_8042;
> -- 
> 2.30.2


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
