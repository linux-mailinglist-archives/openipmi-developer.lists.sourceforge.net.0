Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A706CA065CE
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 21:14:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVcRW-0007wS-2W;
	Wed, 08 Jan 2025 20:14:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@lunn.ch>) id 1tVcRU-0007wL-Gt
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:14:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hs8uP3N/mTdsE3JF6EEgjMUW9ubX3QrUliIYU0W1Efw=; b=NtX4CwAHpChu0J272U3lfjWr85
 UgVxa5T7rRZzZZ/Y6hiGaEuGlXpLgTvjzFyvsbkuEbPR8zUvYm2AFQcdU+68BP5NTUf+mdcuAN0XF
 sajzamuxBmvUZbJvZM3zWS6dxNq1LtYySu73byTJvd5FuQETL9r3J3ayOxDsiSeojav8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hs8uP3N/mTdsE3JF6EEgjMUW9ubX3QrUliIYU0W1Efw=; b=PPl75aVjauPK73JySClVy1jeRb
 tvvrB3lh6lxi/5Ax+3yi23twVGVyyg9pFtNloyjxxiz8odGf1f5WMk+YN11vMMOvHX6mykEE4Cf0Z
 Diw5micZlCoKCqz2V6BJzharMvsoN1AirX5Afltl7VQg9Jhy0MVn66XOV2GtsUdPFYFo=;
Received: from vps0.lunn.ch ([156.67.10.101])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVcRT-0004on-Gw for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 20:14:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=hs8uP3N/mTdsE3JF6EEgjMUW9ubX3QrUliIYU0W1Efw=; b=cokaGl5rbCCWR5PLEEXlzlK4cg
 61kIh8CGC74Kzu7whTHy6mmGZiSShEsvkL/AiJ79CgmLhcin6x2cZmY33bJNEFJBTn2rnElphfZ8A
 QoBXD8JA3+CWcAR2AKXIabgI7RguloybklWjZ7s0SMDRD9wP03I3Y1lpAgkiPSW+xw0s=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tVcR0-002fvx-Ne; Wed, 08 Jan 2025 21:13:46 +0100
Date: Wed, 8 Jan 2025 21:13:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <b80b9224-d428-4ad9-a30d-40e2d30be654@lunn.ch>
References: <20250108163640.1374680-1-ninad@linux.ibm.com>
 <20250108163640.1374680-6-ninad@linux.ibm.com>
 <1dd0165b-22ff-4354-bfcb-85027e787830@lunn.ch>
 <0aaa13de-2282-4ea3-a11b-4edefb7d6dd3@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0aaa13de-2282-4ea3-a11b-4edefb7d6dd3@linux.ibm.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 08, 2025 at 12:43:07PM -0600,
 Ninad Palsule wrote:
 > Hello Andrew, > > > On 1/8/25 11:03, Andrew Lunn wrote: > > On Wed, Jan
 08, 2025 at 10:36:33AM -0600, Ninad Palsule wrote: > > > system [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tVcRT-0004on-Gw
Subject: Re: [Openipmi-developer] [PATCH v3 05/10] ARM: dts: aspeed:
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
Cc: robh@kernel.org, conor+dt@kernel.org, ratbert@faraday-tech.com,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, linux-aspeed@lists.ozlabs.org, kuba@kernel.org,
 krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 08, 2025 at 12:43:07PM -0600, Ninad Palsule wrote:
> Hello Andrew,
> 
> 
> On 1/8/25 11:03, Andrew Lunn wrote:
> > On Wed, Jan 08, 2025 at 10:36:33AM -0600, Ninad Palsule wrote:
> > > system1 has 2 transceiver connected through the RGMII interfaces. Added
> > > device tree entry to enable RGMII support.
> > > 
> > > ASPEED AST2600 documentation recommends using 'rgmii-rxid' as a
> > > 'phy-mode' for mac0 and mac1 to enable the RX interface delay from the
> > > PHY chip.
> > You appear to if ignored my comment. Please don't do that. If you have
> > no idea about RGMII delays, please say so, so i can help you debug
> > what is wrong.
> > 
> > NACK
> 
> I think there is a misunderstanding. I did not ignore your comment. I have
> contacted ASPEED and asked them to respond. I think Jacky from Aspeed
> replied to your mail.

You did not mention in the cover letter, or the patch. I asked for a
detailed explanation in the commit message why it is correct, which
you did not do.

Now we have more details, it is clear Ethernet support for this board
needs to wait until we figure out how to fix the MAC driver. Please
either wait with this patchset until that is done, or drop this one
patch for the moment and submit it later once the MAC driver is fixed.

      Andrew



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
