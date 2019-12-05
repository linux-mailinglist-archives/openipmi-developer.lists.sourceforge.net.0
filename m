Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA061149C4
	for <lists+openipmi-developer@lfdr.de>; Fri,  6 Dec 2019 00:18:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1id0Ni-0002Iv-Sd; Thu, 05 Dec 2019 23:17:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1id0Ng-0002Ii-LY
 for openipmi-developer@lists.sourceforge.net; Thu, 05 Dec 2019 23:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D8lbGIlMZ18hLjs6+rXC0nkBXoWutq8kGyoDAM61WFQ=; b=MNdIqm10aDHZOPjmU4J5R97Sop
 qd+Yp1+XOsHIgnkb7ePoj90ueigj+gZ5kxcX6ZLGRsfwca1NVeepE8H1oQ/iAiyIv21RwPO/GZ6gz
 c45i70aXTUtDizEZRd7F7M1Y2VRg2r3jHiS2LEE1P/YLH8wHye/aQqxdA3ORM5McOIOM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D8lbGIlMZ18hLjs6+rXC0nkBXoWutq8kGyoDAM61WFQ=; b=GEL40qgGO04Sh5Mn8N9q1ME//o
 xTTCAg6u/A78giwTLlfh605g/w4RZGgxtYqc+BZgwoSfymsSgbV9Pi/KpHqDJOCfv65IJpA/B+DR4
 wZkqYz5ihDQcAPO4LRvuYVVoVh970HaFaG/KMrWoKtGC13nPIiBIhW6Gun3TUx8woi7o=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1id0Nb-009Bag-Bk
 for openipmi-developer@lists.sourceforge.net; Thu, 05 Dec 2019 23:17:56 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F25596056;
 Thu,  5 Dec 2019 18:17:42 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 05 Dec 2019 18:17:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=D8lbGIlMZ18hLjs6+rXC0nkBXoWutq8
 kGyoDAM61WFQ=; b=cC1QZ33wwhO3ON234cJV7WeWKsjQsu3AM+62O/5yn+hQu0c
 uKzptXAbSTjvzvMMqmjq0t0jqmIr1TN2hvQyLNrPZgypFJNHaFGVhLk4Fj6o5RvX
 RDxZw8Wd64PPWtH73pOyMVMQg9WkV86kuswV6kdTtr8PMKbRNU22FBkE59wUublR
 0z2k1NnO9LVLgGPWmPScrsOBVLr2ppxLbaOBpFBhQmmqvJb5L7BwXQRCM3NUT3qE
 BkuzaLgGJwXm5sqrnK13iXJLq8awORQ+ANfaljvZeg3TG6FNYREOH7nqetHoVoyK
 k5FtRzsCDtvVwaTD0HXBVOLvX/Hkz9dv/wQKaiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=D8lbGI
 lMZ18hLjs6+rXC0nkBXoWutq8kGyoDAM61WFQ=; b=glsgjMMVtVu1GYFVEeFa/P
 nQew7jllOtDaWL3IBMHyiJul+mnzAP01MCA5EqEhymmJi0GymZ56t46bj+Afo3RT
 KOYK3pTGNNUJRYrIUmvrwPhPR/BQ+epM1gEmgvyzynD+H47qOnLgDuUXtRqCoRKD
 onnoXUj9PdzZykhUFwWRgUy8cQFHI8FVuB/sbswBBtyv2KXiUx4A+2XzGdIf+LdT
 DCPIzS8EnpDrfPf3PwTnLN6evbTg+pD9o7e5Wp17nFYIrZfBhiBdYt4fDRKgO2S8
 xktZkDj4L5vWiwMtOrVeiALV+6fQJgbORSHUSbsn+CPLfvfV20iO9Utjg/apuP8w
 ==
X-ME-Sender: <xms:FZDpXeTTwGGI38eYvtWGeRC1DnWm68J7-5E_TGZspAqE43qaDjoKbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekuddgudejvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehn
 ughrvgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrg
 hrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushht
 vghrufhiiigvpedt
