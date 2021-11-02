Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E69C1443846
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 23:15:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi23a-0002Z5-9U; Tue, 02 Nov 2021 22:15:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@aj.id.au>) id 1mi23P-0002Yc-Tn
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BAdWwQ+q5kjs8EMQZdc7Jq2E0usVeAes1V+1KJfTF4E=; b=CdIajPz3tRy1xy+AboogF8tde8
 3nzIDZsuBrpXBy6k6A29b7TYcSa2EvpqQJz+tUVHHfoBf0ARnYDQu/lvy5ro3REi3oV2lYc8Y5bjT
 QWeZJauN23Xkj4kNZGctGfII4mqKeiW07PMvpDhTe3xO91WDTgAxTbhH/Rl2QK+9XEOA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BAdWwQ+q5kjs8EMQZdc7Jq2E0usVeAes1V+1KJfTF4E=; b=CKVYgAGcM7ntU9ZY13fLjOIYQQ
 HoOUXAorzWyz/YYuru8DDLKs+WsJy+fyQu2WlM7xGG76lqjfaL+/FNxsfas9Vy6hq/X+h2tgimLYw
 9zRhNG/XeO73yLqim5m2wiS5u+VLEadh2YH3mYWjV7cvCJAOgYf1rKy6Fu30tm8R09Jw=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi23J-00FWsx-RQ
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 22:14:49 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2D03F580674;
 Tue,  2 Nov 2021 18:14:38 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
 by compute2.internal (MEProxy); Tue, 02 Nov 2021 18:14:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=BAdWwQ+q5kjs8EMQZdc7Jq2E0usVeAe
 s1V+1KJfTF4E=; b=e6SHqTYpz0ZsHmASCIJPMH5Ow6rP8GTwo0ZsADeuAzZNGP8
 LVBCER609l7oH6tpTd8sL938N7ZhX7F3699vU8qUkwB+XFynLso0+Kx1F0/1Gpfd
 O8OJE9xYRhXTa0UBQF6bAd4/rSjZhJeBS9R5hh818zecFR2c+IhLiDe2ksfzO77Y
 cHPQm116YwFCEi05YSY+SJNquOt/J0tvETqISbRTvXyuus7WQ53iqbVafT8aIpRQ
 8Cp4FzwGo+iKkpuRPck7HtjGS6wbAsrtBx5D3XemeKTP4OItnLhvZVvQJhc3YTXM
 D4zA9zSOScjjob0Mo79phvlvSBV2yQsq+/OhWcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=BAdWwQ
 +q5kjs8EMQZdc7Jq2E0usVeAes1V+1KJfTF4E=; b=WsTiB7PzD7wnHrAhhg4rfU
 ap2Wi7snshGHr7lxKpVCRUXmfxlK+U7SIDjC+7AqtZqlFMF6dt12V5oSk1/bIewU
 +u0qKX9Qk8Ckgvu2Vprhwr8IkCUM3F/y3SmUfNq4cPPmAozkscgaf31bNPCLMow+
 f7Qbf8Xt4csaSHlFXBFH9PLCz3kbygtRZGqbOf76+08ZqI9FflWIbZIa97zgJzH5
 MwQ5Ak21ttSv3w7VGB4oU6qalr3sV8eQ3+RDoCPO6UXvtCXHRY4doILMAWTzZ44W
 gugqhMtC/7NqMkBBt4tRjoZ0PiGcsFNu+PJk+NKaqbpJ+jtDWJ4WDhUVzCnRXjLw
 ==
X-ME-Sender: <xms:TbiBYTHFR5xr9n5opdaFJFfPryVQDWEmWIIoiDjpAiZMy1RijYdTHg>
 <xme:TbiBYQUY25QlvlkvpJKGaPkU_BYEJHKnh7bMTg900oxtw2ii4LsnPlSE2ERFt9kO7
 7YDOQdTVbsCyxYjyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrtddtgddufedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
 hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:TbiBYVIQ2qpG5_k5HW9_VW_HSfpHQdIzkViBJTNVy9gDXm1S9_FQrQ>
 <xmx:TbiBYREL_hWBALsZ79hLPKuxPU40qFbDYNorsDHOJCHs0rUL7ZANdw>
 <xmx:TbiBYZXAC8mAYhzejiAQyCPo1EXL-N_lGJKOYR7HkupZ7LAAOyUW0g>
 <xmx:TriBYVqxVXLf1o2HtVb0tEjn4MtXIKWHPUTjLmAozooruavwkW-GiQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 2AD9DAC0DD1; Tue,  2 Nov 2021 18:14:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1369-gd055fb5e7c-fm-20211018.002-gd055fb5e
Mime-Version: 1.0
Message-Id: <602c4784-9ef2-405f-95ef-d75e56d4505e@www.fastmail.com>
In-Reply-To: <20211101233751.49222-3-jae.hyun.yoo@intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-3-jae.hyun.yoo@intel.com>
Date: Wed, 03 Nov 2021 08:44:15 +1030
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
 > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > If LPC BT driver
 is registered ahead of lpc-ctrl module, LPC BT > hardware block wil [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
X-Headers-End: 1mi23J-00FWsx-RQ
Subject: Re: [Openipmi-developer] [PATCH -next 2/4] ipmi: bt: add clock
 control logic
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
> If LPC BT driver is registered ahead of lpc-ctrl module, LPC BT
> hardware block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
>
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds clock control logic into the LPC
> BT driver.
>
> Fixes: 54f9c4d0778b ("ipmi: add an Aspeed BT IPMI BMC driver")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
