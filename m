Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0677A065E9
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 21:17:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVcUs-0000IN-D0;
	Wed, 08 Jan 2025 20:17:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1tVcUr-0000I7-1G
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b+Hjf7gL0CKGudF4dN19V3/6KMwWFZmCJ+Cv2U2rfsQ=; b=fqeGCYQT+xXjk/B+SQ8bup6Kzd
 ZkWT8ih0A2evtrE7SUHiXrL2dnzQd+Rf8M3a9VEGFlqEoFgZJuqMtxoicclU3RnGZBUP/iNEF3IZ9
 U5BwdlIo0jnPBxvvXD/IQgfMmybLZjGPMLSaee4Bnw+ol8xpPFz/TuPZEdEYbeK/a8EQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b+Hjf7gL0CKGudF4dN19V3/6KMwWFZmCJ+Cv2U2rfsQ=; b=jPxunXbsDe3iFgx0bLk11PtH2t
 HKPZSAfnzK37pXZ88l++b79siEW+3frj51+NC8WUVWnfpNqBJCcUidoCqi+YRLyRmRBbZm0NqdkHo
 KHP/3BcIamOCtBcXWvoH9UDwQ/GGP19ZZdonrXySS1oRCnumukHXiWMaHcqSt13dEqqY=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVcUq-00054C-E6 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=b+Hjf7gL0CKGudF4dN19V3/6KMwWFZmCJ+Cv2U2rfsQ=; b=yHWYY4bSalT2gL8z3UpH+ZLEi/
 wai17khUMCEbltTA0kvnb6fXjBq5v+YSRMg3YfdC7cEKYCdzJmBUPQykCFJpd8z5RWjq2Aaafejzj
 yjoezsV6OMjJpgvGAYR7f7eLqXjF1Sw9KJQS0mizDmRURjHYiKh0ClvjbCq2KSaa/i3k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tVcUR-002g0l-Eh; Wed, 08 Jan 2025 21:17:19 +0100
Date: Wed, 8 Jan 2025 21:17:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <769c47ce-3183-4730-8702-ec85245e66df@lunn.ch>
References: <SEYPR06MB5134CC0EBA73420A4B394A009D122@SEYPR06MB5134.apcprd06.prod.outlook.com>
 <0c42bbd8-c09d-407b-8400-d69a82f7b248@lunn.ch>
 <bebbba7b-f86e-4dc4-8253-65d34cb84804@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bebbba7b-f86e-4dc4-8253-65d34cb84804@linux.ibm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > I checked with out hardware team and they did not add any
 extra delay on the > board. > > We have normal point to point clock without
 any delay added by line. Thanks for checking. Thus phy-mode must be
 "rgmii-id".
 We now need to fix the MAC driver so it does the correct thing when passed
 that. Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [156.67.10.101 listed in bl.score.senderscore.com]
X-Headers-End: 1tVcUq-00054C-E6
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

> I checked with out hardware team and they did not add any extra delay on the
> board.
> 
> We have normal point to point clock without any delay added by line.

Thanks for checking. Thus phy-mode must be "rgmii-id". We now need to
fix the MAC driver so it does the correct thing when passed that.

    Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