X-ME-Proxy: <xmx:FZDpXcKo7VUtlTy3lsqmSInY81M65uFtpqj3pOmg1M1YNtunHnJ_lQ>
 <xmx:FZDpXeB-axUfZd-YOJgvtLWJpRXBAH_s6o46kDwuQ0MJ1DPIaiiPWQ>
 <xmx:FZDpXR13oNqwdquMe_tq9eTCKeSe9y0pIxS6bJ9tMyETplcSNKKA1Q>
 <xmx:FpDpXUIEUd8oU9lm1s8jZB1f5dtmqt3SiiDiPYO-C6VETZGkQq8gdw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 04541E00A2; Thu,  5 Dec 2019 18:17:41 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <fffcd415-0c9e-43ca-8957-b951c2f047b5@www.fastmail.com>
In-Reply-To: <CAL_JsqLgmU8m-zT8-K=peENshJx7Gx2Hn9RoZ-zbnqLUmqBQpw@mail.gmail.com>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
 <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
 <40d554c0-de62-4d45-bbcc-dd3a3aa12a65@www.fastmail.com>
 <CAL_JsqLgmU8m-zT8-K=peENshJx7Gx2Hn9RoZ-zbnqLUmqBQpw@mail.gmail.com>
Date: Fri, 06 Dec 2019 09:49:04 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh+dt@kernel.org>
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
X-Headers-End: 1id0Nb-009Bag-Bk
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_1/3=5D_dt-bindings=3A_ip?=
 =?utf-8?q?mi=3A_aspeed=3A_Introduce_a_v2_binding_for_KCS?=
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, openipmi-developer@lists.sourceforge.net,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Fri, 6 Dec 2019, at 04:20, Rob Herring wrote:
> On Wed, Dec 4, 2019 at 11:12 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> >
> >
> > On Wed, 4 Dec 2019, at 01:01, Rob Herring wrote:
> > > On Tue, Dec 3, 2019 at 6:36 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > > >
> > > > The v2 binding utilises reg and renames some of the v1 properties.
> > > >
> > > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > > ---
> > > >  Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
> > > >  1 file changed, 14 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > > > index d98a9bf45d6c..76b180ebbde4 100644
> > > > --- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > > > +++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> > > > @@ -1,9 +1,10 @@
> > > > -* Aspeed KCS (Keyboard Controller Style) IPMI interface
> > > > +# Aspeed KCS (Keyboard Controller Style) IPMI interface
> > > >
> > > >  The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
> > > >  (Baseboard Management Controllers) and the KCS interface can be
> > > >  used to perform in-band IPMI communication with their host.
> > > >
> > > > +## v1
> > > >  Required properties:
> > > >  - compatible : should be one of
> > > >      "aspeed,ast2400-kcs-bmc"
> > > > @@ -12,14 +13,21 @@ Required properties:
> > > >  - kcs_chan : The LPC channel number in the controller
> > > >  - kcs_addr : The host CPU IO map address
> > > >
> > > > +## v2
> > > > +Required properties:
> > > > +- compatible : should be one of
> > > > +    "aspeed,ast2400-kcs-bmc-v2"
> > > > +    "aspeed,ast2500-kcs-bmc-v2"
> > > > +- reg : The address and size of the IDR, ODR and STR registers
> > > > +- interrupts : interrupt generated by the controller
> > > > +- slave-reg : The host CPU IO map address
> > >
> > > aspeed,slave-reg
> >
> > I don't agree, as it's not an aspeed-specific behaviour. This property
> > controls where the device appears in the host's LPC IO address space,
> > which is a common problem for any LPC IO device exposed by the BMC
> > to the host.
> 
> Then document it as such. Common properties go into common binding documents.

Fair call.

> 
> > > >  Example:
> > > >
> > > > -    kcs3: kcs3@0 {
> > > > -        compatible = "aspeed,ast2500-kcs-bmc";
> > > > -        reg = <0x0 0x80>;
> > > > +    kcs3: kcs@24 {
> > > > +        compatible = "aspeed,ast2500-kcs-bmc-v2";
> > > > +        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
> > >
> > > What are the other registers in this address space? I'm not so sure
> > > this is an improvement if you end up with a bunch of nodes with single
> > > registers.
> >
> > Put into practice the bindings give the following patch: on the AST2500:
> 
> Okay, that's an unfortunate interleaving, but seems fine.

"Unfortunate" is a good description for the entire register layout of the LPC
slave controller.

I'll send a v2.

Thanks,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
