Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E48E79DC2
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jul 2019 03:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsGe7-0005vC-OH; Tue, 30 Jul 2019 01:09:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1hsGe6-0005v1-Pa
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 01:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eN6StjwqcbFvBGm255dFKEDbANWqniwk/QHr4l2B8Yk=; b=V3duZhEsgW/WUp2krflGwTuVBg
 BfUnV0w5rYEjcrWRrOMxasn5GDuzLK/k1yAMdRVSWJfBUtEBEvETV7bY0ivkyQM6U6QRNrSDW9jvA
 iQCRmtyFB031L5o2wtZdhnQgAA72ow9KddtpBoZFjagG/OJYOSHfPhdRqsuM4LcH1a+Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eN6StjwqcbFvBGm255dFKEDbANWqniwk/QHr4l2B8Yk=; b=QiR8XHrjgiR13ot3VlFFSWpgo4
 2BWrpAqnMo22j6lxnoMFNt7dnuN/X1Fn1Pc+paX8KRyUmRWeTThiR07LHbVeNxjx7HX6puFqXQzre
 ZplhmJ8koOY7kaAwtrTztFdZVkMOwCYHSHg9/QH/cC2NBXxxalbCoolfz5IlTQ4eGn8w=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsGe4-003sTe-9r
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Jul 2019 01:09:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3E9B01BF6;
 Mon, 29 Jul 2019 21:09:34 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 21:09:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=eN6StjwqcbFvBGm255dFKEDbANWqniw
 k/QHr4l2B8Yk=; b=f9JjiX8oQOMQXV/cuozHUCB4pzOqt3MgGW5j+ieLKBluIxW
 9qTwq16SPmkbKZ2pU0uVnnexkGeGhPnlufG7wmA9iOB42se/Uf/FR/SHRk5vwHMb
 rQ0Kj3wnv5HEKZnzXLIyQSCyTI2BpBfwflzcNYzctlZqmI+CiNJ4l4JgrgYy6r1m
 NJ9miZpWKnckdH5OlyCDvoQhsp3Kvkw/0tg7IdjqtutG3J+VFry8r4NtTXuQMCpM
 Y6Et7QDm66hADgvC81l39Y6KDmUmhQwayD2oFZUbxxLT5/9WVXrd39o8b0C+4VIy
 iVWvG6oFint2AoFBApfI8FzvRiWseYT3VPb+7zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=eN6Stj
 wqcbFvBGm255dFKEDbANWqniwk/QHr4l2B8Yk=; b=RSnK+zp5XQ2Pj5z+B23X3U
 FxtVThX/Pze3piInoA1RfkTO/LJ0EGEq98eNVSd1eayua0j3DZTD7yqo/zuzj9Hz
 BJWf2XEEi2wSi2MjH8aXEb8hcpxabAx/M0QK+2q9n9lpZ9NWpF3alykQ+Bv6xtgx
 /XWZAievp2xWgqhiB2Ym8D5RZ+YPNw4BrNm2whyqOcknssCzFWm/Z3P1yuBzQNoj
 11ctvzcg61B2PnNNPi7X5dSMMmi9/DyZdlAGJb8biY1URabakNUt7sRc807uNwMX
 itWgUD4bHFSaAjDddJCQ1vLncAc4VDDt0s59RTrrMKeF8c9RXtnLxt12QtMWj8fg
 ==
X-ME-Sender: <xms:ypg_XWD0fvgphH0bKAtdbmjhhV4XR9GAIDKsRB10kWINyjXLH4Wc0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledvgdegvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:ypg_XaL_sEFBx_mHFMgwgdfWYKnqPOJC6LSyKiv9-P9kg1toiahNEg>
 <xmx:ypg_XZlbMtW5I8SQZPxmkF3EJHXElDHsuPGNjGotVFbMyyLiQfev6w>
 <xmx:ypg_XYF-Rlh1zv2TKQf5VjLD5Ztb6lISs-krArhgwH0JB916oBBO-A>
 <xmx:zpg_XY3LE8XATRTj3ADjatzlERoBIPOZF0DQiunqP5xql6r5inXSmQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C726FE00A2; Mon, 29 Jul 2019 21:09:30 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-736-gdfb8e44-fmstable-20190718v2
Mime-Version: 1.0
Message-Id: <fd8e57f0-aee2-403e-b6fb-76d0c18fe306@www.fastmail.com>
In-Reply-To: <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
References: <20190726053959.2003-1-andrew@aj.id.au>
 <CAL_JsqJ+sFDG8eKbV3gvmqVHx+otWbki4dY213apzXgfhbXXEw@mail.gmail.com>
