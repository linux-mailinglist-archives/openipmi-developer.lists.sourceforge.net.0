Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F23F3A124BE
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 14:30:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tY3Tu-0001a9-J1;
	Wed, 15 Jan 2025 13:30:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1tY3Ts-0001a1-My
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 13:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Jxfu41iCy3/Xl/2SlMHlq/E6+bEJVMK0dEbie6RGZA=; b=i7wBWLkKhySq04YzkeC741bgCz
 AxuaZrSSwBegPAjm2Ns4m/b/UIlgt41w0eYj4afT7Sd/EaI52WzxcD6wxoZ0iUGNP3Xpw+/2pRDmY
 YMO9S9vkKf8HfanNHGEQfmLBnNRvROE5QmSl6DXYYVCzD8rQz2qMCQKSP2d9vPbxC+Sk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Jxfu41iCy3/Xl/2SlMHlq/E6+bEJVMK0dEbie6RGZA=; b=DTiV5iinRAndYPjo+nQXK2ioxA
 9RBouGtItFTau7mFynq+yMdq6fQmKPyZpb9w+Q1hHQ3rqtMQLVBUi00IiQKSwn33pFBKvzxPH+MPE
 tf1BqaqqKY15etnGjrUrMnwdcoeJkR4xVlMYRhf1XbEijUKpgNp3Nzap/J4ToCgPuNqQ=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tY3Tr-0008AE-0G for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 13:30:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=7Jxfu41iCy3/Xl/2SlMHlq/E6+bEJVMK0dEbie6RGZA=; b=Ij3Sj/Txb2dxOJgo3P6GgArB+/
 dEwiCa+37ZNiUwU0vMWkSRkhXvTogV3InoFtWWh2wqagd9Zjs5v4p5SaaJBMjx4HbDjyeWCYxm17j
 gkhD2tSn1E2sWqOKsblQoPD7u3iP/onq5igWETBEd8eJ9Cp0Wr9GQFrhWHjEi4xkdokI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tY3TA-004nPe-5A; Wed, 15 Jan 2025 14:30:04 +0100
Date: Wed, 15 Jan 2025 14:30:04 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Message-ID: <f28736b5-f4e4-488e-8c9b-55afc7316c5e@lunn.ch>
References: <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <d80f5916-4918-4849-bf4e-2ef608ece09d@linux.ibm.com>
 <SEYPR06MB51340579A53502150F67ADEC9D1F2@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <bcebe5ed-6080-4642-b6a5-5007d97fac71@linux.ibm.com>
 <26dec4b7-0c6d-4e8e-9df6-d644191e767f@lunn.ch>
 <SEYPR06MB5134DD6F514225EA8607DC979D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <e5178acd-0b6f-4580-9892-0cca48b6898a@lunn.ch>
 <SEYPR06MB513402FD4735C602C5531F499D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SEYPR06MB513402FD4735C602C5531F499D192@SEYPR06MB5134.apcprd06.prod.outlook.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > > I already explain how this works once. Please read this
 thread again.... The > > MAC can apply the delays,
 but it must mask the phy-mode
 it passes to the PHY. > > Yes. I have read these mails. > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tY3Tr-0008AE-0G
Subject: Re: [Openipmi-developer] 
 =?utf-8?b?5Zue6KaGOiDlm57opoY6IOWbnuimhjog?=
 =?utf-8?b?5Zue6KaGOiDlm57opoY6IFtQQVRDSCB2MiAwNS8xMF0gQVJNOiBkdHM6IGFz?=
 =?utf-8?q?peed=3A_system1=3A_Add_RGMII_support?=
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

> > I already explain how this works once. Please read this thread again.... The
> > MAC can apply the delays, but it must mask the phy-mode it passes to the PHY.
> 
> Yes. I have read these mails.
> 
> I understand what you mean.
> "rgmii": delay on PCB, not MAC or PHY.
> "rgmii-id": delay on MAC or PHY, not PCB.
> 
> ftgmac100 driver gets phy driver handle from of_phy_get_and_connect(), it will pass the phy-mode to
> phy driver from the node of mac dts.
> Therefore, I use "rgmii-id" and the phy will enable tx/rx internal delay.
> If I use "rgmii-id" and configure the RGMII delay in ftgmac100 driver, I cannot pass the phy-mode to 
> phy driver.

Quoting myself, yet again:

> > MAC can apply the delays, but it must mask the phy-mode it passes to the PHY.

If you decide the MAC does the RX clock delay, it needs to mask that
from the phy-mode, otherwise the PHY will also do it. If you decide
the MAC does the TX clock delay, its needs to mask that from the
phy-mode.

	Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
