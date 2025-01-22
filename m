Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28299A192C4
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Jan 2025 14:40:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1taayD-0000Hi-Ag;
	Wed, 22 Jan 2025 13:40:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1taayA-0000HZ-9j
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 13:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iVzK2Qm/HT/xBg28g3YFlndduqy2evTa758qmwYdipc=; b=eXxQ7VSTSbaBRriWg8pdwRBdu+
 00IUeoWBLd5WsAjjD2LCB793WqNoPktYk9WASUhA4Bk6Ro/Q1lZgg73z+lav4rGvF3K7ZEZs5bH40
 jY1IKMd0LB+moSybx6e5M+PKw/o47Xpr1qglCdbC19UPG5kZSiZm5zCQyhRXQw4z4yO8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iVzK2Qm/HT/xBg28g3YFlndduqy2evTa758qmwYdipc=; b=OscO54yffRR/1fgQ9i+eKCdGZ3
 J6on8aVhkQMctnLAcfX0t6N1GWhIRnEzMaL48Mkd5QDFP6WqbLxBsy9V4/6GYbwkteWcs56J2FOkY
 DRws2qv+Jz6bHtrkKhkdp9Oi369Z188R51hj58cf/7wwGyuITvX78YKmNqzZmVg6z2t0=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1taay2-0004FI-OS for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 13:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=iVzK2Qm/HT/xBg28g3YFlndduqy2evTa758qmwYdipc=; b=VOeBdombTIg0IVUDd6QyPkS51Y
 1lFcg7PCK1YN+DWfPGmzi0G8PlXI/HFTpkFIQFl/2PoWJEF7ugLtWHm+QVRy0ZaT9EDnJNeZEnAFq
 3SxWxAdyTLC76dk2NTIgVpJfUhTKtI2OwrkgR2acVkwG3nB8IwZVCydmCXuvkDhIzkOM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1taax8-006xOj-85; Wed, 22 Jan 2025 14:39:30 +0100
Date: Wed, 22 Jan 2025 14:39:30 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Message-ID: <c83f0193-ce24-4a3e-87d1-f52587e13ca4@lunn.ch>
References: <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
 <81567190-a683-4542-a530-0fb419f5f9be@linux.ibm.com>
 <0ee94fd3-d099-4d82-9ba8-eb1939450cc3@lunn.ch>
 <20250122140719.5629ae57@fedora.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122140719.5629ae57@fedora.home>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > I myself got it wrong, as the kernel doc explicitely says
 that the "rgmii" > phy-mode is the one to use to get MAC-side delay insertion, 
 whereas the way I > understand it, mac-side delay insertion d [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1taay2-0004FI-OS
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
 Ninad Palsule <ninad@linux.ibm.com>,
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

> I myself got it wrong, as the kernel doc explicitely says that the "rgmii"
> phy-mode is the one to use to get MAC-side delay insertion, whereas the way I
> understand it, mac-side delay insertion doesn't really depend on the phy-mode
> passed from DT. Ideally we would even consider that these mac-side delay
> insertion would have to be ignored in basic 'RGMII' mode, but I think that would
> break quite some existing setups ?
> 
> Can we consider an update in the kernel doc along these lines :
> 
> ---
>  Documentation/networking/phy.rst | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/networking/phy.rst b/Documentation/networking/phy.rst
> index f64641417c54..7ab77f9867a0 100644
> --- a/Documentation/networking/phy.rst
> +++ b/Documentation/networking/phy.rst
> @@ -106,14 +106,17 @@ Whenever possible, use the PHY side RGMII delay for these reasons:
>    configure correctly a specified delay enables more designs with similar delay
>    requirements to be operated correctly
>  
> -For cases where the PHY is not capable of providing this delay, but the
> -Ethernet MAC driver is capable of doing so, the correct phy_interface_t value
> -should be PHY_INTERFACE_MODE_RGMII, and the Ethernet MAC driver should be
> -configured correctly in order to provide the required transmit and/or receive
> -side delay from the perspective of the PHY device. Conversely, if the Ethernet
> -MAC driver looks at the phy_interface_t value, for any other mode but
> -PHY_INTERFACE_MODE_RGMII, it should make sure that the MAC-level delays are
> -disabled.
> +The MAC driver may add delays if the PCB doesn't include any. This can be
> +detected based on firmware "rx-internal-delay-ps" and "tx-internal-delay-ps"
> +properties.
> +
> +When the MAC driver can insert the delays, it should always do so when these
> +properties are present and non-zero, regardless of the RGMII mode specified.
> +
> +However, the MAC driver must adjust the PHY_INTERFACE_MODE_RGMII_* mode it passes
> +to the connected PHY device (through phy_attach or phylink_create() for example)
> +to account for MAC-side delay insertion, so that the the PHY device knows
> +if any delays still needs insertion on either TX or RX paths.

You dropped:

   For cases where the PHY is not capable of providing this delay...

This is something i would like to keep, to strengthen that we really
do want the PHY to add the delays. Many MACs are capable of adding
delays, but we don't want them to, the PHY should do it, so we have
consistency.

The language i've tried to use is that "rx-internal-delay-ps" and
"tx-internal-delay-ps" can be used to fine tune the delays, so i'm
expecting their values to be small, because the PHY is adding the 2ns,
and the MAC is just adding/removing 0-200ps etc. I've also used the
same terminology for PHY drivers, the PHY DT properties for delays are
used for fine tuning, but the basic 2ns on/off comes from the phy-mode
passed to phylib.

If it is just fine tuning, and not adding the full 2ns, it should just
pass phy-mode straight through.

So your text becomes something like:

  The MAC driver may fine tune the delays. This can be configured
  based on firmware "rx-internal-delay-ps" and "tx-internal-delay-ps"
  properties. These values are expected to be small, not the full 2ns
  delay.

  A MAC driver inserting these fine tuning delays should always do so
  when these properties are present and non-zero, regardless of the
  RGMII mode specified.

Then we can address when the MAC adds the full 2ns.

  For cases where the PHY is not capable of providing the 2ns delay,
  the MAC must provide it, if the phy-mode indicates the PCB is not
  providing the delays. The MAC driver must adjust the
  PHY_INTERFACE_MODE_RGMII_* mode it passes to the connected PHY
  device (through phy_attach or phylink_create() for example) to
  account for MAC-side delay insertion, so that the the PHY device
  does not add additional delays.

I also think we need something near the beginning like:

  The device tree property phy-mode describes the hardware. When used
  with RGMII, its value indicates if the hardware, i.e. the PCB,
  provides the 2ns delay required for RGMII. A phy-mode of 'rgmii'
  indicates the PCB is adding the 2ns delay. For other values, the
  MAC/PHY pair must insert the needed 2ns delay, with the strong
  preference the PHY adds the delay.

	Andrew



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