Date: Tue, 30 Jul 2019 10:39:50 +0930
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
X-Headers-End: 1hsGe4-003sTe-9r
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Corey Minyard <minyard@acm.org>,
 devicetree@vger.kernel.org, Xo Wang <xow@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Ken Chen <chen.kenyy@inventec.com>,
 Adriana Kobylak <anoo@us.ibm.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 =?UTF-8?Q?YangBrianC=2EW_=E6=A5=8A=E5=98=89=E5=81=89_TAO?=
 <yang.brianc.w@inventec.com>, openipmi-developer@lists.sourceforge.net,
 "Alexander A. Filippov" <a.filippov@yadro.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 yao.yuan@linaro.org, Patrick Venture <venture@google.com>,
 John Wang <wangzqbj@inspur.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On Tue, 30 Jul 2019, at 10:23, Rob Herring wrote:
> On Thu, Jul 25, 2019 at 11:40 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > Hello,
> >
> > The aim of this series is to minimise/eliminate all the warnings from the
> > ASPEED devicetrees. It mostly achieves its goal, as outlined below.
> >
> > Using `aspeed_g5_defconfig` we started with the follow warning count:
> >
> >     $ make dtbs 2>&1 >/dev/null | wc -l
> >     218
> >
> > and after the full series is applied we have:
> >
> >     $ make dtbs 2>&1 >/dev/null | wc -l
> >     2
> >
> > for a 100x reduction.
> >
> > Getting there though isn't without some potential controversy, which I've saved
> > for the last half of the series. The following patches I think are in pretty
> > good shape:
> >
> >   ARM: dts: aspeed-g5: Move EDAC node to APB
> >   ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
> >   ARM: dts: aspeed-g5: Fix aspeed,external-nodes description
> >   ARM: dts: vesnin: Add unit address for memory node
> >   ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
> >   ARM: dts: swift: Cleanup gpio-keys-polled properties
> >   ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
> >   ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
> >   ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes
> >
> > With these patches applied we get to:
> >
> >     $ make dtbs 2>&1 >/dev/null | wc -l
> >     144
> >
> > So they make a dent, but fail to clean up the bulk of the issues. From here
> > I've mixed in some binding and driver changes with subsequent updates to the
> > devicetrees:
> >
> >   dt-bindings: pinctrl: aspeed: Add reg property as a hint
> >   dt-bindings: misc: Document reg for aspeed,p2a-ctrl nodes
> >   ARM: dts: aspeed: Add reg hints to syscon children
> >   dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
> >   ipmi: kcs: Finish configuring ASPEED KCS device before enable
> >   ipmi: kcs: aspeed: Implement v2 bindings
> >   ARM: dts: aspeed-g5: Change KCS nodes to v2 binding
> >   ARM: dts: aspeed-g5: Sort LPC child nodes by unit address
> >
> > By `dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS` the warnings are
> > reduced to:
> >
> >     $ make dtbs 2>&1 >/dev/null | wc -l
> >     125
> >
> > The bang-for-buck is in fixing up the KCS bindings which removes all-but-two of
> > the remaining warnings (which we can't feasibly remove), but doing so forces
> > code changes (which I'd avoided up until this point).
> >
> > Reflecting broadly on the fixes, I think I've made a mistake way back by using
> > syscon/simple-mfds to expose the innards of the SCU and LPC controllers in the
> > devicetree. This series cleans up what's currently there, but I have half a
> > mind to rev the SCU and LPC bindings to not use simple-mfd and instead have a
> > driver implementation that uses `platform_device_register_full()` or similar to
> > deal with the mess.
> >
> > Rob - I'm looking for your thoughts here and on the series, I've never felt
> > entirely comfortable with what I cooked up. Your advice would be appreciated.
> 
> The series generally looks fine to me from a quick scan. As far as
> dropping 'simple-mfd', having less fine grained description in DT is
> generally my preference. It comes down to whether what you have
> defined is maintainable. As most of it is just additions, I think what
> you have is fine. Maybe keep all this in mind for the next chip
> depending how the SCU and LPC change.

Okay, I think the timing of that suggestion is good given where things are with
the AST2600. I'll keep that in mind.

Consensus so far seems to be that the series is fine. I'll split it up and send out
the sub-series to the relevant lists with the acks accumulated here.

Thanks all for taking a look.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
