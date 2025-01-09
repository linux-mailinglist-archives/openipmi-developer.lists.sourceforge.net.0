Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D3CA079CD
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Jan 2025 15:54:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVtvc-00016a-Kn;
	Thu, 09 Jan 2025 14:54:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1tVtvb-00016T-7z
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 14:54:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XS2zHmL8eJvwlmo1sEnhOq6r1rAGjvGYbp8ZEUGFl1Q=; b=W5aP5Alze+25VzI7/fydBpt5+s
 xNRfigtf/hVxC/RuRF43RRxrIw2C83r5twKGabWGtJLZFKVQ5LOLlGVkr+vVQYqLu817e3VXu3sFv
 FJ+P8T2KvJD0kYbO/zVXdu8KczJLuHqjlHn+UqPNZTZBVGsy+/hT1rtwtgPf/YdBJYVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XS2zHmL8eJvwlmo1sEnhOq6r1rAGjvGYbp8ZEUGFl1Q=; b=hq27puVzE/TQ9XIDFjFcs2C/q/
 V871ZPJ0OOtY06lJ6dMsvrWqhEmD5LtBGZW3M8s+7zePLow/77eNZGPY2gbDo0dclGujvTS1OAjVh
 GG2/z/VimfjpyxAmEqLeL/AhfHnOWrnXoX8TJhiJseQBf+X21KeXqczmzC7bkc4Xpk5A=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVtva-0001KU-Dr for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jan 2025 14:54:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=XS2zHmL8eJvwlmo1sEnhOq6r1rAGjvGYbp8ZEUGFl1Q=; b=e5HM2Lc7Oc/aGxpK7LuQgCbm00
 xw1HYHPDQtPmf7zSBPtz8vsJNAAMNfQQ2FuneHutnkBVy2KVQ1n5a4kMYJuQUBEgP+7S2ZbiK6OMw
 aaSH+H26CrsWNk4ic2+hnuMT9zDDAai41SWYjVi8Ia+UDfujLoXB0n/Kfdvx9zRwKk4g=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tVtvB-002vFx-GY; Thu, 09 Jan 2025 15:54:05 +0100
Date: Thu, 9 Jan 2025 15:54:05 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 09, 2025 at 08:25:28AM -0600,
 Ninad Palsule wrote:
 > Hello Andrew, > > On 1/9/25 07:21, Andrew Lunn wrote: > > On Thu, Jan 09,
 2025 at 10:33:20AM +0000, Jacky Chou wrote: > > > Hi Andrew, [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in sa-accredit.habeas.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tVtva-0001KU-Dr
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiBbUEFUQ0ggdjIgMDUvMTBd?=
 =?utf-8?q?_ARM=3A_dts=3A_aspeed=3A_system1=3A_Add_RGMII_support?=
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Chou <jacky_chou@aspeedtech.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "ratbert@faraday-tech.com" <ratbert@faraday-tech.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jan 09, 2025 at 08:25:28AM -0600, Ninad Palsule wrote:
> Hello Andrew,
> 
> On 1/9/25 07:21, Andrew Lunn wrote:
> > On Thu, Jan 09, 2025 at 10:33:20AM +0000, Jacky Chou wrote:
> > > Hi Andrew,
> > > 
> > > > > There are around 11 boards in Aspeed SOC with phy-mode set to "rgmii"
> > > > > (some of them are mac0&1 and others are mac2&3). "rgmii-rxid" is only
> > > > mine.
> > > > > No one in aspeed SOC using "rgmii-id".
> > > > O.K, so we have to be careful how we fix this. But the fact they are all equally
> > > > broken might help here.
> > > > 
> > > > > > Humm, interesting. Looking at ftgmac100.c, i don't see where you
> > > > > > configure the RGMII delays in the MAC?
> > > > This is going to be important. How are delays configured if they are not in the
> > > > MAC driver?
> > > The RGMII delay is adjusted on clk-ast2600 driver. Please refer to the following link.
> > > https://github.com/AspeedTech-BMC/linux/blob/f52a0cf7c475dc576482db46759e2d854c1f36e4/drivers/clk/clk-ast2600.c#L1008
> > O.K. So in your vendor tree, you have additional DT properties
> > mac1-clk-delay, mac2-clk-delay, mac3-clk-delay. Which is fine, you can
> > do whatever you want in your vendor tree, it is all open source.
> > 
> > But for mainline, this will not be accepted. We have standard
> > properties defined for configuring MAC delays in picoseconds:
> > 
> >          rx-internal-delay-ps:
> >            description:
> >              RGMII Receive Clock Delay defined in pico seconds. This is used for
> >              controllers that have configurable RX internal delays. If this
> >              property is present then the MAC applies the RX delay.
> >          tx-internal-delay-ps:
> >            description:
> >              RGMII Transmit Clock Delay defined in pico seconds. This is used for
> >              controllers that have configurable TX internal delays. If this
> >              property is present then the MAC applies the TX delay.
> > 
> > 
> > You need to use these, and in the MAC driver, not a clock driver. That
> > is also part of the issue. Your MAC driver looks correct, it just
> > silently passes phy-mode to the PHY just like every other MAC
> > driver. But you have some code hidden away in the clock controller
> > which adds the delays. If this was in the MAC driver, where it should
> > be, this broken behaviour would of been found earlier.
> > 
> > So, looking at mainline, i see where you create a gated clock. But
> > what i do not see is where you set the delays.
> > 
> > How does this work in mainline? Is there more hidden code somewhere
> > setting the ASPEED_MAC12_CLK_DLY register?
> 
> I think the code already exist in the mainline:
> https://github.com/torvalds/linux/blob/master/drivers/clk/clk-ast2600.c#L595
> 
> It is configuring SCU register in the ast2600 SOC to introduce delays. The
> mac is part of the SOC.

I could be reading this wrong, but that appears to create a gated
clock.

hw = clk_hw_register_gate(dev, "mac1rclk", "mac12rclk", 0,
	       		scu_g6_base + ASPEED_MAC12_CLK_DLY, 29, 0,
			&aspeed_g6_clk_lock);

/**
 * clk_hw_register_gate - register a gate clock with the clock framework
 * @dev: device that is registering this clock
 * @name: name of this clock
 * @parent_name: name of this clock's parent
 * @flags: framework-specific flags for this clock
 * @reg: register address to control gating of this clock
 * @bit_idx: which bit in the register controls gating of this clock
 * @clk_gate_flags: gate-specific flags for this clock
 * @lock: shared register lock for this clock
 */

There is nothing here about writing a value into @reg at creation time
to give it a default value. If you look at the vendor code, it has
extra writes, but i don't see anything like that in mainline.

	Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
