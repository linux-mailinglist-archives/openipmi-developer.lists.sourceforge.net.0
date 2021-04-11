Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E97635B754
	for <lists+openipmi-developer@lfdr.de>; Mon, 12 Apr 2021 01:01:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lVj4r-0008Mm-DM; Sun, 11 Apr 2021 23:01:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lVj4p-0008MX-TR
 for openipmi-developer@lists.sourceforge.net; Sun, 11 Apr 2021 23:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cl5NDlR0eeNq1SIA3lbTrquui0su7agE6SsdembMtS4=; b=d9zLh9263bFM5WEsJPb05YYfYf
 QtNFDm2V4Rugx831o/DP7WnlyoOD8hoSkXLZCjsk3ILxOCzmPs6hhWYi+0jhbOBM7X42VYtQnoToi
 QW3ss37a7OFEZaU15jA0A1ovjk5SJYRXf71KNmBE/pMwzKy2vCr67b8oJunHo5ALZRY8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cl5NDlR0eeNq1SIA3lbTrquui0su7agE6SsdembMtS4=; b=fWrFAWfP2CXkCX07bawLbXKpha
 pU4TcvMzUGjZqXPCUw0VWhDUvDZPQFGbuMHrunds+zd1fGTvE0T/oCoPKSosR/njj+CIeI7QvMYw3
 nYQSjC2wQpMmTDSBlvCT82l2PeNDWK1pomt0wUov3YYXHonauhLAAbR+xp/TRVPksEiA=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lVj4a-006VoK-TS
 for openipmi-developer@lists.sourceforge.net; Sun, 11 Apr 2021 23:01:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id DA4BF5805EB;
 Sun, 11 Apr 2021 19:00:48 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 11 Apr 2021 19:00:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=Cl5NDlR0eeNq1SIA3lbTrquui0su7ag
 E6SsdembMtS4=; b=TKxu0qg/SVMSv+IYdXTiOo+qpAMUYm+Dm4UiikfWnljE/mq
 NQirbvtS1O/rdZu1HTq9VlDnwFhWVmH8mJZsAnf8+7A+67wN7/8raDjnazjlSU3C
 j4b1amfhJI+u1R35/pvrfy6h26bkdO52WzVmaEBWMcSGL1vyYhtCRdV275NJ/mk8
 0WyQjt3K5HREsoQVAmMPzbNGiNs5TABejz5zQ+oGL7TR+ZwdWiU/8jYv89BvCDcB
 XY6P6EAveASQjePYByqH5XtPnR4RBbDgWyDiMEeglFzrnmNrkzPPniXIVvFYQYOq
 J5KfV3CkCRN6HSrPtfHMUMoJPd0ZDjrOpE+wLug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Cl5NDl
 R0eeNq1SIA3lbTrquui0su7agE6SsdembMtS4=; b=UqqsQIcvyOSld3IRE4fX8+
 QWA8hvNqU/+sYi0hAJX/R48JJTN42fcVSMRRNfpCWZo4zXLvXEaEA9iGbEFfJPlD
 SHjWNay/Regm5lXulwsDlGJZZhV6raX7LMZVN/+VuIHYltBNvCQfWDvYzsAKNB/C
 yV+Ne+yLR1HNSIm1/RzmjjrCZ6knDTmLut25+StM6U59PlRlVLVN9/odRV1FOeDy
 n/WLZSydttQ8HYHCHA8GxPChQ8sIpOc4rYxbwM4CxaF4/CeT706eKxsjhSXLpDsY
 I8aXHE7v6suL7n+p1EKicsSZvK6YGhFkxHlY0Z8/1u1mLV5S0my4lKueLqm5Gvzg
 ==
X-ME-Sender: <xms:n39zYKrfPbMkBxTjpuO2jpdk5dXjY4Ezrgq8rz4b6Ru9ZzcyR2HISg>
 <xme:n39zYIoT-cxhvHeWZVu4b2PG9jwnSSG1AtumJ7Rxp3RDPm8txyTBjQDZBtRiGNaKN
 KkOv1UhsrWeNHDxcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudekiedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:n39zYPOlM7TtBe1B1ORtRfcGQx4bmkllO969YWoFj3qlkYuDXxOuAA>
 <xmx:n39zYJ5m_Ruvqiyvw7wbUqUA2X1w8T1r55AfzmNule8F21VrYtWDCA>
 <xmx:n39zYJ5pAm9b8Kx6n_rgCcjlcDFVgIW0SiAwBwmOqsE9hOUUogqlqw>
 <xmx:oH9zYNonsx8RlM1NjKCPvWf_GJSTVUshI0Ut5ZWY4KyoBMlEUXX0Sw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A49C1A00079; Sun, 11 Apr 2021 19:00:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <e99e2e45-7810-4a24-a519-5204acee04ea@www.fastmail.com>
In-Reply-To: <YHCqR8/nZFB1HRgX@packtop>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-10-andrew@aj.id.au> <YG/Ql9z9X/mtOSvl@packtop>
 <ea34ee69-a266-4737-8450-4695d2d0fbd4@www.fastmail.com>
 <YG/zVv4XOo1HoLd1@packtop> <YHCqR8/nZFB1HRgX@packtop>
Date: Mon, 12 Apr 2021 08:30:26 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Zev Weiss" <zweiss@equinix.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lVj4a-006VoK-TS
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_v2_10/21=5D_ipmi=3A_kcs?=
 =?utf-8?q?=5Fbmc=3A_Turn_the_driver_data-structures_inside-out?=
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Sat, 10 Apr 2021, at 04:56, Zev Weiss wrote:
> On Fri, Apr 09, 2021 at 01:25:26AM CDT, Zev Weiss wrote:
> >On Fri, Apr 09, 2021 at 12:59:09AM CDT, Andrew Jeffery wrote:
> >>On Fri, 9 Apr 2021, at 13:27, Zev Weiss wrote:
> >>>On Fri, Mar 19, 2021 at 01:27:41AM CDT, Andrew Jeffery wrote:
> >>>>-struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel);
> >>>>-struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel)
> >>>>+int kcs_bmc_ipmi_attach_cdev(struct kcs_bmc *kcs_bmc);
> >>>
> >>>Errant declaration again?
> >>
> >>As previously explained.
> >>
> >
> >This one seems like a slightly different category, because...
> >
> >>>
> >>>>+int kcs_bmc_ipmi_attach_cdev(struct kcs_bmc *kcs_bmc)
> >
> >...it's immediately followed by the definition of the very same function
> >that it just declared, so I can't see how its presence or absence could
> >make any functional difference to anything.  (So perhaps I should have
> >said "redundant" instead of "errant...again".)

This is is a small hack to fend off warnings from -Wmissing-declarations.

> >
> >It's fairly trivial of course given that it's gone by the end of the
> >series, but as long as there's going to be another iteration anyway it
> >seems like we might as well tidy it up?
> >
> 
> Oh, and otherwise:
> 
> Reviewed-by: Zev Weiss <zweiss@equinix.com>

Thanks.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
