Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45456999257
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Oct 2024 21:30:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1syyrM-0006im-BG;
	Thu, 10 Oct 2024 19:30:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <helgaas@kernel.org>) id 1syyrL-0006if-Av
 for openipmi-developer@lists.sourceforge.net;
 Thu, 10 Oct 2024 19:30:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HtifN70fKOcBGfZEl9SgZnJ9e+87A2b0+xg7zRm601U=; b=jN0J5UKqi2H3ilAE3Xb/4KeGfL
 FwbcRIJT7Ozr3RoAMZjvfC02ckZ7h6Tla3gPrQIqG5szHPnZW1yKNkLDdSYuopcZcZVSPl4kd/VDx
 qNEWOUwEcM4/Vmys3FF+QcFfl4QomiqV6UKCcZIJA7XCzY/ldv+JkHEGdYFoSTaB0gNE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HtifN70fKOcBGfZEl9SgZnJ9e+87A2b0+xg7zRm601U=; b=K
 jIt30Iy0ICzMfcCMstuFQappG0kmkF3tevr3sJ4jUpwtUZsX5gg/CyD5etNsdbQZ3mTExhHqxn9KK
 5EsPqUrzldbLLw2IK5yAis/sqRIiK5hgxEOcoElvMGhY/7RCCByTMyCLzSbWYPhmwu9rtzaASNi5o
 wHYraNAkqry3ZqyY=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1syyrK-0002ni-9d for openipmi-developer@lists.sourceforge.net;
 Thu, 10 Oct 2024 19:30:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id E23CCA44CD6;
 Thu, 10 Oct 2024 19:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 117BFC4CEC5;
 Thu, 10 Oct 2024 19:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1728588596;
 bh=3N4bxKzSTM3E1Kdx3WcG7suWB9kIbX8x8GXD+Ekm3iw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=hmouf5pnhxyKs39WdW/IYFRGG/mYgpHAmqDLDRVelBCK8S7ZOhNoWC7ZUWxWnWCtz
 AA4n7lRqY3Dv3tvOa6HHkEh5r+hXYG9MH7A9mxtA8bLVw3jQSMusPwNvHhHlEkPIRq
 dN8vDF3Strw0X/vEJr0rf7nOC8WwbUFw7Rui+hpFsop/kaGIiRPts0zKTVzr4iM8eq
 hbQhaXUkBzzr+2gBImZQvbbc4kDRiSWC2VP5s8Plwwp9esc6KUFimmijjzRRc7bedH
 Yb3BSpCQ9N8s/WDiutfYACb+kO0YhKXX1kktLAXpPYcNDaN4aeDZpSGdvN1uLbODqQ
 qB+5PADCrrG+w==
Date: Thu, 10 Oct 2024 14:29:54 -0500
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <20241010192954.GA574548@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5beda7c3-e5fa-4105-aefd-9d91fad6d967@llnl.gov>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 10, 2024 at 11:53:42AM -0700, Tony Hutter wrote:
 > > I don't quite understand what the E1000 is and where this code > > runs.
 Since you have a DMI check for DMI_PRODUCT_NAME "VSSEP1EC", > [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1syyrK-0002ni-9d
Subject: Re: [Openipmi-developer] [PATCH v2] PCI: Introduce Cray ClusterStor
 E1000 NVMe slot LED driver
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
From: Bjorn Helgaas via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Bjorn Helgaas <helgaas@kernel.org>
Cc: minyard@acm.org, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Lukas Wunner <lukas@wunner.de>, openipmi-developer@lists.sourceforge.net,
 mariusz.tkaczyk@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Oct 10, 2024 at 11:53:42AM -0700, Tony Hutter wrote:
> > I don't quite understand what the E1000 is and where this code
> > runs.  Since you have a DMI check for DMI_PRODUCT_NAME "VSSEP1EC",
> > I assume E1000 is an attached storage controller, and this driver
> > is part of an embedded OS running inside the E1000 itself, *not*
> > on the system to which the E1000 is attached?
> 
> You can think of an E1000 as a standard rack mount storage server
> with 24 NVMe slots.  They are often used as Lustre servers.  The DMI
> check makes sure the E1000 LED driver can only be loaded on E1000
> boards.  The driver is running on the main system (where Lustre
> runs) rather than a embedded storage controller. The driver does
> communicate with a embedded controller via IPMI to control the LEDs
> though.
> 
> I'm currently on baby bonding leave, but I'll try to implement your
> review comments into a version 3 patch once I get back into the
> office.

Congratulations!  Hope your family is all doing well!

Bjorn


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
