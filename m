Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FBD5F5F94
	for <lists+openipmi-developer@lfdr.de>; Thu,  6 Oct 2022 05:26:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogHWM-0007y9-6b;
	Thu, 06 Oct 2022 03:26:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@aj.id.au>) id 1ogHWK-0007xt-KG
 for openipmi-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 03:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YLPP3ai1CZbUXBkGYE8FeExSwido5nCV0cHPJQIZgPI=; b=cHUSfW6LdV9th2ryUm+Ry4UbNv
 8B2Du20MNxIywlcUEjqz+tTKov+wCj4UTwAWWQGPR5JWUArHeKPj69J3SOzYz6rZ8L7sAiAW1SIoN
 vFXsKtegZuW19AMi6nK4V+4TsZHx8C5u32b1Js3Mip2VjkH+fXjVEMyqB29at2+9aRQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YLPP3ai1CZbUXBkGYE8FeExSwido5nCV0cHPJQIZgPI=; b=XBeBDlDfmSUg1+tUAXAUJLkUT7
 p2LnRwcUQgELhvxgzbW2PxVpm9mFMHYGy2En+5bHl8jjKu9B6vuFRYx6ccDFzDD89DpvCEnhLV2de
 j36VRPn8tDTgE89XyavS/c4+hia8IDvRJl8YVrY7gpXOideDm4/cP4Zuwfnk/jwQJQis=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogHWF-00EFUn-8v for openipmi-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 03:26:00 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 4D8A33200917;
 Wed,  5 Oct 2022 23:08:59 -0400 (EDT)
Received: from imap50 ([10.202.2.100])
 by compute3.internal (MEProxy); Wed, 05 Oct 2022 23:08:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
 :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm1; t=1665025738; x=1665112138; bh=YLPP3ai1CZ
 bUXBkGYE8FeExSwido5nCV0cHPJQIZgPI=; b=qHWU0SwlVVnJjB+094CvRTb1w6
 IKxxEGUwvbAlOp91pDIrd8m71GNQrAXv9OhLyaEp//5FrQUfi4J4x1OxkX7l4o0M
 3HeslnRwe1WX03r3zfB5tGCoqd6hBsjeOz/fWiMBF8ad25vmNqFEcAj2vvA5v3Wy
 xhsy5oGmvzD0zhz7Me1K9piEJW53zGSbcw8NU16zcwt1u+FYFrtK8uIb+2eqJR1i
 iZmdyhZNxGXGx3hn9UXQWKdNgSCvF+Amm+7nyI9u9JOjivuD51O/k6dCtukQSurh
 iv/jlUiTlO1/HYJWkkZLUh0Ck0cdoyekgxRs8dZROXxyquzmB+cw/ZUVwPTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1665025738; x=1665112138; bh=YLPP3ai1CZbUXBkGYE8FeExSwido
 5nCV0cHPJQIZgPI=; b=TJ7mnv46ihjN1lCqaaKBPvtrx6U+cE38GW8Vaa7CIxbb
 09FghGEiiOiBTtQgnn1Xrx+LPnH2GTBBYLn8HEUAvT/jckSTsGMnE7K/3o1F7l79
 PQCbdtdSshABmoVI/vsnxgyjWfuHh44BtCSVbTENhyxlbcdHy9kFibB5Y2HYCDWz
 w5xDMIcce412xIDNjZEQzebiu12TfFxMsmg2KEdtUQdjdpe3+ehmPVglpLJuMHZL
 WJQRrrdWmGguKmaRqWSGmM/EfvBMUq61/JgJANZVJO2IQVa7GytsdPdCaQNB6uBM
 Sa45eLRZ8ofAJxHcbMumVm0fPeZ9rtwHFThgtNetUA==
X-ME-Sender: <xms:ykY-Y-xryuzZQ8qGBDii0q6_gb8aUWSmxCglPzOV10y61jTvgyQoRA>
 <xme:ykY-Y6QXrBzBx0r8Sgs3hZLNwepcQauDk20aZloJC-5IaG3fr30VFYXnjAas68k2O
 G0bSQj8ZdnjX2NoVA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeigedgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtf
 frrghtthgvrhhnpeekvdekjeekgfejudffteetgeejkeetteduvedtffdtledutdfhheev
 feetkeeiteenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhroh
 hmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:ykY-YwXBE82SIdOTLaedMFXhtA3X2LwdUQX3DOxDmIowTpTUBMTQHA>
 <xmx:ykY-Y0gZU5zGzX53fUbgNPR81D3g2aAiBQmV6XXxVZKCzOp2f7YbOw>
 <xmx:ykY-YwA4vDJI5dG7dw-F95RLRCypWR11glTCIyCAPXUzatf9W9EgsQ>
 <xmx:ykY-YzNSalJ-zI_eDlKA_x8-s8ZIZORKv5y5tnx7Hn_OlOLkOjys9Q>
Feedback-ID: idfb84289:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AF10E1700083; Wed,  5 Oct 2022 23:08:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-1015-gaf7d526680-fm-20220929.001-gaf7d5266
Mime-Version: 1.0
Message-Id: <c992be3d-2002-44e3-8bee-9ded84145ad1@app.fastmail.com>
In-Reply-To: <Yz4ZU8Ron/b9GV6p@minyard.net>
References: <20220812144741.240315-1-andrew@aj.id.au>
 <08c20621-e75d-4a72-82e6-b1980304e20a@app.fastmail.com>
 <Yz4ZU8Ron/b9GV6p@minyard.net>
Date: Thu, 06 Oct 2022 13:38:30 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 6 Oct 2022, at 10:24, Corey Minyard wrote: > On Thu, 
 Oct 06, 2022 at 09:42:57AM +1030, Andrew Jeffery wrote: >> Hi Corey, >> >>
 On Sat, 13 Aug 2022, at 00:17, Andrew Jeffery wrote: >> > The AS [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ogHWF-00EFUn-8v
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Poll OBF briefly to
 reduce OBE latency
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
Cc: linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Thu, 6 Oct 2022, at 10:24, Corey Minyard wrote:
> On Thu, Oct 06, 2022 at 09:42:57AM +1030, Andrew Jeffery wrote:
>> Hi Corey,
>> 
>> On Sat, 13 Aug 2022, at 00:17, Andrew Jeffery wrote:
>> > The ASPEED KCS devices don't provide a BMC-side interrupt for the host
>> > reading the output data register (ODR). The act of the host reading ODR
>> > clears the output buffer full (OBF) flag in the status register (STR),
>> > informing the BMC it can transmit a subsequent byte.
>> >
>> > On the BMC side the KCS client must enable the OBE event *and* perform a
>> > subsequent read of STR anyway to avoid races - the polling provides a
>> > window for the host to read ODR if data was freshly written while
>> > minimising BMC-side latency.
>> 
>> Just wondering whether you're happy to pick this one up? I haven't seen 
>> it hit the IPMI tree yet.
>
> Sorry.  It's in my tree for 6.2 right now.

Thanks!

>
> I can't push it up to for-next until 6.1-rc1 comes out.
>

No worries, just wanted to make sure it didn't fall through the cracks 
:)

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
