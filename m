Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E11C73AA764
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Jun 2021 01:21:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lteqb-00030v-0v; Wed, 16 Jun 2021 23:21:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lteqY-00030m-Jl
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Jun 2021 23:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PO02j9SYy4Fuys7DY1CucmNO5PH1IkVPa73qEXnyVUk=; b=Ed2dIEWQYr8+lb5v3n/DQ3LSeG
 ee/d7YpyV0uni6mz/a9N1f4CN1c1grdNJqyfHg9zSTgy07C2GVV+u/mgdI9F3NaJ9NJrP5G/W+fim
 rekcZ+Wv7wJdJN+u6djLl4RPUvrq8GYMWwbtRIcZPrE/Nv0lH16JczfnuXGsceKgmnO0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PO02j9SYy4Fuys7DY1CucmNO5PH1IkVPa73qEXnyVUk=; b=ek4dVHYMeXMccGlNn/eZXzs2cE
 ZF5nYIcaxEwFetxRVOWgYDpsnDErxGPAAxgAdaoawpAAWvoNsFzTq453Ez6d+e+x1embYlpDnvwrp
 SKhUKtlpcryWDzmtf8t4usk/OSGrPH9hYTbgCpbgPpbnhiK9zalXTpK+EtxXDrky6c1U=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lteqL-0007HB-GH
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Jun 2021 23:21:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id E563819B7;
 Wed, 16 Jun 2021 19:03:59 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Wed, 16 Jun 2021 19:04:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=PO02j9SYy4Fuys7DY1CucmNO5PH1IkV
 Pa73qEXnyVUk=; b=YuogiRdx2QXF1ySvr2xrBPfLQns/DMRgUb9Y/wZf4OHqi5g
 zwNoGKiFQ2hYUmNYRa8KHKtOXrT2cPdDD0AxzEfv7XLoAMBc+9nHsSIJhz9CXilM
 GhwM9Qg2Ssbo4mdZvwIweD1QVcQ5MIJpDWxdMPgdFemBBl/XZUBF+A8KXkj0eJpk
 pJSd+WN6Vm2xoNPkTsNDCP9Q7jjyItBY3C0ZKu5maBGV+1H1n2crdI0BGwkzFP+x
 OJIwPqQzQYXK0Ax6JxcSGLjZ4acHN1Q6gGu/lHR/0M3v70TQTUkR5KcxgPSkeMJg
 H+2dVZdal1BSXbnOSrTz9vJqYihW9bhupa0VAYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=PO02j9
 SYy4Fuys7DY1CucmNO5PH1IkVPa73qEXnyVUk=; b=b5PnAMLVWSDKdbEo8EWUN8
 V+8i8a1QdMNW4fWXRIXlWsfVwLiVhrOWCPnO2bE8w0phO3HnQF4ah3UQj70xyhKe
 B23XpcduqyABKgba3swsYDCls+vi1bbxTRQ6dYbwgnncxKAG5mjHRulJJUXTHInn
 l5g3ggi68Kr1KcxRcRReuBk4UxjY6tcCBl/DX+rSfIPthCL1gtb02+MhjrEtjVsH
 rPLZ+0Y1VeLarLAFFNvLjVcMOBw94bOmzt0zRcKBNe4/Wus1VbF+LgUgOI/4LPYW
 lzwRex7Ph5w8oRKeDT2p3F/D+iR6IyEzsyAsbJ4UZDELZaiOz+HCb73Ctn4Ym5zg
 ==
X-ME-Sender: <xms:XoPKYBJpH2jtt7pDG71yvrzoJd4nhGdpOYF9Ow4bI_UvJeFbkgJ6fw>
 <xme:XoPKYNIEVE4GnGSjYKQ3v2ZRxEhDmjrW5qUMHAIlNWMC27b7FG8O0y1DjDekBLLU2
 vtm86RWEJggeGUtBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeeftddgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:XoPKYJsRE1vyMZI2WKvrt9dNizdy3lKOiAYzapsHGXKgb0Yd2wZGMQ>
 <xmx:XoPKYCYtt9IBBtNCfnITaXWBEMLsM930c_RWAeuFmmMDSShT0Rx2sQ>
 <xmx:XoPKYIYh2hk82XCAXK0sRpJ4p2HimScYIdb49pqqLMvj_Q-lSSHn7Q>
 <xmx:X4PKYHz1pVOmPlTrK-xyOMUnlzcEgUkIkMzYHBwunJYpOiiCIjI6pQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CAA02A00079; Wed, 16 Jun 2021 19:03:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-526-gf020ecf851-fm-20210616.001-gf020ecf8
Mime-Version: 1.0
Message-Id: <9902c945-4651-4023-bede-6833392b3811@www.fastmail.com>
In-Reply-To: <20210616162913.15259-1-colin.king@canonical.com>
References: <20210616162913.15259-1-colin.king@canonical.com>
Date: Thu, 17 Jun 2021 08:33:38 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Colin King" <colin.king@canonical.com>,
 "Corey Minyard" <minyard@acm.org>, "Joel Stanley" <joel@jms.id.au>,
 openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.21 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lteqL-0007HB-GH
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?W1BBVENIXVtuZXh0XSBpcG1pOiBrY3Nf?=
 =?utf-8?q?bmc=5Faspeed=3A_Fix_less_than_zero_comparison_of_a_unsigned_int?=
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Thu, 17 Jun 2021, at 01:59, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The comparisons of the unsigned int hw_type to less than zero always
> false because it is unsigned. Fix this by using an int for the
> assignment and less than zero check.
> 

> Addresses-Coverity: ("Unsigned compared against 0")
> Fixes: 9d2df9a0ad80 ("ipmi: kcs_bmc_aspeed: Implement KCS SerIRQ configuration")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Thanks for catching that.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
