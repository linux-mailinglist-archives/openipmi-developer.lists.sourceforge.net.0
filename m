Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B76FD331D15
	for <lists+openipmi-developer@lfdr.de>; Tue,  9 Mar 2021 03:45:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lJSNH-0006jD-1h; Tue, 09 Mar 2021 02:45:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lJSNF-0006ix-7E
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Mar 2021 02:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qRybQhRN/O0nr4FGzlsF5grYQeYZu8ucrJLcVTZ+qd0=; b=J0QE0fTwwu1p+eYF4VzrrbGuq+
 n9YB1fvGtaex6KWIpK8g4VERYFOL804ultd/Q0sZsPcy8duXkbplN2pL1miFFiYSmkSZA5kbcywcA
 N0NUJvqTUzZqsHXknFd/6+CuVUii4NJtd0jAvQrZmpGNOaceJn8VtaeE9Tg6CBn37Efs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qRybQhRN/O0nr4FGzlsF5grYQeYZu8ucrJLcVTZ+qd0=; b=TTMX4as52s4s4GbbuDJU3NpN6I
 XZwbGRpJfKyEpZJV3LeDyL5Hky1aa0CwsoP/pI9fyhlw0MiYfYSQA94VwI0HawnL8of20RxB+PiGc
 4WaKIFVziFktICqRke3IVlW5t3WooappliAmwHa5gc7qFIzlv//GZf0hAhZ01awbXnoY=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lJSN8-0002N0-UH
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Mar 2021 02:45:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C9CE5580795;
 Mon,  8 Mar 2021 21:45:14 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Mon, 08 Mar 2021 21:45:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=qRybQhRN/O0nr4FGzlsF5grYQeYZu8u
 crJLcVTZ+qd0=; b=QOXTD5AO8JgTi78Gox3qd+o0cQCodeaVASzuajwdav5Y2hC
 4avnt+mIqAteWzqQDJl9a+QBx+HWM83Gk8XIX3u3/8IoOxIpfAhVm0FteiFTDHU8
 UwnYHebv1bSlVT/QLDChvmP7j9MwiX+8RFkMT4zCiclkKaUOimes4zpaPZa94zB7
 BAu4JaRJB3JUe2FFr1s9ti6JN1lAbNCqTKBqSjZjKFnT5CkATt6/FEDBe1Fbe4gJ
 D0U2yfwxYdj1M8DA7OVJ8w0HqvbaDOcrNGrDuwksoN/ZhLutauiUsz50QyJjeiYI
 pceRzncgFai4/nRAJK/s+SQqGIgjF/NUaPhONoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=qRybQh
 RN/O0nr4FGzlsF5grYQeYZu8ucrJLcVTZ+qd0=; b=aDdpVZRzVu/fS0qCUO6nOt
 oEgpCu/QYslFEzpsvzX7ndTe8eRiqTfW1+F4Fv5rSljjXczfv7nrbqAWr3zapAW0
 OjefFWXSx9RK3x20MIrnZcNoti7tW/oJNtSA/IV7IGOQHDvleipPI09EiprnhU9o
 kt5scxewJhaB6Qq51S97vCJklRMPZ9wqdCDkJp6r7hTpTZ25zNabBWCCaBJG9QKb
 9u6RelhaplCmdQf+JB8koj+J5GNSUsr4cXpmXqevWGEjrvMfmV3DRpgqVTIImVfo
 ECd+27HzMXYje4l4PuXUIUPvFoestcAbxKMjRp5oAEw7dxy3qsvV9LfT+/Sh16IA
 ==
X-ME-Sender: <xms:OeFGYDnuPNqO225nJFIOksYE4N-W8_TT57d--pKiJK5IItujip51ng>
 <xme:OeFGYG3AevxgNkp6GBMoCi17lsCIk0UfPd4Zb0S2-1acVmFRKmVe3pjedveEy_gHz
 CwHMO254a3PIWOkOA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudduhedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:OeFGYJo0AqsS8xJQPVQeyVcw51jBuDXitZCYSpimI6GuXdKxDCpt9g>
 <xmx:OeFGYLktDhp7hqaYr6namfV8BupM_mzss-zlC4J7CcD3HGisilXfhg>
 <xmx:OeFGYB1y7aWjmsX_j2hoYnrsWZ1vIeNG-hTGQDkdrPZnB18ZfhWOxQ>
 <xmx:OuFGYLM4Nh9o6VssFPquDGq2opK0-qo-dL8LHWiAIMvmBVsXSXAgUg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 45659A00064; Mon,  8 Mar 2021 21:45:13 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-206-g078a48fda5-fm-20210226.001-g078a48fd
Mime-Version: 1.0
Message-Id: <331c242b-cf22-4d0e-a08c-b9dbb06f2f32@www.fastmail.com>
In-Reply-To: <20210305230940.GA809870@robh.at.kernel.org>
References: <20210219142523.3464540-1-andrew@aj.id.au>
 <20210219142523.3464540-18-andrew@aj.id.au>
 <20210305230940.GA809870@robh.at.kernel.org>
Date: Tue, 09 Mar 2021 13:14:52 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh@kernel.org>
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
X-Headers-End: 1lJSN8-0002N0-UH
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_17/19=5D_dt-bindings=3A_?=
 =?utf-8?q?ipmi=3A_Add_optional_SerIRQ_property_to_ASPEED_KCS_devices?=
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 Tali Perry <tali.perry1@gmail.com>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 Lee Jones <lee.jones@linaro.org>, openbmc@lists.ozlabs.org,
 linux-aspeed@lists.ozlabs.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Sat, 6 Mar 2021, at 09:39, Rob Herring wrote:
> On Sat, Feb 20, 2021 at 12:55:21AM +1030, Andrew Jeffery wrote:
> > Allocating IO and IRQ resources to LPC devices is in-theory an operation
> > for the host, however ASPEED don't appear to expose this capability
> > outside the BMC (e.g. SuperIO). Instead, we are left with BMC-internal
> > registers for managing these resources, so introduce a devicetree
> > property for KCS devices to describe SerIRQ properties.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml      | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > index 1c1cc4265948..808475a2c2ca 100644
> > --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> > @@ -47,6 +47,18 @@ properties:
> >        channels the status address is derived from the data address, but the
> >        status address may be optionally provided.
> >  
> > +  aspeed,lpc-interrupts:
> > +    $ref: "/schemas/types.yaml#/definitions/uint32-matrix"
> > +    minItems: 1
> > +    maxItems: 1
> > +    description: |
> > +      A 2-cell property expressing the LPC SerIRQ number and the interrupt
> > +      level/sense encoding (specified in the standard fashion).
> 
> That would be uint32-array with 'maxItems: 2'.
> 

Ah, thanks.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
