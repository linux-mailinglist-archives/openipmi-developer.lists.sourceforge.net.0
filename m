Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D161A095EC
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 16:39:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWH6E-0007Ky-8S;
	Fri, 10 Jan 2025 15:39:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1tWH6C-0007Kh-NX
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 15:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kef15OjRvGqUB+zEmVxSQr9gAePzm85eOXIQPtstMZs=; b=bRveSNkleFLujP+LuDynAUyjA9
 Nk5un425P8venJBzsKE3ZC2OJXONKsCzkjPNLIFt+sQjEHTvf42Rk3bpOW544+14XLQOU6Jn7xgtX
 KAEUAe5NjRD2LYyrNaBuvtqIkZrghp841R4+KRChEoM7zGHrBdTG0+7eIgRjw6Uii/Mw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kef15OjRvGqUB+zEmVxSQr9gAePzm85eOXIQPtstMZs=; b=DvTWUno0WjduP9mrM1Fy88HhlM
 QzDqeucFGTL42pWi7t75wgM2THqCRaA9BnUkkWr6c7gTsYHGiJPl8M4/zAdg+Ut0EzgfzguaZhrMF
 TVddBffuhdxXWWOfkSlniIsbIxkekdDnzn5DhLr+ulbNFCq623BoPfYX3W7+amkNUORI=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWH6C-0002Vm-3U for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 15:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=kef15OjRvGqUB+zEmVxSQr9gAePzm85eOXIQPtstMZs=; b=DG
 BA6mWpmmAcZhO/CuBfQGcX7JmP6/Py9BPkLAtM4dcpF7xielUeAvTdam9teBM6d8R+TU4t3ti/rmG
 5kvDb2vcZnoJKvHEIfvTu+13nvFyh/86ESthfE7J3KBr0sdMpeAeientgN+zgEa9KW+ZcpgyxUjgf
 RM+DgRd225AUVZU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tWH5W-003H4u-HL; Fri, 10 Jan 2025 16:38:18 +0100
Date: Fri, 10 Jan 2025 16:38:18 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <0ee94fd3-d099-4d82-9ba8-eb1939450cc3@lunn.ch>
References: <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
 <81567190-a683-4542-a530-0fb419f5f9be@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81567190-a683-4542-a530-0fb419f5f9be@linux.ibm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Do we need updates on this description. It doesn't talk
 about external PCB > level delays? > >
 https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/net/ethernet-controller
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in sa-trusted.bondedsender.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tWH6C-0002Vm-3U
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiDlm57opoY6IFtQQVRDSCB2?=
 =?utf-8?q?2_05/10=5D_ARM=3A_dts=3A_aspeed=3A_system1=3A_Add_RGMII_support?=
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> Do we need updates on this description. It doesn't talk about external PCB
> level delays?
> =

> https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bi=
ndings/net/ethernet-controller.yaml#L77-L90
> =

> This is what you explained:
> =

> MAC driver reads following phy-mode from device tree. 95% of mac driver
> directly
> =A0pass it to PHY through phy_connect.
> =

> rgmii - PCB has long clock lines so delay is added by PCB
> =A0=A0=A0=A0=A0=A0=A0 On this mode PHY does nothing.
> rgmii-id - PCB doesn't add delay. Either MAC or PHY needs to add the delay
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Add delays in both directions. Some PHY ma=
y not add delay in that
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case MAC needs to add the delay mask rgmii=
-id to rgmii.
> rgmii-rxid - If there is an extra long TX clock line, but not RX clock,
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 you would use rgmii-rxid
> rgmii-txid - When there is an extra long RX clock line on the PCB, but not
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 the TX clock line, you would use rgm=
ii-txid

The documentation is not great, that has been said a few times.  What
is described here is the view from the PHY, which is not ideal.

      # RX and TX delays are added by the MAC when required
      - rgmii

From the perspective of the PHY, this means it does not need to add
delays, because the MAC has added the delays, if required, e.g. the
PCB has not added the delays.

We have the problem that DT is supposed to describe the
hardware. Saying the PHY should add the delays, but if the MAC adds
the delays it needs to mask the value passed to the PHY does not
describe the hardware, it is Linix implementation details. The DT
Maintainers don't want that in the DT binding because other OSes might
decide to implement the details differently.

So your description becomes:

rgmii      - PCB has long clock lines so delays are added by the PCB
rgmii-id   - PCB doesn't add delay. Either MAC or PHY needs to add the dela=
ys
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0   in both directions.
rgmii-rxid - There is an extra long TX clock line on the PCB, but not the R=
X clock.
rgmii-txid - There is an extra long RX clock line on the PCB, but not the T=
X clock.

It is correct, but leaves so much unsaid developers will still get it
wrong. What we really want is that developers:

1) Read the mailing list. Patches for RGMII delays are posted at least
   once an month and i point out how they are wrong. If developers
   actually read the mails, they would not make the same mistake again
   and again.

2) Developers for some reason like to invent their own code, rather
   than taking the easy route of copy from a driver already in Linux.
   The majority of drivers in Linux get this right, so if you copy
   another driver, you should get it right for free as well.

	Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
