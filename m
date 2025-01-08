Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FEAA063C1
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 18:53:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVaFB-00051g-Rd;
	Wed, 08 Jan 2025 17:53:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1tVaF6-00051W-Cm
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 17:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TAAO1Chf6hDYV9mEVdFl4KLhPTl2u2J4AKlDsKfF4qk=; b=R8cyl9+MqJnbRg3oiyiAM1g5rg
 ITgkwT/7bkVqThELWh04NlKDFZW4h/i0nsJD/98x/Xtemx4SYXlqeoISwmyZXC7hG4jw989Vohr2N
 TYaZEPsCU3dx3B/56kN+sSLIeatiZS3ykZghww0eDgkZYWrg6TR3cuwEtTYp3UP6u4DQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TAAO1Chf6hDYV9mEVdFl4KLhPTl2u2J4AKlDsKfF4qk=; b=VUWhdS/18tPQbbxHoPfJYY3avN
 ZpX7RkVnaPQ2U9pNq4UvqQRL8IpLo1LBiJfeMXtEsysOU0Sj9bM/dc2G2zbVh2NYDX6bafQ1izKih
 K3DazBlpJvlU43ejaxPwHzz+BbTYDRvhKe9vhDOpDxBYuObontvmYKQMQYdf4rTcfxw0=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVaF5-0004sW-NM for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 17:53:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=TAAO1Chf6hDYV9mEVdFl4KLhPTl2u2J4AKlDsKfF4qk=; b=XtQQjt1um6jDIVerxn2G5x/9Yg
 VigbPTw+BhyEl8UPKACYGGkerBa4/lPUaT3YGcbKd1+qBorH4cqWZMhxVgKqR4ZhTRpgw3i8Ktlw5
 JCZJm55al/ky1Nbj3aK19x4uKztA8k/2F/fRu2z/UXlopcvNLhwaJkYa0mH4b/1CWbno=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tVaEW-002e68-6T; Wed, 08 Jan 2025 18:52:44 +0100
Date: Wed, 8 Jan 2025 18:52:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Message-ID: <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > >Does the mac0 TX clock have an extra long clock line on
 the PCB? > > > >Does the mac1 TX and RX clocks have extra long clock lines
 on the PCB? > > > >Anything but rgmii-id is in most cases wrong, s [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1tVaF5-0004sW-NM
Subject: Re: [Openipmi-developer] [PATCH v2 05/10] ARM: dts: aspeed:
 system1: Add RGMII support
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
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "eajames@linux.ibm.com" <eajames@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ninad@linux.ibm.com" <ninad@linux.ibm.com>,
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

> >Does the mac0 TX clock have an extra long clock line on the PCB?
> >
> >Does the mac1 TX and RX clocks have extra long clock lines on the PCB?
> >
> >Anything but rgmii-id is in most cases wrong, so you need a really
> >good explanation why you need to use something else. Something that
> >shows you understand what is going on, and why what you have is
> >correct.
> 
> Here I'll add some explanation.
> 
> In our design, we hope the TX and RX RGMII delay are configured by our MAC side.
> We can control the TX/RX RGMII delay on MAC step by step, it is not a setting to delay to 2 ns.
> We are not sure the all target PHYs are support for RX internal delay.
> 
> But ast2600 MAC1/2 delay cell cannot cover range to 2 ns, MAC 3/4 can do that.
> Therefore, when using ast2600 MAC1/2, please enable the RX internal delay on the PHY side 
> to make up for the part we cannot cover.
> 
> Summarize our design and we recommend.
> AST2600 MAC1/2: rgmii-rxid
> (RGMII with internal RX delay provided by the PHY, the MAC should not add an RX delay in this 
> case)
> AST2600 MAC3/4: rgmii
> (RX and TX delays are added by the MAC when required)
> 
> rgmii and rgmii-rxid are referred from ethernet-controller.yaml file.

O.K, so you have the meaning of phy-mode wrong. phy-mode effectively
described the PCB. Does the PCB implement the 2ns delay via extra long
clock lines or not. If the PCB has long clock lines, phy-mode is
'rgmii'. If the PCB does not have long clock lines, 'rgmii-id' is
used, meaning either the MAC or the PHY needs to add the delays.

The MAC driver is the one that reads the phy-mode from the DT, and
then it decides what to do. 95% of linux MAC drivers simply pass it
direct to the PHY. If the phy-mode is 'rgmii', the PHY does nothing,
because the PCB has added the delays. If it is rgmii-id, it adds
delays in both directions. This works, because nearly very RGMII PHY
on the market does support RGMII delays.

There is however a very small number of MAC drivers which do things
differently. Renesas produced an RDK with a PHY which could not do
delays in the PHY, and so were forced to do the delays in the
MAC. Please look at how the ravb driver works. If the PCB does not add
the delays, rmgii-id, the MAC driver adds the delays. It then masks
the phy-mode it passes to of_phy_connect() back to 'rgmii', so that
the PHY does not add any delays. If the PCB did add the delays,
'rgmii', the MAC driver does not add delays, and it passed rgmii to
the PHY driver, and it also does not add delays.

So, your MAC driver is broken. It is not correctly handling the
phy-mode. First question is, how many boards are there in mainline
which have broken phy-modes. If this is the first board, we can fix
the MAC driver. If there are already boards in mainline we have to be
much more careful when fixing this, so as not to regress boards which
are already merged.

Humm, interesting. Looking at ftgmac100.c, i don't see where you
configure the RGMII delays in the MAC?

	  Andrew



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
