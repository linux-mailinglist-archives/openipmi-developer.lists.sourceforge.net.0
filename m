Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A461A092E5
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Jan 2025 15:05:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tWFdH-0006B1-Ns;
	Fri, 10 Jan 2025 14:05:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1tWFdF-0006AK-UL
 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 14:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7HjnwD9AZ9bpagwc/lNQ4PWx4QhMbmgXIuOqNi1NcM4=; b=I14Pjw9l+BBn8gcCd6Mcb7O4oC
 v6HPLt6MIs1yGdJXQ5fESy8qxL0sjVowhGWmwnJA3LDy+am+ICsrB6UQzVFdRXPAPAAU4Or8qZCAS
 BNTKLEDzgXMCsSvf9kdFTXNqXDCskIbF/4OZlLL4qUBYPqmCHJq3dwbXocM1EgESBAVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7HjnwD9AZ9bpagwc/lNQ4PWx4QhMbmgXIuOqNi1NcM4=; b=agRaO3t2jNZY2uD/GYlch49587
 0kq6LSizvUamCehMWv6FaHIKoYG+SGt1fGPAqEznYMXlE0jjGEKIO5MLnpwi2ow8Be1xPb507s7Ft
 XmluXg85H3TMAn1OYaGLN38l2zB4/02QU4sVJNa6ig7et2WegfBzUdY6k5wliqADFpfU=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tWFdD-0006RD-H3 for openipmi-developer@lists.sourceforge.net;
 Fri, 10 Jan 2025 14:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=7HjnwD9AZ9bpagwc/lNQ4PWx4QhMbmgXIuOqNi1NcM4=; b=zMvidE4VIvrovRs9QONvhitB+e
 kR5gnG6ymO+glm9en1J1Nlb08FgSGdcAS+0mGVXiKMTo+P9EkwKryA4kVyfERm1Ro9LhQYslrd09E
 sm6f5XyNdv5meaPSUYbpk7Qr0SMHYYNNELxgiDRGuNUJX1sksmTlMQI8AiClUojT3jeQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tWFcM-003FJ8-1r; Fri, 10 Jan 2025 15:04:06 +0100
Date: Fri, 10 Jan 2025 15:04:06 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Message-ID: <9fbc6f4c-7263-4783-8d41-ac2abe27ba95@lunn.ch>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <b2aec97b-63bc-44ed-9f6b-5052896bf350@linux.ibm.com>
 <59116067-0caa-4666-b8dc-9b3125a37e6f@lunn.ch>
 <SEYPR06MB51344BA59830265A083469489D132@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <8042c67c-04d3-41c0-9e88-8ce99839f70b@lunn.ch>
 <c0b653ea-3fe0-4bdb-9681-bf4e3ef1364a@linux.ibm.com>
 <c05c0476-c8bd-42f4-81da-7fe96e8e503b@lunn.ch>
 <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SEYPR06MB5134A63DBE28AA1305967A0C9D1C2@SEYPR06MB5134.apcprd06.prod.outlook.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > Agree. You are right. This part is used to create a gated
 clock. > We will configure these RGMII delay in bootloader like U-boot. >
 Therefore, here does not configure delay again. > Because AST2600 MAC1/2
 RGMII delay setting in scu region is combined to one 32-bit register, > MAC3/4
 is also. I will also use 'aliase' to get MAC index to set delay in scu. >
 > // aspeed-g6.dtsi > [...] 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tWFdD-0006RD-H3
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

> Agree. You are right. This part is used to create a gated clock.
> We will configure these RGMII delay in bootloader like U-boot.
> Therefore, here does not configure delay again.

> Because AST2600 MAC1/2 RGMII delay setting in scu region is combined to one 32-bit register, 
> MAC3/4 is also. I will also use 'aliase' to get MAC index to set delay in scu.
> 
> // aspeed-g6.dtsi
> aliases {
> 		..........
> 		mac0 = &mac0;
> 		mac1 = &mac1;
> 		mac2 = &mac2;
> 		mac4 = &mac3;
> 	};

I would avoid that, because they are under control of the DT
developer. You sometimes seen the order changed in the hope of
changing the interface names, rather than use a udev script, or
systemd naming scheme.

The physical address of each interface is well known and fixed? Are
they the same for all ASTxxxx devices? I would hard code them into the
driver to identify the instance.

But first we need to fix what is broken with the existing DT phy-modes
etc.

What is the reset default of these SCU registers? 0? So we can tell if
the bootloader has modified it and inserted a delay?

What i think you need to do is during probe of the MAC driver, compare
phy-mode and how the delays are configured in hardware. If the delays
in hardware are 0, assume phy-mode is correct and use it. If the
delays are not 0, compare them with phy-mode. If the delays and
phy-mode agree, use them. If they disagree, assume phy-mode is wrong,
issue a dev_warn() that the DT blob is out of date, and modify
phy-mode to match the delays in the hardware, including a good
explanation of what is going on in the commit message to help those
with out of tree DT files. And then patch all the in tree DT files to
use the correct phy-mode.

Please double check my logic, just to make sure it is correct. If i
have it correct, it should be backwards compatible. The one feature
you loose out on is when the bootloader sets the wrong delays and you
want phy-mode to actually override it.

When AST2700 comes along, you can skip all this, get it right from the
start and not need this workaround.

	Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
